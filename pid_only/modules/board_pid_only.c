#include <linux/version.h>
#include <linux/init.h>
#include <linux/module.h>
#include <linux/platform_device.h>

#include <add_const_core/add_const_config.h>

void plat_pid_only_release(struct device *dev)
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

static struct resource pid_sp_resources[] = {
	{
		.start = 0x43C20000,
		.end   = 0x43C20000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource pid_kp_resources[] = {
	{
		.start = 0x43C30000,
		.end   = 0x43C30000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource pid_ki_resources[] = {
	{
		.start = 0x43C40000,
		.end   = 0x43C40000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource pid_kd_resources[] = {
	{
		.start = 0x43C50000,
		.end   = 0x43C50000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource pid_sign_resources[] = {
	{
		.start = 0x43C60000,
		.end   = 0x43C60000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource pid_int_rst_resources[] = {
	{
		.start = 0x43C70000,
		.end   = 0x43C70000 + 0xffff,
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
static struct plat_add_const_port plat_pid_sp_data = {
	.name		= "pid_sp",
	.num		= 2,
	.idnum		= 2,
};
static struct plat_add_const_port plat_pid_kp_data = {
	.name		= "pid_kp",
	.num		= 3,
	.idnum		= 3,
};
static struct plat_add_const_port plat_pid_ki_data = {
	.name		= "pid_ki",
	.num		= 4,
	.idnum		= 4,
};
static struct plat_add_const_port plat_pid_kd_data = {
	.name		= "pid_kd",
	.num		= 5,
	.idnum		= 5,
};
static struct plat_add_const_port plat_pid_sign_data = {
	.name		= "pid_sign",
	.num		= 6,
	.idnum		= 6,
};
static struct plat_add_const_port plat_pid_int_rst_data = {
	.name		= "pid_int_rst",
	.num		= 7,
	.idnum		= 7,
};

static struct platform_device plat_adc1_offset_device = {
	.name = "add_const",
	.id	= 0,
	.dev	= {
		.release	= plat_pid_only_release,
		.platform_data	= &plat_adc1_offset_data,
	},
	.num_resources		= ARRAY_SIZE(adc1_offset_resources),
	.resource		= adc1_offset_resources,
};
static struct platform_device plat_dac1_offset_device = {
	.name = "add_const",
	.id	= 1,
	.dev	= {
		.release	= plat_pid_only_release,
		.platform_data	= &plat_dac1_offset_data,
	},
	.num_resources		= ARRAY_SIZE(dac1_offset_resources),
	.resource		= dac1_offset_resources,
};
static struct platform_device plat_pid_sp_device = {
	.name = "add_const",
	.id	= 2,
	.dev	= {
		.release	= plat_pid_only_release,
		.platform_data	= &plat_pid_sp_data,
	},
	.num_resources		= ARRAY_SIZE(pid_sp_resources),
	.resource		= pid_sp_resources,
};
static struct platform_device plat_pid_kp_device = {
	.name = "add_const",
	.id	= 3,
	.dev	= {
		.release	= plat_pid_only_release,
		.platform_data	= &plat_pid_kp_data,
	},
	.num_resources		= ARRAY_SIZE(pid_kp_resources),
	.resource		= pid_kp_resources,
};
static struct platform_device plat_pid_ki_device = {
	.name = "add_const",
	.id	= 4,
	.dev	= {
		.release	= plat_pid_only_release,
		.platform_data	= &plat_pid_ki_data,
	},
	.num_resources		= ARRAY_SIZE(pid_ki_resources),
	.resource		= pid_ki_resources,
};
static struct platform_device plat_pid_kd_device = {
	.name = "add_const",
	.id	= 5,
	.dev	= {
		.release	= plat_pid_only_release,
		.platform_data	= &plat_pid_kd_data,
	},
	.num_resources		= ARRAY_SIZE(pid_kd_resources),
	.resource		= pid_kd_resources,
};
static struct platform_device plat_pid_sign_device = {
	.name = "add_const",
	.id	= 6,
	.dev	= {
		.release	= plat_pid_only_release,
		.platform_data	= &plat_pid_sign_data,
	},
	.num_resources		= ARRAY_SIZE(pid_sign_resources),
	.resource		= pid_sign_resources,
};
static struct platform_device plat_pid_int_rst_device = {
	.name = "add_const",
	.id	= 7,
	.dev	= {
		.release	= plat_pid_only_release,
		.platform_data	= &plat_pid_int_rst_data,
	},
	.num_resources		= ARRAY_SIZE(pid_int_rst_resources),
	.resource		= pid_int_rst_resources,
};

static int __init board_pid_only_init(void)
{
	int ret;
	ret = platform_device_register(&plat_adc1_offset_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_dac1_offset_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_pid_sp_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_pid_kp_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_pid_ki_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_pid_kd_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_pid_sign_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_pid_int_rst_device);
	if (ret < 0)
		return ret;

	return ret;
}
static void __exit board_pid_only_exit(void)
{
	platform_device_unregister(&plat_adc1_offset_device);
	platform_device_unregister(&plat_dac1_offset_device);
	platform_device_unregister(&plat_pid_sp_device);
	platform_device_unregister(&plat_pid_kp_device);
	platform_device_unregister(&plat_pid_ki_device);
	platform_device_unregister(&plat_pid_kd_device);
	platform_device_unregister(&plat_pid_sign_device);
	platform_device_unregister(&plat_pid_int_rst_device);
}

module_init(board_pid_only_init);
module_exit(board_pid_only_exit);
MODULE_AUTHOR("toto <toto@toto.com>");
MODULE_DESCRIPTION("Board specific pid_only");
MODULE_LICENSE("GPL");
