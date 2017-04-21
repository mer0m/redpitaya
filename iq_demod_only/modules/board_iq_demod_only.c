#include <linux/version.h>
#include <linux/init.h>
#include <linux/module.h>
#include <linux/platform_device.h>

#include <add_const_core/add_const_config.h>
#include <nco_counter_core/nco_counter_config.h>
#include <fir16bits_core/fir16bits_config.h>

void plat_iq_demod_only_release(struct device *dev)
{
	dev_dbg(dev, "released\n");
}

static struct resource adc1_offset_resources[] = {
	{
		.start = 0x43C10000,
		.end   = 0x43C10000 + 0xffff,
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

static struct resource dds_nco_resources[] = {
	{
		.start = 0x43C30000,
		.end   = 0x43C30000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource demod_nco_resources[] = {
	{
		.start = 0x43C60000,
		.end   = 0x43C60000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource demod_fir_resources[] = {
	{
		.start = 0x43C00000,
		.end   = 0x43C00000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct plat_add_const_port plat_adc1_offset_data = {
	.name		= "adc1_offset",
	.num		= 0,
	.idnum		= 0,
};
static struct plat_add_const_port plat_dds_ampl_data = {
	.name		= "dds_ampl",
	.num		= 1,
	.idnum		= 1,
};
static struct plat_add_const_port plat_dds_offset_data = {
	.name		= "dds_offset",
	.num		= 2,
	.idnum		= 2,
};
static struct plat_nco_counter_port plat_dds_nco_data = {
	.name		= "dds_nco",
	.num		= 0,
	.idnum		= 0,
};
static struct plat_nco_counter_port plat_demod_nco_data = {
	.name		= "demod_nco",
	.num		= 1,
	.idnum		= 1,
};
static struct plat_fir16bits_port plat_demod_fir_data = {
	.name		= "demod_fir",
	.num		= 0,
	.idnum		= 0,
};

static struct platform_device plat_adc1_offset_device = {
	.name = "add_const",
	.id	= 0,
	.dev	= {
		.release	= plat_iq_demod_only_release,
		.platform_data	= &plat_adc1_offset_data,
	},
	.num_resources		= ARRAY_SIZE(adc1_offset_resources),
	.resource		= adc1_offset_resources,
};
static struct platform_device plat_dds_ampl_device = {
	.name = "add_const",
	.id	= 1,
	.dev	= {
		.release	= plat_iq_demod_only_release,
		.platform_data	= &plat_dds_ampl_data,
	},
	.num_resources		= ARRAY_SIZE(dds_ampl_resources),
	.resource		= dds_ampl_resources,
};
static struct platform_device plat_dds_offset_device = {
	.name = "add_const",
	.id	= 2,
	.dev	= {
		.release	= plat_iq_demod_only_release,
		.platform_data	= &plat_dds_offset_data,
	},
	.num_resources		= ARRAY_SIZE(dds_offset_resources),
	.resource		= dds_offset_resources,
};
static struct platform_device plat_dds_nco_device = {
	.name = "nco_counter",
	.id	= 0,
	.dev	= {
		.release	= plat_iq_demod_only_release,
		.platform_data	= &plat_dds_nco_data,
	},
	.num_resources		= ARRAY_SIZE(dds_nco_resources),
	.resource		= dds_nco_resources,
};
static struct platform_device plat_demod_nco_device = {
	.name = "nco_counter",
	.id	= 1,
	.dev	= {
		.release	= plat_iq_demod_only_release,
		.platform_data	= &plat_demod_nco_data,
	},
	.num_resources		= ARRAY_SIZE(demod_nco_resources),
	.resource		= demod_nco_resources,
};
static struct platform_device plat_demod_fir_device = {
	.name = "fir16bits",
	.id	= 0,
	.dev	= {
		.release	= plat_iq_demod_only_release,
		.platform_data	= &plat_demod_fir_data,
	},
	.num_resources		= ARRAY_SIZE(demod_fir_resources),
	.resource		= demod_fir_resources,
};

static int __init board_iq_demod_only_init(void)
{
	int ret;
	ret = platform_device_register(&plat_adc1_offset_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_dds_ampl_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_dds_offset_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_dds_nco_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_demod_nco_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_demod_fir_device);
	if (ret < 0)
		return ret;

	return ret;
}
static void __exit board_iq_demod_only_exit(void)
{
	platform_device_unregister(&plat_adc1_offset_device);
	platform_device_unregister(&plat_dds_ampl_device);
	platform_device_unregister(&plat_dds_offset_device);
	platform_device_unregister(&plat_dds_nco_device);
	platform_device_unregister(&plat_demod_nco_device);
	platform_device_unregister(&plat_demod_fir_device);
}

module_init(board_iq_demod_only_init);
module_exit(board_iq_demod_only_exit);
MODULE_AUTHOR("toto <toto@toto.com>");
MODULE_DESCRIPTION("Board specific iq_demod_only");
MODULE_LICENSE("GPL");
