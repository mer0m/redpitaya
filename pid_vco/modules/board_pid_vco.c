#include <linux/version.h>
#include <linux/init.h>
#include <linux/module.h>
#include <linux/platform_device.h>

#include <add_const_core/add_const_config.h>
#include <nco_counter_core/nco_counter_config.h>

void plat_pid_vco_release(struct device *dev)
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

static struct resource pid_kp_resources[] = {
	{
		.start = 0x43C60000,
		.end   = 0x43C60000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource pid_ki_resources[] = {
	{
		.start = 0x43C70000,
		.end   = 0x43C70000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource pid_kd_resources[] = {
	{
		.start = 0x43C80000,
		.end   = 0x43C80000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource pid_rst_int_resources[] = {
	{
		.start = 0x43C90000,
		.end   = 0x43C90000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource pid_sign_resources[] = {
	{
		.start = 0x43CB0000,
		.end   = 0x43CB0000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource pid_setpoint_resources[] = {
	{
		.start = 0x43CC0000,
		.end   = 0x43CC0000 + 0xffff,
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
static struct plat_add_const_port plat_pid_kp_data = {
	.name		= "pid_kp",
	.num		= 6,
	.idnum		= 6,
};
static struct plat_add_const_port plat_pid_ki_data = {
	.name		= "pid_ki",
	.num		= 7,
	.idnum		= 7,
};
static struct plat_add_const_port plat_pid_kd_data = {
	.name		= "pid_kd",
	.num		= 8,
	.idnum		= 8,
};
static struct plat_add_const_port plat_pid_rst_int_data = {
	.name		= "pid_rst_int",
	.num		= 9,
	.idnum		= 9,
};
static struct plat_add_const_port plat_pid_sign_data = {
	.name		= "pid_sign",
	.num		= 10,
	.idnum		= 10,
};
static struct plat_add_const_port plat_pid_setpoint_data = {
	.name		= "pid_setpoint",
	.num		= 11,
	.idnum		= 11,
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
		.release	= plat_pid_vco_release,
		.platform_data	= &plat_adc1_offset_data,
	},
	.num_resources		= ARRAY_SIZE(adc1_offset_resources),
	.resource		= adc1_offset_resources,
};
static struct platform_device plat_dac1_offset_device = {
	.name = "add_const",
	.id	= 1,
	.dev	= {
		.release	= plat_pid_vco_release,
		.platform_data	= &plat_dac1_offset_data,
	},
	.num_resources		= ARRAY_SIZE(dac1_offset_resources),
	.resource		= dac1_offset_resources,
};
static struct platform_device plat_dds_ampl_device = {
	.name = "add_const",
	.id	= 2,
	.dev	= {
		.release	= plat_pid_vco_release,
		.platform_data	= &plat_dds_ampl_data,
	},
	.num_resources		= ARRAY_SIZE(dds_ampl_resources),
	.resource		= dds_ampl_resources,
};
static struct platform_device plat_dds_f0_device = {
	.name = "add_const",
	.id	= 3,
	.dev	= {
		.release	= plat_pid_vco_release,
		.platform_data	= &plat_dds_f0_data,
	},
	.num_resources		= ARRAY_SIZE(dds_f0_resources),
	.resource		= dds_f0_resources,
};
static struct platform_device plat_dds_offset_device = {
	.name = "add_const",
	.id	= 4,
	.dev	= {
		.release	= plat_pid_vco_release,
		.platform_data	= &plat_dds_offset_data,
	},
	.num_resources		= ARRAY_SIZE(dds_offset_resources),
	.resource		= dds_offset_resources,
};
static struct platform_device plat_dds_range_device = {
	.name = "add_const",
	.id	= 5,
	.dev	= {
		.release	= plat_pid_vco_release,
		.platform_data	= &plat_dds_range_data,
	},
	.num_resources		= ARRAY_SIZE(dds_range_resources),
	.resource		= dds_range_resources,
};
static struct platform_device plat_pid_kp_device = {
	.name = "add_const",
	.id	= 6,
	.dev	= {
		.release	= plat_pid_vco_release,
		.platform_data	= &plat_pid_kp_data,
	},
	.num_resources		= ARRAY_SIZE(pid_kp_resources),
	.resource		= pid_kp_resources,
};
static struct platform_device plat_pid_ki_device = {
	.name = "add_const",
	.id	= 7,
	.dev	= {
		.release	= plat_pid_vco_release,
		.platform_data	= &plat_pid_ki_data,
	},
	.num_resources		= ARRAY_SIZE(pid_ki_resources),
	.resource		= pid_ki_resources,
};
static struct platform_device plat_pid_kd_device = {
	.name = "add_const",
	.id	= 8,
	.dev	= {
		.release	= plat_pid_vco_release,
		.platform_data	= &plat_pid_kd_data,
	},
	.num_resources		= ARRAY_SIZE(pid_kd_resources),
	.resource		= pid_kd_resources,
};
static struct platform_device plat_pid_rst_int_device = {
	.name = "add_const",
	.id	= 9,
	.dev	= {
		.release	= plat_pid_vco_release,
		.platform_data	= &plat_pid_rst_int_data,
	},
	.num_resources		= ARRAY_SIZE(pid_rst_int_resources),
	.resource		= pid_rst_int_resources,
};
static struct platform_device plat_pid_sign_device = {
	.name = "add_const",
	.id	= 10,
	.dev	= {
		.release	= plat_pid_vco_release,
		.platform_data	= &plat_pid_sign_data,
	},
	.num_resources		= ARRAY_SIZE(pid_sign_resources),
	.resource		= pid_sign_resources,
};
static struct platform_device plat_pid_setpoint_device = {
	.name = "add_const",
	.id	= 11,
	.dev	= {
		.release	= plat_pid_vco_release,
		.platform_data	= &plat_pid_setpoint_data,
	},
	.num_resources		= ARRAY_SIZE(pid_setpoint_resources),
	.resource		= pid_setpoint_resources,
};
static struct platform_device plat_dds_nco_device = {
	.name = "nco_counter",
	.id	= 0,
	.dev	= {
		.release	= plat_pid_vco_release,
		.platform_data	= &plat_dds_nco_data,
	},
	.num_resources		= ARRAY_SIZE(dds_nco_resources),
	.resource		= dds_nco_resources,
};

static int __init board_pid_vco_init(void)
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
	ret = platform_device_register(&plat_pid_kp_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_pid_ki_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_pid_kd_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_pid_rst_int_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_pid_sign_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_pid_setpoint_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_dds_nco_device);
	if (ret < 0)
		return ret;

	return ret;
}
static void __exit board_pid_vco_exit(void)
{
	platform_device_unregister(&plat_adc1_offset_device);
	platform_device_unregister(&plat_dac1_offset_device);
	platform_device_unregister(&plat_dds_ampl_device);
	platform_device_unregister(&plat_dds_f0_device);
	platform_device_unregister(&plat_dds_offset_device);
	platform_device_unregister(&plat_dds_range_device);
	platform_device_unregister(&plat_pid_kp_device);
	platform_device_unregister(&plat_pid_ki_device);
	platform_device_unregister(&plat_pid_kd_device);
	platform_device_unregister(&plat_pid_rst_int_device);
	platform_device_unregister(&plat_pid_sign_device);
	platform_device_unregister(&plat_pid_setpoint_device);
	platform_device_unregister(&plat_dds_nco_device);
}

module_init(board_pid_vco_init);
module_exit(board_pid_vco_exit);
MODULE_AUTHOR("toto <toto@toto.com>");
MODULE_DESCRIPTION("Board specific pid_vco");
MODULE_LICENSE("GPL");
