/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Project/P2/ext.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {16, 0};
static int ng3[] = {31, 0};
static int ng4[] = {1, 0};
static int ng5[] = {15, 0};
static int ng6[] = {0, 0};
static unsigned int ng7[] = {1U, 0U};
static unsigned int ng8[] = {2U, 0U};
static unsigned int ng9[] = {3U, 0U};
static int ng10[] = {2, 0};



static void Cont_28_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3512);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 3416);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Always_31_1(char *t0)
{
    char t9[8];
    char t17[8];
    char t26[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    unsigned int t34;
    int t35;
    int t36;
    int t37;
    int t38;
    int t39;
    int t40;
    int t41;
    int t42;

LAB0:    t1 = (t0 + 3096U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 3432);
    *((int *)t2) = 1;
    t3 = (t0 + 3128);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(31, ng0);

LAB5:    xsi_set_current_line(32, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t4, 2);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB13;

LAB14:
LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(34, ng0);

LAB16:    xsi_set_current_line(35, ng0);
    xsi_set_current_line(35, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 1928);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 32);

LAB17:    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t7 = ((char*)((ng3)));
    memset(t9, 0, 8);
    xsi_vlog_signed_leq(t9, 32, t4, 32, t7, 32);
    t8 = (t9 + 4);
    t10 = *((unsigned int *)t8);
    t11 = (~(t10));
    t12 = *((unsigned int *)t9);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB18;

LAB19:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1768);
    t4 = (t0 + 1768);
    t7 = (t4 + 72U);
    t8 = *((char **)t7);
    t15 = ((char*)((ng5)));
    t16 = ((char*)((ng6)));
    xsi_vlog_convert_partindices(t9, t17, t26, ((int*)(t8)), 2, t15, 32, 1, t16, 32, 1);
    t18 = (t9 + 4);
    t10 = *((unsigned int *)t18);
    t6 = (!(t10));
    t25 = (t17 + 4);
    t11 = *((unsigned int *)t25);
    t35 = (!(t11));
    t36 = (t6 && t35);
    t27 = (t26 + 4);
    t12 = *((unsigned int *)t27);
    t37 = (!(t12));
    t38 = (t36 && t37);
    if (t38 == 1)
        goto LAB23;

LAB24:    goto LAB15;

LAB9:    xsi_set_current_line(41, ng0);

LAB25:    xsi_set_current_line(42, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 1768);
    t7 = (t0 + 1768);
    t8 = (t7 + 72U);
    t15 = *((char **)t8);
    t16 = ((char*)((ng3)));
    t18 = ((char*)((ng2)));
    xsi_vlog_convert_partindices(t9, t17, t26, ((int*)(t15)), 2, t16, 32, 1, t18, 32, 1);
    t25 = (t9 + 4);
    t10 = *((unsigned int *)t25);
    t35 = (!(t10));
    t27 = (t17 + 4);
    t11 = *((unsigned int *)t27);
    t36 = (!(t11));
    t37 = (t35 && t36);
    t28 = (t26 + 4);
    t12 = *((unsigned int *)t28);
    t38 = (!(t12));
    t39 = (t37 && t38);
    if (t39 == 1)
        goto LAB26;

LAB27:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1768);
    t4 = (t0 + 1768);
    t7 = (t4 + 72U);
    t8 = *((char **)t7);
    t15 = ((char*)((ng5)));
    t16 = ((char*)((ng6)));
    xsi_vlog_convert_partindices(t9, t17, t26, ((int*)(t8)), 2, t15, 32, 1, t16, 32, 1);
    t18 = (t9 + 4);
    t10 = *((unsigned int *)t18);
    t6 = (!(t10));
    t25 = (t17 + 4);
    t11 = *((unsigned int *)t25);
    t35 = (!(t11));
    t36 = (t6 && t35);
    t27 = (t26 + 4);
    t12 = *((unsigned int *)t27);
    t37 = (!(t12));
    t38 = (t36 && t37);
    if (t38 == 1)
        goto LAB28;

LAB29:    goto LAB15;

LAB11:    xsi_set_current_line(46, ng0);

LAB30:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1768);
    t7 = (t0 + 1768);
    t8 = (t7 + 72U);
    t15 = *((char **)t8);
    t16 = ((char*)((ng3)));
    t18 = ((char*)((ng2)));
    xsi_vlog_convert_partindices(t9, t17, t26, ((int*)(t15)), 2, t16, 32, 1, t18, 32, 1);
    t25 = (t9 + 4);
    t10 = *((unsigned int *)t25);
    t35 = (!(t10));
    t27 = (t17 + 4);
    t11 = *((unsigned int *)t27);
    t36 = (!(t11));
    t37 = (t35 && t36);
    t28 = (t26 + 4);
    t12 = *((unsigned int *)t28);
    t38 = (!(t12));
    t39 = (t37 && t38);
    if (t39 == 1)
        goto LAB31;

LAB32:    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1768);
    t4 = (t0 + 1768);
    t7 = (t4 + 72U);
    t8 = *((char **)t7);
    t15 = ((char*)((ng5)));
    t16 = ((char*)((ng6)));
    xsi_vlog_convert_partindices(t9, t17, t26, ((int*)(t8)), 2, t15, 32, 1, t16, 32, 1);
    t18 = (t9 + 4);
    t10 = *((unsigned int *)t18);
    t6 = (!(t10));
    t25 = (t17 + 4);
    t11 = *((unsigned int *)t25);
    t35 = (!(t11));
    t36 = (t6 && t35);
    t27 = (t26 + 4);
    t12 = *((unsigned int *)t27);
    t37 = (!(t12));
    t38 = (t36 && t37);
    if (t38 == 1)
        goto LAB33;

LAB34:    goto LAB15;

LAB13:    xsi_set_current_line(51, ng0);

LAB35:    xsi_set_current_line(52, ng0);
    xsi_set_current_line(52, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);

LAB36:    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t7 = ((char*)((ng3)));
    memset(t9, 0, 8);
    xsi_vlog_signed_leq(t9, 32, t4, 32, t7, 32);
    t8 = (t9 + 4);
    t10 = *((unsigned int *)t8);
    t11 = (~(t10));
    t12 = *((unsigned int *)t9);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB37;

LAB38:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1768);
    t4 = (t0 + 1768);
    t7 = (t4 + 72U);
    t8 = *((char **)t7);
    t15 = ((char*)((ng5)));
    t16 = ((char*)((ng6)));
    xsi_vlog_convert_partindices(t9, t17, t26, ((int*)(t8)), 2, t15, 32, 1, t16, 32, 1);
    t18 = (t9 + 4);
    t10 = *((unsigned int *)t18);
    t6 = (!(t10));
    t25 = (t17 + 4);
    t11 = *((unsigned int *)t25);
    t35 = (!(t11));
    t36 = (t6 && t35);
    t27 = (t26 + 4);
    t12 = *((unsigned int *)t27);
    t37 = (!(t12));
    t38 = (t36 && t37);
    if (t38 == 1)
        goto LAB42;

LAB43:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t7 = ((char*)((ng10)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_lshift(t9, 32, t4, 32, t7, 32);
    t8 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t8, t9, 0, 0, 32, 0LL);
    goto LAB15;

LAB18:    xsi_set_current_line(35, ng0);

LAB20:    xsi_set_current_line(36, ng0);
    t15 = (t0 + 1048U);
    t16 = *((char **)t15);
    memset(t17, 0, 8);
    t15 = (t17 + 4);
    t18 = (t16 + 4);
    t19 = *((unsigned int *)t16);
    t20 = (t19 >> 15);
    t21 = (t20 & 1);
    *((unsigned int *)t17) = t21;
    t22 = *((unsigned int *)t18);
    t23 = (t22 >> 15);
    t24 = (t23 & 1);
    *((unsigned int *)t15) = t24;
    t25 = (t0 + 1768);
    t27 = (t0 + 1768);
    t28 = (t27 + 72U);
    t29 = *((char **)t28);
    t30 = (t0 + 1928);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    xsi_vlog_generic_convert_bit_index(t26, t29, 2, t32, 32, 1);
    t33 = (t26 + 4);
    t34 = *((unsigned int *)t33);
    t6 = (!(t34));
    if (t6 == 1)
        goto LAB21;

LAB22:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t7 = ((char*)((ng4)));
    memset(t9, 0, 8);
    xsi_vlog_signed_add(t9, 32, t4, 32, t7, 32);
    t8 = (t0 + 1928);
    xsi_vlogvar_assign_value(t8, t9, 0, 0, 32);
    goto LAB17;

LAB21:    xsi_vlogvar_wait_assign_value(t25, t17, 0, *((unsigned int *)t26), 1, 0LL);
    goto LAB22;

LAB23:    t13 = *((unsigned int *)t26);
    t39 = (t13 + 0);
    t14 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t17);
    t40 = (t14 - t19);
    t41 = (t40 + 1);
    xsi_vlogvar_wait_assign_value(t2, t3, t39, *((unsigned int *)t17), t41, 0LL);
    goto LAB24;

LAB26:    t13 = *((unsigned int *)t26);
    t40 = (t13 + 0);
    t14 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t17);
    t41 = (t14 - t19);
    t42 = (t41 + 1);
    xsi_vlogvar_wait_assign_value(t4, t3, t40, *((unsigned int *)t17), t42, 0LL);
    goto LAB27;

LAB28:    t13 = *((unsigned int *)t26);
    t39 = (t13 + 0);
    t14 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t17);
    t40 = (t14 - t19);
    t41 = (t40 + 1);
    xsi_vlogvar_wait_assign_value(t2, t3, t39, *((unsigned int *)t17), t41, 0LL);
    goto LAB29;

LAB31:    t13 = *((unsigned int *)t26);
    t40 = (t13 + 0);
    t14 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t17);
    t41 = (t14 - t19);
    t42 = (t41 + 1);
    xsi_vlogvar_wait_assign_value(t3, t4, t40, *((unsigned int *)t17), t42, 0LL);
    goto LAB32;

LAB33:    t13 = *((unsigned int *)t26);
    t39 = (t13 + 0);
    t14 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t17);
    t40 = (t14 - t19);
    t41 = (t40 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, t39, *((unsigned int *)t17), t41, 0LL);
    goto LAB34;

LAB37:    xsi_set_current_line(52, ng0);

LAB39:    xsi_set_current_line(53, ng0);
    t15 = (t0 + 1048U);
    t16 = *((char **)t15);
    memset(t17, 0, 8);
    t15 = (t17 + 4);
    t18 = (t16 + 4);
    t19 = *((unsigned int *)t16);
    t20 = (t19 >> 15);
    t21 = (t20 & 1);
    *((unsigned int *)t17) = t21;
    t22 = *((unsigned int *)t18);
    t23 = (t22 >> 15);
    t24 = (t23 & 1);
    *((unsigned int *)t15) = t24;
    t25 = (t0 + 1768);
    t27 = (t0 + 1768);
    t28 = (t27 + 72U);
    t29 = *((char **)t28);
    t30 = (t0 + 1928);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    xsi_vlog_generic_convert_bit_index(t26, t29, 2, t32, 32, 1);
    t33 = (t26 + 4);
    t34 = *((unsigned int *)t33);
    t6 = (!(t34));
    if (t6 == 1)
        goto LAB40;

LAB41:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t7 = ((char*)((ng4)));
    memset(t9, 0, 8);
    xsi_vlog_signed_add(t9, 32, t4, 32, t7, 32);
    t8 = (t0 + 1928);
    xsi_vlogvar_assign_value(t8, t9, 0, 0, 32);
    goto LAB36;

LAB40:    xsi_vlogvar_wait_assign_value(t25, t17, 0, *((unsigned int *)t26), 1, 0LL);
    goto LAB41;

LAB42:    t13 = *((unsigned int *)t26);
    t39 = (t13 + 0);
    t14 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t17);
    t40 = (t14 - t19);
    t41 = (t40 + 1);
    xsi_vlogvar_wait_assign_value(t2, t3, t39, *((unsigned int *)t17), t41, 0LL);
    goto LAB43;

}


extern void work_m_00000000001362611021_4241813833_init()
{
	static char *pe[] = {(void *)Cont_28_0,(void *)Always_31_1};
	xsi_register_didat("work_m_00000000001362611021_4241813833", "isim/test_isim_beh.exe.sim/work/m_00000000001362611021_4241813833.didat");
	xsi_register_executes(pe);
}
