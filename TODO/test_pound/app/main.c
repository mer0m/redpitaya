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
#define NCO_ACCUM_SIZE 28
#define MOD_FREQ 30000000
//#define MOD_FREQ 21400000
#define CLK_FREQ 125000000

#define RESOL_GAIN_TEMP_BIAS 10 //adj static dactemp
#define RESOL_GAIN_TEMP 1 //adj resol PI temp
//#define KP_DIV 10000 //temp gain div
//#define KI_DIV 10000
#define KP_DIV 100000 //temp gain div
#define KI_DIV 1000000
#define RESOL_GAIN_PDH 1//512//non signé=512//2^16/128==MAX!! //adj resol PI pound
#define RESOL_IGAIN_PDH 1//100

#define SINE_SIZE 2048



#include <transfert.h>

#include <data16_multi_to_ram_core/data16_multi_to_ram_config.h>
#include <data32Real_multi_to_ram_core/data32Real_multi_to_ram_config.h>
#define ELEMENT_SIZE 1//4096 /*must match addr_size data16_multi_to_ram*/
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
//#define COEFF_FILENAME "/home/mynfs/share/fir_kaiser128_40_int16.dat"
#define COEFF_FILENAME "/home/mynfs/share/myfir.dat"
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
uint16_t KP_cur = 0;
uint16_t KI_cur = 0;
uint16_t SIGN_TEMP = 0; //pid temper
uint16_t RESET_INT_TEMP = 0; //pid temper
uint16_t BIAS_TEMP = 32768;

/*midi*/
int md; //midi device descriptor
unsigned char midibuf[3]={0x0,0x0,0x0};
pthread_t midiThread;

////long add_const_offset[] = {0, 0, -580}; //adc1,adc2,out_fir_demod
//long add_const_offset[] = {0, 0, -500}; //adc1,adc2,out_fir_demod
//long add_const_offset[] = {0, 0, 0, -50 ,-88}; //adc1,adc2,out_fir_demod,dac1,dac2
//long add_const_offset[] = {120, 63, 0, -174 ,-147}; //adc1,adc2,out_fir_demod,dac1,dac2
long add_const_offset[] = {120, 63, 0, -174 ,-147,0,100,500}; //adc1,adc2,out_fir_demod,dac1,dac2


void *waitMidiEvent(__attribute__((unused))void *arg);
double midiToPhase(unsigned char midibuf);
void clear_buf(unsigned char * midibuf);

int update_fpga_pid(const char * param_name, const uint16_t param);

int fpgaConfiguration();

double pi_test(double tempSetpoint , double tempMeas, double * Cp ,double * Ci);


uint16_t dacWord(double x);

int myDacOut(const char *filename, int32_t dacw);
int32_t dacCommand;
int myTunableBiasDacTemp(const char *filename, uint16_t dacw, uint16_t bias);

int storeDataInt32(char * filename, int32_t *rawData, int nb_elements);

void showStatus(void);


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
			
#if 1


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
	fpga_send(&my_fpga_pid, REG_SETPOINT,0);
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
#endif	
	
	#if 0
	/*we may need to get raw data*/
	int32_t  rawData[ELEMENT_SIZE*NB_WAY/2]={0};
	
        int toto ;

while(1){
	//toto = openAndReadSignedInt32("/dev/data1600",rawData,ELEMENT_SIZE*NB_WAY/2);
	toto = openAndReadSignedInt32("/dev/data1600",rawData, 2);
        	if (toto <0)
                {
                        printf("read error\n");
                        return EXIT_FAILURE;
                }
	printf("%d\t%d\t",(int16_t)(0xffff&(rawData[0])),(int16_t)(0xffff&(rawData[0]>>16)));
        int ret = storeDataInt32("ram1.dat",rawData,ELEMENT_SIZE*NB_WAY/2);
                if ( ret == -2)
                {
                        perror("store error\n");
                        return EXIT_FAILURE;
                }
	toto = openAndReadSignedInt32("/dev/data1601",rawData,2);
        	if (toto <0)
                {
                        printf("read error\n");
                        return EXIT_FAILURE;
                }
	printf("%d\t%d\n",(int16_t)(0xffff&(rawData[0])),(int16_t)(0xffff&(rawData[0]>>16)));
        ret = storeDataInt32("ram2.dat",rawData,ELEMENT_SIZE*NB_WAY/2);
                if ( ret == -2)
                {
                        perror("store error\n");
                        return EXIT_FAILURE;
                }
usleep(100000);
}
	#endif


	int32_t ram1[2]={0};
	int16_t ramError=0;
	int16_t ramTemper=0;
	//int32_t ram2[1]={0};
	//int16_t ramPower=0;
	//int16_t ram2Poubelle=0;
	int ret_ram=0;

	double commandeT=0.0;
	double Cp=0.0;
	double Ci=0.0;

	double tempSetpoint = 0.0; //x deg + 273.15
	//double tempMeas = 0.0;

#if 1
/*loop*/
	/*open ram1 V1=out pid+avg (for temper) V2=avgd error signal*/
	int device = open("/dev/data3200",O_RDONLY);
	if (device < 0)
	{
		printf("error while opening /dev/data3200\n");
		return EXIT_FAILURE;
	}
	//FILE * fd_ram1 = fopen("ram1.dat","a");
#endif

	#if 0
	/*open ram2 (power) */
	int device2 = open("/dev/data1601",O_RDONLY);
        if (device2 < 0)
        {
                printf("error while opening /dev/data1601\n");
                return EXIT_FAILURE;
        }
	FILE * fd_ram2 = fopen("ram2.dat","a");
	#endif

#if 0
/*test sine on ad5446*/
int32_t sine[SINE_SIZE]={0};
FILE * fdsine = fopen("sinus2048_ad5446.dat","r");
int  i;
for (i = 0 ; i < SINE_SIZE ; i++){
	fscanf(fdsine,"%d\n",&sine[i]);
}
fclose(fdsine);
FILE * fdram = fopen("ram1.dat","w");

while (1){
//	for ( i = 0 ; i < SINE_SIZE ; i++) {
//		myDacOut(fdacTemper, sine[i]);
//	}

/*store dataram*/
   
ret_ram = read(device,ram1,sizeof(int32_t)*2);
if (ret_ram <0)
	{
	printf("ram1 read error\n");
	return EXIT_FAILURE;
	}
fprintf(fdram,"%d\t%d\n",ram1[0],ram1[1]);
fflush(fdram);
myDacOut(fdacTemper, ram1[1]+32768);


}
#endif
while (1){
	
//printf("			KP= %d\t KI=%d\n",KP,KI);
   //usleep(100000);
#if 1
   //ret_ram = openAndReadSignedInt32("/dev/data1600",ram1,1);
   ret_ram = read(device,ram1,sizeof(int32_t)*2);

   if (ret_ram <0)
   {
   	printf("ram1 read error\n");
   	return EXIT_FAILURE;
   }
   //printf("ram1[0]=%d\t ram1[1]=%d\n",ram1[0],ram1[1]);

   ramError=ram1[0];
   ramTemper=ram1[1];
   //ramTemper= (int16_t)(0xffff&(ram1[0]));
   //ramError = (int16_t)(0xffff&(ram1[0]>>16));
   //printf("%d\t%d\n",ramTemper,ramError);
   ////printf("%d\t%t\n",ramTemper,ramError);
   ////fprintf(fd_ram1,"%d\t%d\n",ramTemper,ramError);
   ////fflush(fd_ram1);
#endif

#if 0
   /*lire ram2*/
   ret_ram = read(device2,ram2,sizeof(int32_t)*2);

   if (ret_ram <0)
   {
   	printf("ram2 read error\n");
   	return EXIT_FAILURE;
   }
   

   ramPower= (int16_t)(0xffff&(ram2[0]));
   //printf("%d\n",ramPower);
   ram2Poubelle = (int16_t)(0xffff&(ram2[0]>>16));
   printf("%d\t%d\n",ramPower,ram2Poubelle);
   fprintf(fd_ram2,"%d\t%d\n",ramPower,ram2Poubelle);
   fflush(fd_ram2);

#endif
	 
   #if 0
   myDacOut(fdacError, ramError);
   //myDacOut(fdacError, ramError + 32768);
   #endif

   #if 1
   /*pidTemper*/
   //myDacOut(fdacTemper, ramTemper + 32768);  //pas de pid
	//printf("ramTemper=%d\t KP=%d\n",ramTemper,KP);
   commandeT = pi_test(tempSetpoint,(double)ramTemper,&Cp,&Ci);
   //myDacOut(fdacTemper, (int16_t)commandeT + 32768); //risque int16 tronqué si commande > 32768
	dacCommand = (int32_t)commandeT + (int32_t)BIAS_TEMP;
   myDacOut(fdacTemper, dacCommand); //risque int16 tronqué si commande > 32768
	////printf("commandeT=%lf\t BIAS_TEMP=%d\t sum=%lf\n",commandeT,BIAS_TEMP,commandeT+BIAS_TEMP);
	//printf("commandeT=%lf\t BIAS_TEMP=%d\t sum=%d\n",commandeT,BIAS_TEMP,dacCommand);
   #endif

}
/*faire un thread aussi pour le setphasenco*/

return 0;
}


int fpgaConfiguration()
{
	/* add_const */
	if (add_constMulti_set_offset("/dev/add%02d", 8, add_const_offset) == EXIT_FAILURE)
                return EXIT_FAILURE;

	/* nco */
	if (nco_counter_send_conf("/dev/nco00", CLK_FREQ, MOD_FREQ,
                        NCO_ACCUM_SIZE, 0) == EXIT_FAILURE)
                return EXIT_FAILURE;
	if (nco_counter_send_conf("/dev/nco01", CLK_FREQ, MOD_FREQ,
                        NCO_ACCUM_SIZE, 0) == EXIT_FAILURE)
                        //32, 0) == EXIT_FAILURE)
                return EXIT_FAILURE;


	/* fir */
        if (fir16bits_MultiSend_confSigned("/dev/fir%02d", 1, COEFF_FILENAME, 128) == EXIT_FAILURE)
                return EXIT_FAILURE;

        return EXIT_SUCCESS;
}


int storeDataInt32(char * filename, int32_t *rawData, int nb_elements)
{
        int16_t adc1,adc2;
        int i = 0;

        FILE * fd = fopen (filename,"a");
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
	fflush(fd);

return EXIT_SUCCESS;
}



uint16_t dacWord(double x)
{
        double vq=2.5/(pow(2,16)-1);
        if ( x > 2.5 ) x = 2.5;
        if ( x < 0 ) x = 0;
        return (uint16_t)(x / vq);
}

int myTunableBiasDacTemp(const char *filename, uint16_t dacw, uint16_t bias)
{
	FILE *fd;
	int ret;
	//uint16_t dacword = dacWord((double)dacw);
	
	if ((fd = fopen(filename, "w")) == NULL)
        {
                printf("erreur d'ouverture de %s\n", filename);
                return EXIT_FAILURE;
        }
        //ret = fprintf(fd,"%d",dacword);
	//printf("%d\n",dacword);
	//double vq=2.5/(pow(2,16)-1);
	double q = 2.5;
	int resol = RESOL_GAIN_TEMP_BIAS; //adjust gain
	//double x;
	//if ( x > 2.5 ) x = 2.5;
	//if ( x < 0 ) x = 0;
	//dacw = round((dacw*vq*2)*2^16)+bias;
	dacw = (uint16_t)(dacw*q*resol)+bias;
	BIAS_TEMP = dacw; //report BIAS
        ret = fprintf(fd,"%d",dacw);
	//printf("dac_out=%d\n",dacw);
/*if pid temp is working we reset the int*/
RESET_INT_TEMP = 1;
        if (ret < 0)
        {
                printf("write dac error: %d\n",ret);
                return EXIT_FAILURE;
        }
        fseek(fd,SEEK_SET,0);
        fclose(fd);
        return EXIT_SUCCESS;	

}

int myDacOut(const char *filename, int32_t dacw)
{
	FILE *fd;
	int ret;
	//uint16_t dacword = dacWord((double)dacw);
	int32_t cde;
	
	if ((fd = fopen(filename, "w")) == NULL)
        {
                printf("erreur d'ouverture de %s\n", filename);
                return EXIT_FAILURE;
        }
        //ret = fprintf(fd,"%d",dacword);
//	printf("dacw=%d\n",dacw);
	//cde = dacw*RESOL_GAIN_TEMP+BIAS_TEMP;
	cde = (dacw - BIAS_TEMP) * RESOL_GAIN_TEMP+BIAS_TEMP;
        ret = fprintf(fd,"%d",cde);
	if (cde > 65535) cde = 65535;
//	printf("cde dac_out=%d\n",cde);
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
	
	nco = open("/dev/nco00", O_RDWR);
	if (nco < 0) {
		printf("error while opening NCO\n");
		pthread_exit(NULL);
		//return EXIT_FAILURE;
	}

        while (1) {
                if (read(md,&midibuf,sizeof(midibuf))!=3){}
		
		
                //printf("\nreceived buf=");
                //for (i=0 ; i<3;i++) {
                //        printf("%x AAA\t",midibuf[i]);
                //}
		
                if (midibuf[1] == 0xe ) {
                        phidds=midiToPhase(midibuf[2]);
                        //printf("\n(uint16_t)midibuf[2]=%d",(uint16_t)midibuf[2]);
                        printf("DDS phase (%lf)\n",phidds);
			//phidds_int = (uint16_t)(1024/127)*(uint16_t)midibuf[2];
			phidds_int = 8*(uint16_t)midibuf[2];
			ioctl(nco, NCO_COUNTER_SET(REG_POFF), &phidds_int);		
			
                }
                if (midibuf[1] == 0xf ) {
                        //printf("\n(uint16_t)midibuf[2]=%d",(uint16_t)midibuf[2]);
			KP_cur = (uint16_t)midibuf[2];
                        //printf("KP pound %d\n",KP_cur);
			update_fpga_pid("REG_KP",KP_cur);
			showStatus();
                }
                if (midibuf[1] == 0x10 ) {
                        //printf("\n(uint16_t)midibuf[2]=%d",(uint16_t)midibuf[2]);
			KI_cur = (uint16_t)midibuf[2];
                        //printf("KI pound %d\n",KI_cur);
			update_fpga_pid("REG_KI",KI_cur);
			showStatus();
                }
                if (midibuf[1] == 0x11 ) {
			KP = (uint16_t)midibuf[2];
                        //printf("\n(uint16_t)midibuf[2]=%d",KP);
                        //printf("KP temp %d\n",KP);
			showStatus();
                }
                if (midibuf[1] == 0x12 ) {
			KI = (uint16_t)midibuf[2];
                        //printf("\n(uint16_t)midibuf[2]=%d",KI);
                        //printf("KI temp %d\n",KI);
			showStatus();
                }
		if (midibuf[1] == 0x18 ) {
                        if (midibuf[2]==0){
                                //printf("\n(uint16_t)midibuf[2]=%d",(uint16_t)midibuf[2]);
				SIGN = SIGN^1;
                                //printf("SIGN %d\n",SIGN);
				update_fpga_pid("REG_SIGN",SIGN);
				showStatus();
                        }
                }
                if (midibuf[1] == 0x19 ) {
                        if (midibuf[2]==0){
                                //printf("\n(uint16_t)midibuf[2]=%d",(uint16_t)midibuf[2]);
                                printf("RESET INT\n");
				update_fpga_pid("REG_RST_INT",1);
				update_fpga_pid("REG_RST_INT",0);
                        }
                }
		if (midibuf[1] == 0x1a ) {
                        if (midibuf[2]==0){
                                //printf("\n(uint16_t)midibuf[2]=%d",(uint16_t)midibuf[2]);
				SIGN_TEMP = SIGN_TEMP^1;
                                //printf("SIGN_TEMP %d\n",SIGN_TEMP);
				showStatus();
                        }
                }
                if (midibuf[1] == 0x1b ) {
                        if (midibuf[2]==0){
                                //printf("\n(uint16_t)midibuf[2]=%d",(uint16_t)midibuf[2]);
                                printf("RESET INT TEMP\n");
				RESET_INT_TEMP = 1;
                        }
                }
		if (midibuf[1] == 0x16 ) {
			//printf("\n(uint16_t)midibuf[2]=%d",(uint16_t)midibuf[2]);
			//myTunableBiasDacTemp(fdacTemper,(uint16_t)midibuf[2],0);
			myTunableBiasDacTemp(fdacTemper,(uint16_t)midibuf[2],32768);
				
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
			fpga_send(&my_fpga_pid, REG_KP, param*RESOL_GAIN_PDH);
			printf("REG_KP: %x\n", fpga_read32(&my_fpga_pid, REG_KP));
		}
		else if (strcmp(param_name,"REG_KI") == 0  ) {
			fpga_send(&my_fpga_pid, REG_KI, param*RESOL_IGAIN_PDH);
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
	if (SIGN_TEMP == 0) {
        	error = tempSetpoint - tempMeas; //positive sign
	}
	if (SIGN_TEMP == 1) {
	        error = tempMeas - tempSetpoint; //negative sign
	}

        //s=%lf \n",tempMeas);proportional p_k;
        p_k = ((double)KP/(double)KP_DIV) * error;
        *Cp=p_k;
        //printf("p_k=%lf\tCp=%lf\t",p_k,*Cp);
	//printf("KP*error=%lf\n",p_k);

        //integral term i_k;
	if ( RESET_INT_TEMP == 1 ) {
		i_k = 0;
		RESET_INT_TEMP = 0;
	}	
        i_k +=  ((double)KI/(double)KI_DIV) * error; //should be KI*error*ts (ts=sampling rate)

        *Ci=i_k;
        //printf("Ci=%lf\n",*Ci);
        //if (reset_int == 1) i_k=0.0;

        //commande
        v_k = p_k + i_k;

        //bornes
        if (v_k < VMIN) u_k = VMIN ;
        //else if (v_k > VMAX) u_k =VMAX ;
        else if (v_k > 65535) u_k =65535 ;
        else u_k = v_k;

        //desaturation
        i_k +=  u_k - v_k;

        //return u_k;
        return v_k;
}

void showStatus(void)
{
	#if 1
	printf("Kp(cur) : %d   Ki(cur):  %d   sign(%d)\n",KP_cur,KI_cur,SIGN); 
	printf("Kp(temp): %d   Ki(temp): %d   sign(%d)\n\n",KP,KI,SIGN_TEMP);
	#endif
}
