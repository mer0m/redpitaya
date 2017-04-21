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
#include <add_const_conf.h>

/*accès ram*/
#include <data16_multi_to_ram_core/data16_multi_to_ram_config.h>
#define ACQUIS_SIZE 4096 /*must match addr_size data16_multi_to_ram*/
#define NB_WAY 2

int fpgaConfiguration();

long add_const_offset[] = {1000, -1000};


int main(__attribute__ ((unused))int argc, __attribute__ ((unused))char **argv)
{
    fpgaConfiguration();
    int dataTrans = open("/dev/data16_adc12", O_RDWR);
    if (dataTrans < 0) {
        printf("erreur d'ouverture de /dev/data16_adc12\n");
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
	short valadc1, valadc2;
	read(dataTrans, content, ACQUIS_SIZE * sizeof(int32_t));
	for (ii = 0; ii < ACQUIS_SIZE; ii++) {
        valadc1 = content[ii] & 0xffff;
        valadc2 = content[ii] >> 16;
        fprintf(fw1, "%d %d\n", valadc1, valadc2);
        }
    fflush(fw1);
	fclose(fw1);
	free(content);
	close(dataTrans);
}


int fpgaConfiguration()
{
        /* add_const */
        if (add_constMulti_set_offset("/dev/add_const_%01d", 2, add_const_offset) == EXIT_FAILURE)
                return EXIT_FAILURE;
        return EXIT_SUCCESS;
}
