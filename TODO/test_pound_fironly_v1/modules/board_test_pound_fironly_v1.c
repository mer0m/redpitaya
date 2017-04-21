#include <linux/version.h>
#include <linux/init.h>
#include <linux/module.h>
#include <linux/platform_device.h>

#include <add_const_core/add_const_config.h>
#include <fir16bits_core/fir16bits_config.h>
#include <nco_counter_core/nco_counter_config.h>
#include <data16_multi_to_ram_core/data16_multi_to_ram_config.h>

void plat_test_pound_fironly_v1_release(struct device *dev)
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

static struct resource data1600_resources[] = {
	{
		.start = 0x43C20000,
		.end   = 0x43C20000 + 0xffff,
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
static struct plat_data16_multi_to_ram_port plat_data1600_data = {
	.name		= "data1600",
	.num		= 0,
	.idnum		= 0,
};
static struct plat_data16_multi_to_ram_port plat_data1601_data = {
	.name		= "data1601",
	.num		= 1,
	.idnum		= 1,
};

static struct platform_device plat_add00_device = {
	.name = "add_const",
	.id	= 0,
	.dev	= {
		.release	= plat_test_pound_fironly_v1_release,
		.platform_data	= &plat_add00_data,
	},
	.num_resources		= ARRAY_SIZE(add00_resources),
	.resource		= add00_resources,
};
static struct platform_device plat_add01_device = {
	.name = "add_const",
	.id	= 1,
	.dev	= {
		.release	= plat_test_pound_fironly_v1_release,
		.platform_data	= &plat_add01_data,
	},
	.num_resources		= ARRAY_SIZE(add01_resources),
	.resource		= add01_resources,
};
static struct platform_device plat_fir00_device = {
	.name = "fir16bits",
	.id	= 0,
	.dev	= {
		.release	= plat_test_pound_fironly_v1_release,
		.platform_data	= &plat_fir00_data,
	},
	.num_resources		= ARRAY_SIZE(fir00_resources),
	.resource		= fir00_resources,
};
static struct platform_device plat_nco00_device = {
	.name = "nco_counter",
	.id	= 0,
	.dev	= {
		.release	= plat_test_pound_fironly_v1_release,
		.platform_data	= &plat_nco00_data,
	},
	.num_resources		= ARRAY_SIZE(nco00_resources),
	.resource		= nco00_resources,
};
static struct platform_device plat_nco01_device = {
	.name = "nco_counter",
	.id	= 1,
	.dev	= {
		.release	= plat_test_pound_fironly_v1_release,
		.platform_data	= &plat_nco01_data,
	},
	.num_resources		= ARRAY_SIZE(nco01_resources),
	.resource		= nco01_resources,
};
static struct platform_device plat_data1600_device = {
	.name = "data16Multi",
	.id	= 0,
	.dev	= {
		.release	= plat_test_pound_fironly_v1_release,
		.platform_data	= &plat_data1600_data,
	},
	.num_resources		= ARRAY_SIZE(data1600_resources),
	.resource		= data1600_resources,
};
static struct platform_device plat_data1601_device = {
	.name = "data16Multi",
	.id	= 1,
	.dev	= {
		.release	= plat_test_pound_fironly_v1_release,
		.platform_data	= &plat_data1601_data,
	},
	.num_resources		= ARRAY_SIZE(data1601_resources),
	.resource		= data1601_resources,
};

static int __init board_test_pound_fironly_v1_init(void)
{
	int ret;
	ret = platform_device_register(&plat_add00_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_add01_device);
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
	ret = platform_device_register(&plat_data1600_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_data1601_device);
	if (ret < 0)
		return ret;

	return ret;
}
static void __exit board_test_pound_fironly_v1_exit(void)
{
	platform_device_unregister(&plat_add00_device);
	platform_device_unregister(&plat_add01_device);
	platform_device_unregister(&plat_fir00_device);
	platform_device_unregister(&plat_nco00_device);
	platform_device_unregister(&plat_nco01_device);
	platform_device_unregister(&plat_data1600_device);
	platform_device_unregister(&plat_data1601_device);
}

module_init(board_test_pound_fironly_v1_init);
module_exit(board_test_pound_fironly_v1_exit);
MODULE_AUTHOR("pyb <pyb@femto-st.fr>");
MODULE_DESCRIPTION("Board specific test_pound_fironly_v1");
MODULE_LICENSE("GPL");
