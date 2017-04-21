#include <linux/version.h>
#include <linux/init.h>
#include <linux/module.h>
#include <linux/platform_device.h>

#include <add_const_core/add_const_config.h>
#include <fir16bits_core/fir16bits_config.h>
#include <nco_counter_core/nco_counter_config.h>
#include <data16_multi_to_ram_core/data16_multi_to_ram_config.h>
#include <data32Real_multi_to_ram_core/data32Real_multi_to_ram_config.h>

void plat_test_pound_release(struct device *dev)
{
	dev_dbg(dev, "released\n");
}

static struct resource add00_resources[] = {
	{
		.start = 0x43C40000,
		.end   = 0x43C40000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource add01_resources[] = {
	{
		.start = 0x43C50000,
		.end   = 0x43C50000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource add02_resources[] = {
	{
		.start = 0x43C80000,
		.end   = 0x43C80000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource add03_resources[] = {
	{
		.start = 0x43C90000,
		.end   = 0x43C90000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource add04_resources[] = {
	{
		.start = 0x43CA0000,
		.end   = 0x43CA0000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource add05_resources[] = {
	{
		.start = 0x43CB0000,
		.end   = 0x43CB0000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource add06_resources[] = {
	{
		.start = 0x43CC0000,
		.end   = 0x43CC0000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource add07_resources[] = {
	{
		.start = 0x43CD0000,
		.end   = 0x43CD0000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource fir00_resources[] = {
	{
		.start = 0x43C10000,
		.end   = 0x43C10000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource nco00_resources[] = {
	{
		.start = 0x43C00000,
		.end   = 0x43C00000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource nco01_resources[] = {
	{
		.start = 0x43C70000,
		.end   = 0x43C70000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource data1601_resources[] = {
	{
		.start = 0x43C60000,
		.end   = 0x43C60000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource data3200_resources[] = {
	{
		.start = 0x43CE0000,
		.end   = 0x43CE0000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct plat_add_const_port plat_add00_data = {
	.name		= "add00",
	.num		= 0,
	.idnum		= 0,
};
static struct plat_add_const_port plat_add01_data = {
	.name		= "add01",
	.num		= 1,
	.idnum		= 1,
};
static struct plat_add_const_port plat_add02_data = {
	.name		= "add02",
	.num		= 2,
	.idnum		= 2,
};
static struct plat_add_const_port plat_add03_data = {
	.name		= "add03",
	.num		= 3,
	.idnum		= 3,
};
static struct plat_add_const_port plat_add04_data = {
	.name		= "add04",
	.num		= 4,
	.idnum		= 4,
};
static struct plat_add_const_port plat_add05_data = {
	.name		= "add05",
	.num		= 5,
	.idnum		= 5,
};
static struct plat_add_const_port plat_add06_data = {
	.name		= "add06",
	.num		= 6,
	.idnum		= 6,
};
static struct plat_add_const_port plat_add07_data = {
	.name		= "add07",
	.num		= 7,
	.idnum		= 7,
};
static struct plat_fir16bits_port plat_fir00_data = {
	.name		= "fir00",
	.num		= 0,
	.idnum		= 0,
};
static struct plat_nco_counter_port plat_nco00_data = {
	.name		= "nco00",
	.num		= 0,
	.idnum		= 0,
};
static struct plat_nco_counter_port plat_nco01_data = {
	.name		= "nco01",
	.num		= 1,
	.idnum		= 1,
};
static struct plat_data16_multi_to_ram_port plat_data1601_data = {
	.name		= "data1601",
	.num		= 0,
	.idnum		= 0,
};
static struct plat_data32Real_multi_to_ram_port plat_data3200_data = {
	.name		= "data3200",
	.num		= 0,
	.idnum		= 0,
};

static struct platform_device plat_add00_device = {
	.name = "add_const",
	.id	= 0,
	.dev	= {
		.release	= plat_test_pound_release,
		.platform_data	= &plat_add00_data,
	},
	.num_resources		= ARRAY_SIZE(add00_resources),
	.resource		= add00_resources,
};
static struct platform_device plat_add01_device = {
	.name = "add_const",
	.id	= 1,
	.dev	= {
		.release	= plat_test_pound_release,
		.platform_data	= &plat_add01_data,
	},
	.num_resources		= ARRAY_SIZE(add01_resources),
	.resource		= add01_resources,
};
static struct platform_device plat_add02_device = {
	.name = "add_const",
	.id	= 2,
	.dev	= {
		.release	= plat_test_pound_release,
		.platform_data	= &plat_add02_data,
	},
	.num_resources		= ARRAY_SIZE(add02_resources),
	.resource		= add02_resources,
};
static struct platform_device plat_add03_device = {
	.name = "add_const",
	.id	= 3,
	.dev	= {
		.release	= plat_test_pound_release,
		.platform_data	= &plat_add03_data,
	},
	.num_resources		= ARRAY_SIZE(add03_resources),
	.resource		= add03_resources,
};
static struct platform_device plat_add04_device = {
	.name = "add_const",
	.id	= 4,
	.dev	= {
		.release	= plat_test_pound_release,
		.platform_data	= &plat_add04_data,
	},
	.num_resources		= ARRAY_SIZE(add04_resources),
	.resource		= add04_resources,
};
static struct platform_device plat_add05_device = {
	.name = "add_const",
	.id	= 5,
	.dev	= {
		.release	= plat_test_pound_release,
		.platform_data	= &plat_add05_data,
	},
	.num_resources		= ARRAY_SIZE(add05_resources),
	.resource		= add05_resources,
};
static struct platform_device plat_add06_device = {
	.name = "add_const",
	.id	= 6,
	.dev	= {
		.release	= plat_test_pound_release,
		.platform_data	= &plat_add06_data,
	},
	.num_resources		= ARRAY_SIZE(add06_resources),
	.resource		= add06_resources,
};
static struct platform_device plat_add07_device = {
	.name = "add_const",
	.id	= 7,
	.dev	= {
		.release	= plat_test_pound_release,
		.platform_data	= &plat_add07_data,
	},
	.num_resources		= ARRAY_SIZE(add07_resources),
	.resource		= add07_resources,
};
static struct platform_device plat_fir00_device = {
	.name = "fir16bits",
	.id	= 0,
	.dev	= {
		.release	= plat_test_pound_release,
		.platform_data	= &plat_fir00_data,
	},
	.num_resources		= ARRAY_SIZE(fir00_resources),
	.resource		= fir00_resources,
};
static struct platform_device plat_nco00_device = {
	.name = "nco_counter",
	.id	= 0,
	.dev	= {
		.release	= plat_test_pound_release,
		.platform_data	= &plat_nco00_data,
	},
	.num_resources		= ARRAY_SIZE(nco00_resources),
	.resource		= nco00_resources,
};
static struct platform_device plat_nco01_device = {
	.name = "nco_counter",
	.id	= 1,
	.dev	= {
		.release	= plat_test_pound_release,
		.platform_data	= &plat_nco01_data,
	},
	.num_resources		= ARRAY_SIZE(nco01_resources),
	.resource		= nco01_resources,
};
static struct platform_device plat_data1601_device = {
	.name = "data16Multi",
	.id	= 0,
	.dev	= {
		.release	= plat_test_pound_release,
		.platform_data	= &plat_data1601_data,
	},
	.num_resources		= ARRAY_SIZE(data1601_resources),
	.resource		= data1601_resources,
};
static struct platform_device plat_data3200_device = {
	.name = "data32RM",
	.id	= 0,
	.dev	= {
		.release	= plat_test_pound_release,
		.platform_data	= &plat_data3200_data,
	},
	.num_resources		= ARRAY_SIZE(data3200_resources),
	.resource		= data3200_resources,
};

static int __init board_test_pound_init(void)
{
	int ret;
	ret = platform_device_register(&plat_add00_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_add01_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_add02_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_add03_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_add04_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_add05_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_add06_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_add07_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_fir00_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_nco00_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_nco01_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_data1601_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_data3200_device);
	if (ret < 0)
		return ret;

	return ret;
}
static void __exit board_test_pound_exit(void)
{
	platform_device_unregister(&plat_add00_device);
	platform_device_unregister(&plat_add01_device);
	platform_device_unregister(&plat_add02_device);
	platform_device_unregister(&plat_add03_device);
	platform_device_unregister(&plat_add04_device);
	platform_device_unregister(&plat_add05_device);
	platform_device_unregister(&plat_add06_device);
	platform_device_unregister(&plat_add07_device);
	platform_device_unregister(&plat_fir00_device);
	platform_device_unregister(&plat_nco00_device);
	platform_device_unregister(&plat_nco01_device);
	platform_device_unregister(&plat_data1601_device);
	platform_device_unregister(&plat_data3200_device);
}

module_init(board_test_pound_init);
module_exit(board_test_pound_exit);
MODULE_AUTHOR("pyb <pyb@femto-st.fr>");
MODULE_DESCRIPTION("Board specific test_pound");
MODULE_LICENSE("GPL");
