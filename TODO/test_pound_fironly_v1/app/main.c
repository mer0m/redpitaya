#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <math.h>
#include <time.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <getopt.h>
#include <linux/types.h>
/* memory management */
#include <sys/mman.h>

#include <pthread.h>
#define MIDI_DEVICE "/dev/snd/midiC0D0"

#include <add_const_conf.h>

#include <nco_conf.h>
#include <nco_counter_core/nco_counter_config.h>
#include <sys/ioctl.h>
#define NCO_ACCUM_SIZE 32
#define MOD_FREQ 30000000
#define CLK_FREQ 125000000


#include <transfert.h>

#include <data16_multi_to_ram_core/data16_multi_to_ram_config.h>
#define ELEMENT_SIZE 4096 /*must match addr_size data16_multi_to_ram*/
#define NB_WAY 2

#include <fpga.h>

#define REG_ID 		0x00
#define REG_SETPOINT 	(0x01<<2)
#define REG_KP 		(0x02<<2)
#define REG_KI 		(0x03<<2)
#define REG_KD 		(0x04<<2)
#define REG_RST_INT 	(0x05<<2)
#define REG_SIGN 	(0x06<<2)

#include <fir16bits_conf.h>
//#define COEFF_FILENAME "/home/mynfs/share/kaiser128_40"
#define COEFF_FILENAME "myfir.dat"
//#define COEFF_FILENAME "/home/mynfs/share/fir_kaiser128_40_int16.dat"
//#define COEFF_FILENAME "/home/mynfs/share/fir_test_pound"

/*dac utils*/
//#include "/home/pyb/git/doplab/prelib/spi.h"
//#include "/home/pyb/git/doplab/prelib/dac_utils.h"
#define fdacError "/sys/bus/iio/devices/iio:device2/out_voltage0_raw"
#define fdacTemper "/sys/bus/iio/devices/iio:device3/out_voltage0_raw"

#define VMAX 2.5
#define VMIN 0.0
//#define KP 1 //KPKI temperature
//#define KI 0

uint16_t KP = 1; //pid temp
uint16_t KI = 0; //pid temp
uint16_t RESET_INT = 0; //pid pound 
uint16_t SIGN = 0; //pid pound

/*midi*/
int md; //midi device descriptor
unsigned char midibuf[3]={0x0,0x0,0x0};
pthread_t midiThread;

long add_const_offset[] = {1024, 0}; //adc1,adc2


void *waitMidiEvent(__attribute__((unused))void *arg);
double midiToPhase(unsigned char midibuf);
void clear_buf(unsigned char * midibuf);

int update_fpga_pid(const char * param_name, const uint16_t param);

int fpgaConfiguration();

double pi_test(double tempSetpoint , double tempMeas, double * Cp ,double * Ci);


uint16_t dacWord(double x);

int myDacOut(const char *filename, uint16_t dacw);

int storeDataInt32(char * filename, int32_t *rawData, int nb_elements);




int main(__attribute__ ((unused))int argc, __attribute__ ((unused))char **argv)
//int main(__attribute__ ((unused))int argc, char **argv)
{


	if (fpgaConfiguration() == EXIT_FAILURE)return EXIT_FAILURE;

	/*launch korg nanoKontrol*/
	md = open(MIDI_DEVICE, O_RDONLY);
		if (md < 0) {
			printf("error while opening midi device\n");
			return EXIT_FAILURE;
		}
	int thread_status = pthread_create(&midiThread, NULL, waitMidiEvent, NULL);
        if (thread_status < 0) {
                printf("error while creating midi thread");
                return EXIT_FAILURE;
        }


	fpga_device my_fpga_pid;
	fpga_open(&my_fpga_pid, 0x43C30000, 0x00);
	printf("read32: %d\n",fpga_read32(&my_fpga_pid, 0x00));

	printf("lecture registres (start):\n");
	printf("REG_SETPOINT: %x\n", fpga_read32(&my_fpga_pid, 0x01<<2));
	printf("REG_KP: %x\n", fpga_read32(&my_fpga_pid, 0x02<<2));
	printf("REG_KI: %x\n", fpga_read32(&my_fpga_pid, 0x03<<2));
	printf("REG_KD: %x\n", fpga_read32(&my_fpga_pid, 0x04<<2));
	printf("REG_RST_INT: %x\n", fpga_read32(&my_fpga_pid, 0x05<<2));
	printf("REG_SIGN: %x\n", fpga_read32(&my_fpga_pid, 0x06<<2));


	printf("setpoint=  0");
	fpga_send(&my_fpga_pid, REG_SETPOINT,1);
	printf("relecture REG_SETPOINT: %x\n", fpga_read32(&my_fpga_pid, REG_SETPOINT));
	printf("KP=1");
	fpga_send(&my_fpga_pid, REG_KP,1);
	//fpga_send(&my_fpga_pid, REG_KP,atoi(argv[1]));
	printf("relecture REG_KP: %x\n", fpga_read32(&my_fpga_pid, REG_KP));
	
	//sleep(20);
	printf("KI=0");
	fpga_send(&my_fpga_pid, REG_KI,0);
	//fpga_send(&my_fpga_pid, REG_KI,atoi(argv[2]));
	printf("relecture REG_KI: %x\n", fpga_read32(&my_fpga_pid, REG_KI));
	fpga_close(&my_fpga_pid);
	
	
	#if 0
	/*we may need to get raw data*/
	int32_t  rawData[ELEMENT_SIZE*NB_WAY/2]={0};
	
        int toto = openAndReadSignedInt32("/dev/data16",rawData,ELEMENT_SIZE*NB_WAY/2);
        	if (toto <0)
                {
                        printf("read error\n");
                        return EXIT_FAILURE;
                }
        int ret = storeDataInt32("adc.dat",rawData,ELEMENT_SIZE*NB_WAY/2);
                if ( ret == -2)
                {
                        perror("store error\n");
                        return EXIT_FAILURE;
                }
	#endif


	int32_t ram1[1]={0};
	int16_t ramError=0;
	int16_t ramTemper=0;
	//int32_t ram2[1]={0};
	//int16_t ramPower=0;
	int ret_ram=0;

	double commandeT=0.0;
	double Cp=0.0;
	double Ci=0.0;

	double tempSetpoint = 0.0; //x deg + 273.15
	//double tempMeas = 0.0;

/*loop*/
	/*open ram1*/
	int device = open("/dev/data1600",O_RDONLY);
	if (device < 0)
	{
		printf("error while opening /dev/data1600\n");
		return EXIT_FAILURE;
	}
//FILE * fdd = fopen("ram1.dat","w");
while (1){
}
	
	//ret_ram = openAndReadSignedInt32("/dev/data1600",ram1,1);
	ret_ram = read(device,ram1,1);
	if (ret_ram <0)
	{
		printf("ram1 read error\n");
		return EXIT_FAILURE;
	}
	
	ramError = (int16_t)(0xffff&(ram1[0]));
	ramTemper= (int16_t)(0xffff&(ram1[0]>>16));
	//printf("%d\t%d\n",ramError,ramTemper);
	//fprintf(fdd,"%d\t%d\n",ramError,ramTemper);
	

	myDacOut(fdacError, ramError);
	//myDacOut(fdacError, ramError + 32768);

	/*pidTemper*/
	//myDacOut(fdacTemper, ramTemper + 32768);  //pas de pid
	commandeT = pi_test(tempSetpoint,(double)ramTemper,&Cp,&Ci);
	myDacOut(fdacTemper, (int16_t)commandeT + 32768); //risque int16 tronqué si commande > 32768

//}
/*faire un thread aussi pour le setphasenco*/

return 0;
}


int fpgaConfiguration()
{
	/* add_const */
	if (add_constMulti_set_offset("/dev/add%02d", 2, add_const_offset) == EXIT_FAILURE)
                return EXIT_FAILURE;

	/* nco */
	if (nco_counter_send_conf("/dev/nco00", CLK_FREQ, MOD_FREQ,
                        NCO_ACCUM_SIZE, 0) == EXIT_FAILURE)
                return EXIT_FAILURE;
	if (nco_counter_send_conf("/dev/nco01", CLK_FREQ, MOD_FREQ,
                        NCO_ACCUM_SIZE, 0) == EXIT_FAILURE)
                return EXIT_FAILURE;


	/* fir */
        if (fir16bits_MultiSend_confSigned("/dev/fir%02d", 1, COEFF_FILENAME, 128) == EXIT_FAILURE)
                return EXIT_FAILURE;

	printf("configuration done\n");
        return EXIT_SUCCESS;
}


int storeDataInt32(char * filename, int32_t *rawData, int nb_elements)
{
        int16_t adc1,adc2;
        int i = 0;

        FILE * fd = fopen (filename,"w");
        if ( fd == NULL){
                perror("erreur d'ouverture de fichier\n");
                return -2;
        }

        for ( i = 0 ; i < nb_elements ; i +=NB_WAY/2)
        {
                adc1 = (int16_t)(0xffff&(rawData[i]));
                adc2 = (int16_t)(0xffff&(rawData[i]>>16));
                fprintf(fd,"%d %d \n",adc1,adc2);
        }

return EXIT_SUCCESS;
}



uint16_t dacWord(double x)
{
        double vq=2.5/(pow(2,16)-1);
        if ( x > 2.5 ) x = 2.5;
        if ( x < 0 ) x = 0;
        return (uint16_t)(x / vq);
}


int myDacOut(const char *filename, uint16_t dacw)
{
	FILE *fd;
	int ret;
	uint16_t dacword = dacWord((double)dacw);

	if ((fd = fopen(filename, "w")) == NULL)
        {
                printf("erreur d'ouverture de %s\n", filename);
                return EXIT_FAILURE;
        }
        ret = fprintf(fd,"%d",dacword);
        if (ret < 0)
        {
                printf("write dac error: %d\n",ret);
                return EXIT_FAILURE;
        }
        fseek(fd,SEEK_SET,0);
        fclose(fd);
        return EXIT_SUCCESS;	

}

double midiToPhase(unsigned char midibuf)
{
        return (double)midibuf*360.0/127.0;
}

void clear_buf(unsigned char * midibuf)
{
        int i ;
        for (i=0 ; i<3 ; i++) {
                midibuf[i]=0;
        }
}


void *waitMidiEvent(__attribute__((unused))void *arg)
{
/*caution md is global*/
        //int i;
	double phidds=0.0; //useful for debug
	uint16_t phidds_int=0;
	int nco;

        while (1) {
                if (read(md,&midibuf,sizeof(midibuf))!=3){}
		
		
                //printf("\nreceived buf=");
                //for (i=0 ; i<3;i++) {
                //        printf("%x AAA\t",midibuf[i]);
                //}
		
                if (midibuf[1] == 0xe ) {
                        phidds=midiToPhase(midibuf[2]);
                        printf("\n(uint16_t)midibuf[2]=%d",(uint16_t)midibuf[2]);
                        printf("DDS phase (%lf)\n",phidds);
			//phidds_int = (uint16_t)(1024/127)*(uint16_t)midibuf[2];
			phidds_int = 8*(uint16_t)midibuf[2];
			nco = open("/dev/nco00", O_RDWR);
				if (nco < 0) {
					printf("error while opening NCO\n");
					pthread_exit(NULL);
					//return EXIT_FAILURE;
				}
			ioctl(nco, NCO_COUNTER_SET(REG_POFF), &phidds_int);		
			
                }
                if (midibuf[1] == 0xf ) {
                        printf("\n(uint16_t)midibuf[2]=%d",(uint16_t)midibuf[2]);
                        printf("KP pound\n");
			update_fpga_pid("REG_KP",(uint16_t)midibuf[2]);
                }
                if (midibuf[1] == 0x10 ) {
                        printf("\n(uint16_t)midibuf[2]=%d",(uint16_t)midibuf[2]);
                        printf("KI pound\n");
			update_fpga_pid("REG_KI",(uint16_t)midibuf[2]);
                }
                if (midibuf[1] == 0x11 ) {
			KP = (uint16_t)midibuf[2];
                        printf("\n(uint16_t)midibuf[2]=%d",KP);
                        printf("KP temp\n");
                }
                if (midibuf[1] == 0x12 ) {
			KI = (uint16_t)midibuf[2];
                        printf("\n(uint16_t)midibuf[2]=%d",KI);
                        printf("KI temp\n");
                }
		if (midibuf[1] == 0x18 ) {
                        if (midibuf[2]==0){
                                printf("\n(uint16_t)midibuf[2]=%d",(uint16_t)midibuf[2]);
				SIGN = SIGN^1;
                                printf("SIGN %d\n",SIGN);
				update_fpga_pid("REG_SIGN",SIGN);
                        }
                }
                if (midibuf[1] == 0x19 ) {
                        if (midibuf[2]==0){
                                printf("\n(uint16_t)midibuf[2]=%d",(uint16_t)midibuf[2]);
                                printf("RESET INT\n");
				update_fpga_pid("REG_RST_INT",1);
				update_fpga_pid("REG_RST_INT",0);
                        }
                }
                clear_buf(midibuf); //comme ça on bloque pas un update continuellement 
        }
}


int update_fpga_pid(const char * param_name, const uint16_t param)
{

	fpga_device my_fpga_pid;
	fpga_open(&my_fpga_pid, 0x43C30000, 0x00);
	unsigned int sign;
	
		if (strcmp(param_name,"REG_KP") == 0  ) {
			fpga_send(&my_fpga_pid, REG_KP, param);
			printf("REG_KP: %x\n", fpga_read32(&my_fpga_pid, REG_KP));
		}
		else if (strcmp(param_name,"REG_KI") == 0  ) {
			fpga_send(&my_fpga_pid, REG_KI, param);
			printf("REG_KI: %x\n", fpga_read32(&my_fpga_pid, REG_KI));
		}
		else if (strcmp(param_name,"REG_RST_INT") == 0  ) {
			fpga_send(&my_fpga_pid, REG_RST_INT, param);
			printf("REG_RST_INT: %x\n", fpga_read32(&my_fpga_pid, REG_RST_INT));
		}
		else if (strcmp(param_name,"REG_SIGN") == 0  ) {
			sign = fpga_read32(&my_fpga_pid, REG_SIGN);
				if (sign == 0) {
					fpga_send(&my_fpga_pid, REG_SIGN, 1);
				}
				else fpga_send(&my_fpga_pid, REG_SIGN, 0);
			printf("REG_SIGN: %x\n", fpga_read32(&my_fpga_pid, REG_SIGN));
		}
		else {
			printf("wrong fpga_pid parameter\n");
			return EXIT_FAILURE;
		}
		

	fpga_close(&my_fpga_pid);
	return EXIT_SUCCESS;

}

double pi_test(double tempSetpoint , double tempMeas, double * Cp ,double * Ci)
{
        //nb (pi'D') pour se souvenir erreur passée, passer errorTab en pointeur)
        double error;
        double p_k = *Cp; //affectation idiote
        double i_k = *Ci;
        double v_k;
        double u_k;

        //error (should be (tx-ty)/slope)
        //error = tempMeas - tempSetpoint; //negative sign
        error = tempSetpoint - tempMeas; //positive sign

        //s=%lf \n",tempMeas);proportional p_k;
        p_k = KP * error;
        *Cp=p_k;
        //printf("p_k=%lf\tCp=%lf\t",p_k,*Cp);

        //integral term i_k;
        i_k +=  KI * error; //should be KI*error*ts (ts=sampling rate)

        *Ci=i_k;
        //printf("Ci=%lf\n",*Ci);
        //if (reset_int == 1) i_k=0.0;

        //commande
        v_k = p_k + i_k;

        //bornes
        if (v_k < VMIN) u_k = VMIN ;
        else if (v_k > VMAX) u_k =VMAX ;
        else u_k = v_k;

        //desaturation
        i_k +=  u_k - v_k;

        return u_k;
}

