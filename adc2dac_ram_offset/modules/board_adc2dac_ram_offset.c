#include <linux/version.h>
#include <linux/init.h>
#include <linux/module.h>
#include <linux/platform_device.h>

#include <data16_multi_to_ram_core/data16_multi_to_ram_config.h>
#include <add_const_core/add_const_config.h>

void plat_adc2dac_ram_offset_release(struct device *dev)
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

static struct resource dac1_offset_resources[] = {
	{
		.start = 0x43C10000,
		.end   = 0x43C10000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource dac2_offset_resources[] = {
	{
		.start = 0x43C20000,
		.end   = 0x43C20000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct plat_data16_multi_to_ram_port plat_data16_adc12_data = {
	.name		= "data16_adc12",
	.num		= 0,
	.idnum		= 0,
};
static struct plat_add_const_port plat_dac1_offset_data = {
	.name		= "dac1_offset",
	.num		= 0,
	.idnum		= 0,
};
static struct plat_add_const_port plat_dac2_offset_data = {
	.name		= "dac2_offset",
	.num		= 1,
	.idnum		= 1,
};

static struct platform_device plat_data16_adc12_device = {
	.name = "data16Multi",
	.id	= 0,
	.dev	= {
		.release	= plat_adc2dac_ram_offset_release,
		.platform_data	= &plat_data16_adc12_data,
	},
	.num_resources		= ARRAY_SIZE(data16_adc12_resources),
	.resource		= data16_adc12_resources,
};
static struct platform_device plat_dac1_offset_device = {
	.name = "add_const",
	.id	= 0,
	.dev	= {
		.release	= plat_adc2dac_ram_offset_release,
		.platform_data	= &plat_dac1_offset_data,
	},
	.num_resources		= ARRAY_SIZE(dac1_offset_resources),
	.resource		= dac1_offset_resources,
};
static struct platform_device plat_dac2_offset_device = {
	.name = "add_const",
	.id	= 1,
	.dev	= {
		.release	= plat_adc2dac_ram_offset_release,
		.platform_data	= &plat_dac2_offset_data,
	},
	.num_resources		= ARRAY_SIZE(dac2_offset_resources),
	.resource		= dac2_offset_resources,
};

static int __init board_adc2dac_ram_offset_init(void)
{
	int ret;
	ret = platform_device_register(&plat_data16_adc12_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_dac1_offset_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_dac2_offset_device);
	if (ret < 0)
		return ret;

	return ret;
}
static void __exit board_adc2dac_ram_offset_exit(void)
{
	platform_device_unregister(&plat_data16_adc12_device);
	platform_device_unregister(&plat_dac1_offset_device);
	platform_device_unregister(&plat_dac2_offset_device);
}

module_init(board_adc2dac_ram_offset_init);
module_exit(board_adc2dac_ram_offset_exit);
MODULE_AUTHOR("toto <toto@toto.com>");
MODULE_DESCRIPTION("Board specific adc2dac_ram_offset");
MODULE_LICENSE("GPL");
