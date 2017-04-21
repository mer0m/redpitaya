#include <linux/version.h>
#include <linux/init.h>
#include <linux/module.h>
#include <linux/platform_device.h>

#include <add_const_core/add_const_config.h>
#include <nco_counter_core/nco_counter_config.h>

void plat_vco_only_release(struct device *dev)
{
	dev_dbg(dev, "released\n");
}

static struct resource adc1_offset_resources[] = {
	{
		.start = 0x43C00000,
		.end   = 0x43C00000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource dac1_offset_resources[] = {
	{
		.start = 0x43C10000,
		.end   = 0x43C10000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource dds_ampl_resources[] = {
	{
		.start = 0x43C20000,
		.end   = 0x43C20000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource dds_f0_resources[] = {
	{
		.start = 0x43C30000,
		.end   = 0x43C30000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource dds_offset_resources[] = {
	{
		.start = 0x43C40000,
		.end   = 0x43C40000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource dds_range_resources[] = {
	{
		.start = 0x43C50000,
		.end   = 0x43C50000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource dds_nco_resources[] = {
	{
		.start = 0x43CA0000,
		.end   = 0x43CA0000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct plat_add_const_port plat_adc1_offset_data = {
	.name		= "adc1_offset",
	.num		= 0,
	.idnum		= 0,
};
static struct plat_add_const_port plat_dac1_offset_data = {
	.name		= "dac1_offset",
	.num		= 1,
	.idnum		= 1,
};
static struct plat_add_const_port plat_dds_ampl_data = {
	.name		= "dds_ampl",
	.num		= 2,
	.idnum		= 2,
};
static struct plat_add_const_port plat_dds_f0_data = {
	.name		= "dds_f0",
	.num		= 3,
	.idnum		= 3,
};
static struct plat_add_const_port plat_dds_offset_data = {
	.name		= "dds_offset",
	.num		= 4,
	.idnum		= 4,
};
static struct plat_add_const_port plat_dds_range_data = {
	.name		= "dds_range",
	.num		= 5,
	.idnum		= 5,
};
static struct plat_nco_counter_port plat_dds_nco_data = {
	.name		= "dds_nco",
	.num		= 0,
	.idnum		= 0,
};

static struct platform_device plat_adc1_offset_device = {
	.name = "add_const",
	.id	= 0,
	.dev	= {
		.release	= plat_vco_only_release,
		.platform_data	= &plat_adc1_offset_data,
	},
	.num_resources		= ARRAY_SIZE(adc1_offset_resources),
	.resource		= adc1_offset_resources,
};
static struct platform_device plat_dac1_offset_device = {
	.name = "add_const",
	.id	= 1,
	.dev	= {
		.release	= plat_vco_only_release,
		.platform_data	= &plat_dac1_offset_data,
	},
	.num_resources		= ARRAY_SIZE(dac1_offset_resources),
	.resource		= dac1_offset_resources,
};
static struct platform_device plat_dds_ampl_device = {
	.name = "add_const",
	.id	= 2,
	.dev	= {
		.release	= plat_vco_only_release,
		.platform_data	= &plat_dds_ampl_data,
	},
	.num_resources		= ARRAY_SIZE(dds_ampl_resources),
	.resource		= dds_ampl_resources,
};
static struct platform_device plat_dds_f0_device = {
	.name = "add_const",
	.id	= 3,
	.dev	= {
		.release	= plat_vco_only_release,
		.platform_data	= &plat_dds_f0_data,
	},
	.num_resources		= ARRAY_SIZE(dds_f0_resources),
	.resource		= dds_f0_resources,
};
static struct platform_device plat_dds_offset_device = {
	.name = "add_const",
	.id	= 4,
	.dev	= {
		.release	= plat_vco_only_release,
		.platform_data	= &plat_dds_offset_data,
	},
	.num_resources		= ARRAY_SIZE(dds_offset_resources),
	.resource		= dds_offset_resources,
};
static struct platform_device plat_dds_range_device = {
	.name = "add_const",
	.id	= 5,
	.dev	= {
		.release	= plat_vco_only_release,
		.platform_data	= &plat_dds_range_data,
	},
	.num_resources		= ARRAY_SIZE(dds_range_resources),
	.resource		= dds_range_resources,
};
static struct platform_device plat_dds_nco_device = {
	.name = "nco_counter",
	.id	= 0,
	.dev	= {
		.release	= plat_vco_only_release,
		.platform_data	= &plat_dds_nco_data,
	},
	.num_resources		= ARRAY_SIZE(dds_nco_resources),
	.resource		= dds_nco_resources,
};

static int __init board_vco_only_init(void)
{
	int ret;
	ret = platform_device_register(&plat_adc1_offset_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_dac1_offset_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_dds_ampl_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_dds_f0_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_dds_offset_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_dds_range_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_dds_nco_device);
	if (ret < 0)
		return ret;

	return ret;
}
static void __exit board_vco_only_exit(void)
{
	platform_device_unregister(&plat_adc1_offset_device);
	platform_device_unregister(&plat_dac1_offset_device);
	platform_device_unregister(&plat_dds_ampl_device);
	platform_device_unregister(&plat_dds_f0_device);
	platform_device_unregister(&plat_dds_offset_device);
	platform_device_unregister(&plat_dds_range_device);
	platform_device_unregister(&plat_dds_nco_device);
}

module_init(board_vco_only_init);
module_exit(board_vco_only_exit);
MODULE_AUTHOR("toto <toto@toto.com>");
MODULE_DESCRIPTION("Board specific vco_only");
MODULE_LICENSE("GPL");
