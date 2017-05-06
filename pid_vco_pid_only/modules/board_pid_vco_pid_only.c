#include <linux/version.h>
#include <linux/init.h>
#include <linux/module.h>
#include <linux/platform_device.h>

#include <add_const_core/add_const_config.h>
#include <nco_counter_core/nco_counter_config.h>

void plat_pid_vco_pid_only_release(struct device *dev)
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

static struct resource dds1_ampl_resources[] = {
	{
		.start = 0x43C20000,
		.end   = 0x43C20000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource dds1_f0_resources[] = {
	{
		.start = 0x43C30000,
		.end   = 0x43C30000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource dds1_offset_resources[] = {
	{
		.start = 0x43C40000,
		.end   = 0x43C40000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource dds1_range_resources[] = {
	{
		.start = 0x43C50000,
		.end   = 0x43C50000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource pid2_offset_resources[] = {
	{
		.start = 0x43D70000,
		.end   = 0x43D70000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource pid1_kp_resources[] = {
	{
		.start = 0x43C60000,
		.end   = 0x43C60000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource pid1_ki_resources[] = {
	{
		.start = 0x43C70000,
		.end   = 0x43C70000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource pid1_kd_resources[] = {
	{
		.start = 0x43C80000,
		.end   = 0x43C80000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource pid1_rst_int_resources[] = {
	{
		.start = 0x43C90000,
		.end   = 0x43C90000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource pid1_sign_resources[] = {
	{
		.start = 0x43CB0000,
		.end   = 0x43CB0000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource pid1_setpoint_resources[] = {
	{
		.start = 0x43CC0000,
		.end   = 0x43CC0000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource pid2_kp_resources[] = {
	{
		.start = 0x43CE0000,
		.end   = 0x43CE0000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource pid2_ki_resources[] = {
	{
		.start = 0x43CF0000,
		.end   = 0x43CF0000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource pid2_kd_resources[] = {
	{
		.start = 0x43D20000,
		.end   = 0x43D20000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource pid2_rst_int_resources[] = {
	{
		.start = 0x43D10000,
		.end   = 0x43D10000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource pid2_sign_resources[] = {
	{
		.start = 0x43D00000,
		.end   = 0x43D00000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource pid2_setpoint_resources[] = {
	{
		.start = 0x43CD0000,
		.end   = 0x43CD0000 + 0xffff,
		.flags = IORESOURCE_MEM,
	},
};

static struct resource dds1_nco_resources[] = {
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
static struct plat_add_const_port plat_dds1_ampl_data = {
	.name		= "dds1_ampl",
	.num		= 1,
	.idnum		= 1,
};
static struct plat_add_const_port plat_dds1_f0_data = {
	.name		= "dds1_f0",
	.num		= 2,
	.idnum		= 2,
};
static struct plat_add_const_port plat_dds1_offset_data = {
	.name		= "dds1_offset",
	.num		= 3,
	.idnum		= 3,
};
static struct plat_add_const_port plat_dds1_range_data = {
	.name		= "dds1_range",
	.num		= 4,
	.idnum		= 4,
};
static struct plat_add_const_port plat_pid2_offset_data = {
	.name		= "pid2_offset",
	.num		= 5,
	.idnum		= 5,
};
static struct plat_add_const_port plat_pid1_kp_data = {
	.name		= "pid1_kp",
	.num		= 6,
	.idnum		= 6,
};
static struct plat_add_const_port plat_pid1_ki_data = {
	.name		= "pid1_ki",
	.num		= 7,
	.idnum		= 7,
};
static struct plat_add_const_port plat_pid1_kd_data = {
	.name		= "pid1_kd",
	.num		= 8,
	.idnum		= 8,
};
static struct plat_add_const_port plat_pid1_rst_int_data = {
	.name		= "pid1_rst_int",
	.num		= 9,
	.idnum		= 9,
};
static struct plat_add_const_port plat_pid1_sign_data = {
	.name		= "pid1_sign",
	.num		= 10,
	.idnum		= 10,
};
static struct plat_add_const_port plat_pid1_setpoint_data = {
	.name		= "pid1_setpoint",
	.num		= 11,
	.idnum		= 11,
};
static struct plat_add_const_port plat_pid2_kp_data = {
	.name		= "pid2_kp",
	.num		= 12,
	.idnum		= 12,
};
static struct plat_add_const_port plat_pid2_ki_data = {
	.name		= "pid2_ki",
	.num		= 13,
	.idnum		= 13,
};
static struct plat_add_const_port plat_pid2_kd_data = {
	.name		= "pid2_kd",
	.num		= 14,
	.idnum		= 14,
};
static struct plat_add_const_port plat_pid2_rst_int_data = {
	.name		= "pid2_rst_int",
	.num		= 15,
	.idnum		= 15,
};
static struct plat_add_const_port plat_pid2_sign_data = {
	.name		= "pid2_sign",
	.num		= 16,
	.idnum		= 16,
};
static struct plat_add_const_port plat_pid2_setpoint_data = {
	.name		= "pid2_setpoint",
	.num		= 17,
	.idnum		= 17,
};
static struct plat_nco_counter_port plat_dds1_nco_data = {
	.name		= "dds1_nco",
	.num		= 0,
	.idnum		= 0,
};

static struct platform_device plat_adc1_offset_device = {
	.name = "add_const",
	.id	= 0,
	.dev	= {
		.release	= plat_pid_vco_pid_only_release,
		.platform_data	= &plat_adc1_offset_data,
	},
	.num_resources		= ARRAY_SIZE(adc1_offset_resources),
	.resource		= adc1_offset_resources,
};
static struct platform_device plat_dds1_ampl_device = {
	.name = "add_const",
	.id	= 1,
	.dev	= {
		.release	= plat_pid_vco_pid_only_release,
		.platform_data	= &plat_dds1_ampl_data,
	},
	.num_resources		= ARRAY_SIZE(dds1_ampl_resources),
	.resource		= dds1_ampl_resources,
};
static struct platform_device plat_dds1_f0_device = {
	.name = "add_const",
	.id	= 2,
	.dev	= {
		.release	= plat_pid_vco_pid_only_release,
		.platform_data	= &plat_dds1_f0_data,
	},
	.num_resources		= ARRAY_SIZE(dds1_f0_resources),
	.resource		= dds1_f0_resources,
};
static struct platform_device plat_dds1_offset_device = {
	.name = "add_const",
	.id	= 3,
	.dev	= {
		.release	= plat_pid_vco_pid_only_release,
		.platform_data	= &plat_dds1_offset_data,
	},
	.num_resources		= ARRAY_SIZE(dds1_offset_resources),
	.resource		= dds1_offset_resources,
};
static struct platform_device plat_dds1_range_device = {
	.name = "add_const",
	.id	= 4,
	.dev	= {
		.release	= plat_pid_vco_pid_only_release,
		.platform_data	= &plat_dds1_range_data,
	},
	.num_resources		= ARRAY_SIZE(dds1_range_resources),
	.resource		= dds1_range_resources,
};
static struct platform_device plat_pid2_offset_device = {
	.name = "add_const",
	.id	= 5,
	.dev	= {
		.release	= plat_pid_vco_pid_only_release,
		.platform_data	= &plat_pid2_offset_data,
	},
	.num_resources		= ARRAY_SIZE(pid2_offset_resources),
	.resource		= pid2_offset_resources,
};
static struct platform_device plat_pid1_kp_device = {
	.name = "add_const",
	.id	= 6,
	.dev	= {
		.release	= plat_pid_vco_pid_only_release,
		.platform_data	= &plat_pid1_kp_data,
	},
	.num_resources		= ARRAY_SIZE(pid1_kp_resources),
	.resource		= pid1_kp_resources,
};
static struct platform_device plat_pid1_ki_device = {
	.name = "add_const",
	.id	= 7,
	.dev	= {
		.release	= plat_pid_vco_pid_only_release,
		.platform_data	= &plat_pid1_ki_data,
	},
	.num_resources		= ARRAY_SIZE(pid1_ki_resources),
	.resource		= pid1_ki_resources,
};
static struct platform_device plat_pid1_kd_device = {
	.name = "add_const",
	.id	= 8,
	.dev	= {
		.release	= plat_pid_vco_pid_only_release,
		.platform_data	= &plat_pid1_kd_data,
	},
	.num_resources		= ARRAY_SIZE(pid1_kd_resources),
	.resource		= pid1_kd_resources,
};
static struct platform_device plat_pid1_rst_int_device = {
	.name = "add_const",
	.id	= 9,
	.dev	= {
		.release	= plat_pid_vco_pid_only_release,
		.platform_data	= &plat_pid1_rst_int_data,
	},
	.num_resources		= ARRAY_SIZE(pid1_rst_int_resources),
	.resource		= pid1_rst_int_resources,
};
static struct platform_device plat_pid1_sign_device = {
	.name = "add_const",
	.id	= 10,
	.dev	= {
		.release	= plat_pid_vco_pid_only_release,
		.platform_data	= &plat_pid1_sign_data,
	},
	.num_resources		= ARRAY_SIZE(pid1_sign_resources),
	.resource		= pid1_sign_resources,
};
static struct platform_device plat_pid1_setpoint_device = {
	.name = "add_const",
	.id	= 11,
	.dev	= {
		.release	= plat_pid_vco_pid_only_release,
		.platform_data	= &plat_pid1_setpoint_data,
	},
	.num_resources		= ARRAY_SIZE(pid1_setpoint_resources),
	.resource		= pid1_setpoint_resources,
};
static struct platform_device plat_pid2_kp_device = {
	.name = "add_const",
	.id	= 12,
	.dev	= {
		.release	= plat_pid_vco_pid_only_release,
		.platform_data	= &plat_pid2_kp_data,
	},
	.num_resources		= ARRAY_SIZE(pid2_kp_resources),
	.resource		= pid2_kp_resources,
};
static struct platform_device plat_pid2_ki_device = {
	.name = "add_const",
	.id	= 13,
	.dev	= {
		.release	= plat_pid_vco_pid_only_release,
		.platform_data	= &plat_pid2_ki_data,
	},
	.num_resources		= ARRAY_SIZE(pid2_ki_resources),
	.resource		= pid2_ki_resources,
};
static struct platform_device plat_pid2_kd_device = {
	.name = "add_const",
	.id	= 14,
	.dev	= {
		.release	= plat_pid_vco_pid_only_release,
		.platform_data	= &plat_pid2_kd_data,
	},
	.num_resources		= ARRAY_SIZE(pid2_kd_resources),
	.resource		= pid2_kd_resources,
};
static struct platform_device plat_pid2_rst_int_device = {
	.name = "add_const",
	.id	= 15,
	.dev	= {
		.release	= plat_pid_vco_pid_only_release,
		.platform_data	= &plat_pid2_rst_int_data,
	},
	.num_resources		= ARRAY_SIZE(pid2_rst_int_resources),
	.resource		= pid2_rst_int_resources,
};
static struct platform_device plat_pid2_sign_device = {
	.name = "add_const",
	.id	= 16,
	.dev	= {
		.release	= plat_pid_vco_pid_only_release,
		.platform_data	= &plat_pid2_sign_data,
	},
	.num_resources		= ARRAY_SIZE(pid2_sign_resources),
	.resource		= pid2_sign_resources,
};
static struct platform_device plat_pid2_setpoint_device = {
	.name = "add_const",
	.id	= 17,
	.dev	= {
		.release	= plat_pid_vco_pid_only_release,
		.platform_data	= &plat_pid2_setpoint_data,
	},
	.num_resources		= ARRAY_SIZE(pid2_setpoint_resources),
	.resource		= pid2_setpoint_resources,
};
static struct platform_device plat_dds1_nco_device = {
	.name = "nco_counter",
	.id	= 0,
	.dev	= {
		.release	= plat_pid_vco_pid_only_release,
		.platform_data	= &plat_dds1_nco_data,
	},
	.num_resources		= ARRAY_SIZE(dds1_nco_resources),
	.resource		= dds1_nco_resources,
};

static int __init board_pid_vco_pid_only_init(void)
{
	int ret;
	ret = platform_device_register(&plat_adc1_offset_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_dds1_ampl_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_dds1_f0_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_dds1_offset_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_dds1_range_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_pid2_offset_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_pid1_kp_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_pid1_ki_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_pid1_kd_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_pid1_rst_int_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_pid1_sign_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_pid1_setpoint_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_pid2_kp_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_pid2_ki_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_pid2_kd_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_pid2_rst_int_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_pid2_sign_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_pid2_setpoint_device);
	if (ret < 0)
		return ret;
	ret = platform_device_register(&plat_dds1_nco_device);
	if (ret < 0)
		return ret;

	return ret;
}
static void __exit board_pid_vco_pid_only_exit(void)
{
	platform_device_unregister(&plat_adc1_offset_device);
	platform_device_unregister(&plat_dds1_ampl_device);
	platform_device_unregister(&plat_dds1_f0_device);
	platform_device_unregister(&plat_dds1_offset_device);
	platform_device_unregister(&plat_dds1_range_device);
	platform_device_unregister(&plat_pid2_offset_device);
	platform_device_unregister(&plat_pid1_kp_device);
	platform_device_unregister(&plat_pid1_ki_device);
	platform_device_unregister(&plat_pid1_kd_device);
	platform_device_unregister(&plat_pid1_rst_int_device);
	platform_device_unregister(&plat_pid1_sign_device);
	platform_device_unregister(&plat_pid1_setpoint_device);
	platform_device_unregister(&plat_pid2_kp_device);
	platform_device_unregister(&plat_pid2_ki_device);
	platform_device_unregister(&plat_pid2_kd_device);
	platform_device_unregister(&plat_pid2_rst_int_device);
	platform_device_unregister(&plat_pid2_sign_device);
	platform_device_unregister(&plat_pid2_setpoint_device);
	platform_device_unregister(&plat_dds1_nco_device);
}

module_init(board_pid_vco_pid_only_init);
module_exit(board_pid_vco_pid_only_exit);
MODULE_AUTHOR("toto <toto@toto.com>");
MODULE_DESCRIPTION("Board specific pid_vco_pid_only");
MODULE_LICENSE("GPL");
