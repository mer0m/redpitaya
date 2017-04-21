#include <linux/version.h>
#include <linux/init.h>
#include <linux/module.h>
#include <linux/platform_device.h>

#include <data16_multi_to_ram_core/data16_multi_to_ram_config.h>
#include <add_const_core/add_const_config.h>
#include <nco_counter_core/nco_counter_config.h>

void plat_dds_gnuradio_release(struct device *dev)
{
	dev_dbg(dev, "released\n");
}

static struct resource data16_adc12_resources[] = {
	{
		.start = 0x43C00000,
		.end   = 0x43C00000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource adc1_offset_resources[] = {
	{
		.start = 0x43C10000,
		.end   = 0x43C10000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource adc2_offset_resources[] = {
	{
		.start = 0x43C20000,
		.end   = 0x43C20000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource dds_ampl_resources[] = {
	{
		.start = 0x43C40000,
		.end   = 0x43C40000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource dds_offset_resources[] = {
	{
		.start = 0x43C50000,
		.end   = 0x43C50000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource dds_freq_resources[] = {
	{
		.start = 0x43C30000,
		.end   = 0x43C30000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct plat_data16_multi_to_ram_port plat_data16_adc12_data = {
	.name		= "data16_adc12",
	.num		= 0,
	.idnum		= 0,
};
static struct plat_add_const_port plat_adc1_offset_data = {
	.name		= "adc1_offset",
	.num		= 0,
	.idnum		= 0,
};
static struct plat_add_const_port plat_adc2_offset_data = {
	.name		= "adc2_offset",
	.num		= 1,
	.idnum		= 1,
};
static struct plat_add_const_port plat_dds_ampl_data = {
	.name		= "dds_ampl",
	.num		= 2,
	.idnum		= 2,
};
static struct plat_add_const_port plat_dds_offset_data = {
	.name		= "dds_offset",
	.num		= 3,
	.idnum		= 3,
};
static struct plat_nco_counter_port plat_dds_freq_data = {
	.name		= "dds_freq",
	.num		= 0,
	.idnum		= 0,
};

static struct platform_device plat_data16_adc12_device = {
	.name = "data16Multi",
	.id	= 0,
	.dev	= {
		.release	= plat_dds_gnuradio_release,
		.platform_data	= &plat_data16_adc12_data,
	},
	.num_resources		= ARRAY_SIZE(data16_adc12_resources),
	.resource		= data16_adc12_resources,
};
static struct platform_device plat_adc1_offset_device = {
	.name = "add_const",
	.id	= 0,
	.dev	= {
		.release	= plat_dds_gnuradio_release,
		.platform_data	= &plat_adc1_offset_data,
	},
	.num_resources		= ARRAY_SIZE(adc1_offset_resources),
	.resource		= adc1_offset_resources,
};
static struct platform_device plat_adc2_offset_device = {
	.name = "add_const",
	.id	= 1,
	.dev	= {
		.release	= plat_dds_gnuradio_release,
		.platform_data	= &plat_adc2_offset_data,
	},
	.num_resources		= ARRAY_SIZE(adc2_offset_resources),
	.resource		= adc2_offset_resources,
};
static struct platform_device plat_dds_ampl_device = {
	.name = "add_const",
	.id	= 2,
	.dev	= {
		.release	= plat_dds_gnuradio_release,
		.platform_data	= &plat_dds_ampl_data,
	},
	.num_resources		= ARRAY_SIZE(dds_ampl_resources),
	.resource		= dds_ampl_resources,
};
static struct platform_device plat_dds_offset_device = {
	.name = "add_const",
	.id	= 3,
	.dev	= {
		.release	= plat_dds_gnuradio_release,
		.platform_data	= &plat_dds_offset_data,
	},
	.num_resources		= ARRAY_SIZE(dds_offset_resources),
	.resource		= dds_offset_resources,
};
static struct platform_device plat_dds_freq_device = {
	.name = "nco_counter",
	.id	= 0,
	.dev	= {
		.release	= plat_dds_gnuradio_release,
		.platform_data	= &plat_dds_freq_data,
	},
	.num_resources		= ARRAY_SIZE(dds_freq_resources),
	.resource		= dds_freq_resources,
};

static int __init board_dds_gnuradio_init(void)
{
	int ret;
	ret = platform_device_register(&plat_data16_adc12_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_adc1_offset_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_adc2_offset_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_dds_ampl_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_dds_offset_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_dds_freq_device);
	if (ret < 0)
		return ret;

	return ret;
}
static void __exit board_dds_gnuradio_exit(void)
{
	platform_device_unregister(&plat_data16_adc12_device);
	platform_device_unregister(&plat_adc1_offset_device);
	platform_device_unregister(&plat_adc2_offset_device);
	platform_device_unregister(&plat_dds_ampl_device);
	platform_device_unregister(&plat_dds_offset_device);
	platform_device_unregister(&plat_dds_freq_device);
}

module_init(board_dds_gnuradio_init);
module_exit(board_dds_gnuradio_exit);
MODULE_AUTHOR("toto <toto@toto.com>");
MODULE_DESCRIPTION("Board specific dds_gnuradio");
MODULE_LICENSE("GPL");
