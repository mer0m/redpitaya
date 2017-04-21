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


/*liboscimp*/
#include <transfert.h>

/*accès ram*/
#include <data16_multi_to_ram_core/data16_multi_to_ram_config.h>
#define ACQUIS_SIZE 4096 /*must match addr_size data16_multi_to_ram*/
#define NB_WAY 2


#include <add_const_conf.h>

long add_const_offset[] = {120, 63, 0, 0 ,0};

int fpgaConfiguration();


int main(__attribute__ ((unused))int argc, __attribute__ ((unused))char **argv)
{


int dataTrans = open("/dev/data16", O_RDWR);
        if (dataTrans < 0) {
                printf("erreur d'ouverture de /dev/data16\n");
                return 0;
        }

        printf("fin acquisition : transfert!\n");
        int ii;
        FILE *fw1;
        int32_t  *content = (int32_t *)malloc(ACQUIS_SIZE * sizeof(int32_t));
        char filename[62];
        fw1 = fopen("data.dat", "w+");
        if (fw1==NULL) {
                printf("erreur d'ouverture de %s\n", filename);
                return EXIT_FAILURE;
}
	short vali, valq;
	read(dataTrans, content, ACQUIS_SIZE * sizeof(int32_t));
	for (ii = 0; ii < ACQUIS_SIZE; ii++) {
                vali = content[ii] >> 16;
                valq = content[ii] & 0xffff;
                fprintf(fw1, "%d %d\n", vali, valq);
        }
        fflush(fw1);
	fclose(fw1);
	free(content);
	close(dataTrans);

}




int fpgaConfiguration()
{
        /* add_const */
        if (add_constMulti_set_offset("/dev/add%02d", 5, add_const_offset) == EXIT_FAILURE)
                return EXIT_FAILURE;


        return EXIT_SUCCESS;
}

