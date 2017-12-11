#include <linux/version.h>
#include <linux/init.h>
#include <linux/module.h>
#include <linux/platform_device.h>

#include <add_const_core/add_const_config.h>
#include <nco_counter_core/nco_counter_config.h>

void plat_gain_only_release(struct device *dev)
{
	dev_dbg(dev, "released\n");
}

static struct resource dds1_ampl_resources[] = {
	{
		.start = 0x43C40000,
		.end   = 0x43C40000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource dds1_offset_resources[] = {
	{
		.start = 0x43C50000,
		.end   = 0x43C50000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource dds2_ampl_resources[] = {
	{
		.start = 0x43C20000,
		.end   = 0x43C20000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource dds2_offset_resources[] = {
	{
		.start = 0x43C10000,
		.end   = 0x43C10000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource dds2_phase_resources[] = {
	{
		.start = 0x43C70000,
		.end   = 0x43C70000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource dds2_nco_resources[] = {
	{
		.start = 0x43C60000,
		.end   = 0x43C60000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct plat_add_const_port plat_dds1_ampl_data = {
	.name		= "dds1_ampl",
	.num		= 0,
	.idnum		= 0,
};
static struct plat_add_const_port plat_dds1_offset_data = {
	.name		= "dds1_offset",
	.num		= 1,
	.idnum		= 1,
};
static struct plat_add_const_port plat_dds2_ampl_data = {
	.name		= "dds2_ampl",
	.num		= 2,
	.idnum		= 2,
};
static struct plat_add_const_port plat_dds2_offset_data = {
	.name		= "dds2_offset",
	.num		= 3,
	.idnum		= 3,
};
static struct plat_add_const_port plat_dds2_phase_data = {
	.name		= "dds2_phase",
	.num		= 4,
	.idnum		= 4,
};
static struct plat_nco_counter_port plat_dds2_nco_data = {
	.name		= "dds2_nco",
	.num		= 0,
	.idnum		= 0,
};

static struct platform_device plat_dds1_ampl_device = {
	.name = "add_const",
	.id	= 0,
	.dev	= {
		.release	= plat_gain_only_release,
		.platform_data	= &plat_dds1_ampl_data,
	},
	.num_resources		= ARRAY_SIZE(dds1_ampl_resources),
	.resource		= dds1_ampl_resources,
};
static struct platform_device plat_dds1_offset_device = {
	.name = "add_const",
	.id	= 1,
	.dev	= {
		.release	= plat_gain_only_release,
		.platform_data	= &plat_dds1_offset_data,
	},
	.num_resources		= ARRAY_SIZE(dds1_offset_resources),
	.resource		= dds1_offset_resources,
};
static struct platform_device plat_dds2_ampl_device = {
	.name = "add_const",
	.id	= 2,
	.dev	= {
		.release	= plat_gain_only_release,
		.platform_data	= &plat_dds2_ampl_data,
	},
	.num_resources		= ARRAY_SIZE(dds2_ampl_resources),
	.resource		= dds2_ampl_resources,
};
static struct platform_device plat_dds2_offset_device = {
	.name = "add_const",
	.id	= 3,
	.dev	= {
		.release	= plat_gain_only_release,
		.platform_data	= &plat_dds2_offset_data,
	},
	.num_resources		= ARRAY_SIZE(dds2_offset_resources),
	.resource		= dds2_offset_resources,
};
static struct platform_device plat_dds2_phase_device = {
	.name = "add_const",
	.id	= 4,
	.dev	= {
		.release	= plat_gain_only_release,
		.platform_data	= &plat_dds2_phase_data,
	},
	.num_resources		= ARRAY_SIZE(dds2_phase_resources),
	.resource		= dds2_phase_resources,
};
static struct platform_device plat_dds2_nco_device = {
	.name = "nco_counter",
	.id	= 0,
	.dev	= {
		.release	= plat_gain_only_release,
		.platform_data	= &plat_dds2_nco_data,
	},
	.num_resources		= ARRAY_SIZE(dds2_nco_resources),
	.resource		= dds2_nco_resources,
};

static int __init board_gain_only_init(void)
{
	int ret;
	ret = platform_device_register(&plat_dds1_ampl_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_dds1_offset_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_dds2_ampl_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_dds2_offset_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_dds2_phase_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_dds2_nco_device);
	if (ret < 0)
		return ret;

	return ret;
}
static void __exit board_gain_only_exit(void)
{
	platform_device_unregister(&plat_dds1_ampl_device);
	platform_device_unregister(&plat_dds1_offset_device);
	platform_device_unregister(&plat_dds2_ampl_device);
	platform_device_unregister(&plat_dds2_offset_device);
	platform_device_unregister(&plat_dds2_phase_device);
	platform_device_unregister(&plat_dds2_nco_device);
}

module_init(board_gain_only_init);
module_exit(board_gain_only_exit);
MODULE_AUTHOR("toto <toto@toto.com>");
MODULE_DESCRIPTION("Board specific gain_only");
MODULE_LICENSE("GPL");
