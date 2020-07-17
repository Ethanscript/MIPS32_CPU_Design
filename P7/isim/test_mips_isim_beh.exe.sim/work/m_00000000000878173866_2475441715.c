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
static const char *ng0 = "C:/Users/Ethan/Desktop/Zsk/dmext.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static int ng3[] = {24, 0};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {3U, 0U};
static int ng6[] = {16, 0};
static unsigned int ng7[] = {4U, 0U};



static void Always_37_0(char *t0)
{
    char t9[8];
    char t16[8];
    char t19[8];
    char t23[8];
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
    unsigned int t15;
    char *t17;
    char *t18;
    char *t20;
    char *t21;
    char *t22;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 3328);
    *((int *)t2) = 1;
    t3 = (t0 + 3040);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);

LAB5:    xsi_set_current_line(38, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t4, 3);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB15;

LAB16:
LAB17:    goto LAB2;

LAB7:    xsi_set_current_line(39, ng0);
    t7 = (t0 + 1048U);
    t8 = *((char **)t7);
    t7 = (t0 + 1768);
    xsi_vlogvar_assign_value(t7, t8, 0, 0, 32);
    goto LAB17;

LAB9:    xsi_set_current_line(40, ng0);

LAB18:    xsi_set_current_line(41, ng0);
    t3 = (t0 + 1368U);
    t4 = *((char **)t3);
    memset(t9, 0, 8);
    t3 = (t9 + 4);
    t7 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 0);
    *((unsigned int *)t9) = t11;
    t12 = *((unsigned int *)t7);
    t13 = (t12 >> 0);
    *((unsigned int *)t3) = t13;
    t14 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t14 & 3U);
    t15 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t15 & 3U);
    t8 = (t0 + 1928);
    xsi_vlogvar_assign_value(t8, t9, 0, 0, 2);
    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB19:    t7 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 2, t7, 2);
    if (t6 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t6 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t6 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t6 == 1)
        goto LAB26;

LAB27:
LAB28:    goto LAB17;

LAB11:    xsi_set_current_line(50, ng0);

LAB29:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 1368U);
    t7 = *((char **)t3);
    memset(t9, 0, 8);
    t3 = (t9 + 4);
    t8 = (t7 + 4);
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 0);
    *((unsigned int *)t9) = t11;
    t12 = *((unsigned int *)t8);
    t13 = (t12 >> 0);
    *((unsigned int *)t3) = t13;
    t14 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t14 & 3U);
    t15 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t15 & 3U);
    t17 = (t0 + 1928);
    xsi_vlogvar_assign_value(t17, t9, 0, 0, 2);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);

LAB30:    t8 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t7, 2, t8, 2);
    if (t6 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t7, 2, t2, 2);
    if (t6 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t7, 2, t2, 2);
    if (t6 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t7, 2, t2, 2);
    if (t6 == 1)
        goto LAB37;

LAB38:
LAB39:    goto LAB17;

LAB13:    xsi_set_current_line(60, ng0);

LAB40:    xsi_set_current_line(61, ng0);
    t3 = (t0 + 1368U);
    t8 = *((char **)t3);
    memset(t9, 0, 8);
    t3 = (t9 + 4);
    t17 = (t8 + 4);
    t10 = *((unsigned int *)t8);
    t11 = (t10 >> 1);
    t12 = (t11 & 1);
    *((unsigned int *)t9) = t12;
    t13 = *((unsigned int *)t17);
    t14 = (t13 >> 1);
    t15 = (t14 & 1);
    *((unsigned int *)t3) = t15;
    t18 = (t0 + 2088);
    xsi_vlogvar_assign_value(t18, t9, 0, 0, 1);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t8 = *((char **)t3);

LAB41:    t17 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t8, 1, t17, 1);
    if (t6 == 1)
        goto LAB42;

LAB43:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t8, 1, t2, 1);
    if (t6 == 1)
        goto LAB44;

LAB45:
LAB46:    goto LAB17;

LAB15:    xsi_set_current_line(68, ng0);

LAB47:    xsi_set_current_line(69, ng0);
    t3 = (t0 + 1368U);
    t17 = *((char **)t3);
    memset(t9, 0, 8);
    t3 = (t9 + 4);
    t18 = (t17 + 4);
    t10 = *((unsigned int *)t17);
    t11 = (t10 >> 1);
    t12 = (t11 & 1);
    *((unsigned int *)t9) = t12;
    t13 = *((unsigned int *)t18);
    t14 = (t13 >> 1);
    t15 = (t14 & 1);
    *((unsigned int *)t3) = t15;
    t20 = (t0 + 2088);
    xsi_vlogvar_assign_value(t20, t9, 0, 0, 1);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t17 = *((char **)t3);

LAB48:    t18 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t17, 1, t18, 1);
    if (t6 == 1)
        goto LAB49;

LAB50:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t17, 1, t2, 1);
    if (t6 == 1)
        goto LAB51;

LAB52:
LAB53:    goto LAB17;

LAB20:    xsi_set_current_line(43, ng0);
    t8 = (t0 + 1048U);
    t17 = *((char **)t8);
    memset(t16, 0, 8);
    t8 = (t16 + 4);
    t18 = (t17 + 4);
    t10 = *((unsigned int *)t17);
    t11 = (t10 >> 0);
    *((unsigned int *)t16) = t11;
    t12 = *((unsigned int *)t18);
    t13 = (t12 >> 0);
    *((unsigned int *)t8) = t13;
    t14 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t14 & 255U);
    t15 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t15 & 255U);
    t20 = ((char*)((ng3)));
    t21 = (t0 + 1048U);
    t22 = *((char **)t21);
    memset(t23, 0, 8);
    t21 = (t23 + 4);
    t24 = (t22 + 4);
    t25 = *((unsigned int *)t22);
    t26 = (t25 >> 7);
    t27 = (t26 & 1);
    *((unsigned int *)t23) = t27;
    t28 = *((unsigned int *)t24);
    t29 = (t28 >> 7);
    t30 = (t29 & 1);
    *((unsigned int *)t21) = t30;
    xsi_vlog_mul_concat(t19, 24, 1, t20, 1U, t23, 1);
    xsi_vlogtype_concat(t9, 32, 32, 2U, t19, 24, t16, 8);
    t31 = (t0 + 1768);
    xsi_vlogvar_assign_value(t31, t9, 0, 0, 32);
    goto LAB28;

LAB22:    xsi_set_current_line(44, ng0);
    t3 = (t0 + 1048U);
    t7 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t16 + 4);
    t8 = (t7 + 4);
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 8);
    *((unsigned int *)t16) = t11;
    t12 = *((unsigned int *)t8);
    t13 = (t12 >> 8);
    *((unsigned int *)t3) = t13;
    t14 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t14 & 255U);
    t15 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t15 & 255U);
    t17 = ((char*)((ng3)));
    t18 = (t0 + 1048U);
    t20 = *((char **)t18);
    memset(t23, 0, 8);
    t18 = (t23 + 4);
    t21 = (t20 + 4);
    t25 = *((unsigned int *)t20);
    t26 = (t25 >> 15);
    t27 = (t26 & 1);
    *((unsigned int *)t23) = t27;
    t28 = *((unsigned int *)t21);
    t29 = (t28 >> 15);
    t30 = (t29 & 1);
    *((unsigned int *)t18) = t30;
    xsi_vlog_mul_concat(t19, 24, 1, t17, 1U, t23, 1);
    xsi_vlogtype_concat(t9, 32, 32, 2U, t19, 24, t16, 8);
    t22 = (t0 + 1768);
    xsi_vlogvar_assign_value(t22, t9, 0, 0, 32);
    goto LAB28;

LAB24:    xsi_set_current_line(45, ng0);
    t3 = (t0 + 1048U);
    t7 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t16 + 4);
    t8 = (t7 + 4);
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 16);
    *((unsigned int *)t16) = t11;
    t12 = *((unsigned int *)t8);
    t13 = (t12 >> 16);
    *((unsigned int *)t3) = t13;
    t14 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t14 & 255U);
    t15 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t15 & 255U);
    t17 = ((char*)((ng3)));
    t18 = (t0 + 1048U);
    t20 = *((char **)t18);
    memset(t23, 0, 8);
    t18 = (t23 + 4);
    t21 = (t20 + 4);
    t25 = *((unsigned int *)t20);
    t26 = (t25 >> 23);
    t27 = (t26 & 1);
    *((unsigned int *)t23) = t27;
    t28 = *((unsigned int *)t21);
    t29 = (t28 >> 23);
    t30 = (t29 & 1);
    *((unsigned int *)t18) = t30;
    xsi_vlog_mul_concat(t19, 24, 1, t17, 1U, t23, 1);
    xsi_vlogtype_concat(t9, 32, 32, 2U, t19, 24, t16, 8);
    t22 = (t0 + 1768);
    xsi_vlogvar_assign_value(t22, t9, 0, 0, 32);
    goto LAB28;

LAB26:    xsi_set_current_line(46, ng0);
    t3 = (t0 + 1048U);
    t7 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t16 + 4);
    t8 = (t7 + 4);
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 24);
    *((unsigned int *)t16) = t11;
    t12 = *((unsigned int *)t8);
    t13 = (t12 >> 24);
    *((unsigned int *)t3) = t13;
    t14 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t14 & 255U);
    t15 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t15 & 255U);
    t17 = ((char*)((ng3)));
    t18 = (t0 + 1048U);
    t20 = *((char **)t18);
    memset(t23, 0, 8);
    t18 = (t23 + 4);
    t21 = (t20 + 4);
    t25 = *((unsigned int *)t20);
    t26 = (t25 >> 31);
    t27 = (t26 & 1);
    *((unsigned int *)t23) = t27;
    t28 = *((unsigned int *)t21);
    t29 = (t28 >> 31);
    t30 = (t29 & 1);
    *((unsigned int *)t18) = t30;
    xsi_vlog_mul_concat(t19, 24, 1, t17, 1U, t23, 1);
    xsi_vlogtype_concat(t9, 32, 32, 2U, t19, 24, t16, 8);
    t22 = (t0 + 1768);
    xsi_vlogvar_assign_value(t22, t9, 0, 0, 32);
    goto LAB28;

LAB31:    xsi_set_current_line(53, ng0);
    t17 = (t0 + 1048U);
    t18 = *((char **)t17);
    memset(t16, 0, 8);
    t17 = (t16 + 4);
    t20 = (t18 + 4);
    t10 = *((unsigned int *)t18);
    t11 = (t10 >> 0);
    *((unsigned int *)t16) = t11;
    t12 = *((unsigned int *)t20);
    t13 = (t12 >> 0);
    *((unsigned int *)t17) = t13;
    t14 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t14 & 255U);
    t15 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t15 & 255U);
    t21 = ((char*)((ng1)));
    xsi_vlogtype_concat(t9, 32, 32, 2U, t21, 24, t16, 8);
    t22 = (t0 + 1768);
    xsi_vlogvar_assign_value(t22, t9, 0, 0, 32);
    goto LAB39;

LAB33:    xsi_set_current_line(54, ng0);
    t3 = (t0 + 1048U);
    t8 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t16 + 4);
    t17 = (t8 + 4);
    t10 = *((unsigned int *)t8);
    t11 = (t10 >> 8);
    *((unsigned int *)t16) = t11;
    t12 = *((unsigned int *)t17);
    t13 = (t12 >> 8);
    *((unsigned int *)t3) = t13;
    t14 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t14 & 255U);
    t15 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t15 & 255U);
    t18 = ((char*)((ng1)));
    xsi_vlogtype_concat(t9, 32, 32, 2U, t18, 24, t16, 8);
    t20 = (t0 + 1768);
    xsi_vlogvar_assign_value(t20, t9, 0, 0, 32);
    goto LAB39;

LAB35:    xsi_set_current_line(55, ng0);
    t3 = (t0 + 1048U);
    t8 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t16 + 4);
    t17 = (t8 + 4);
    t10 = *((unsigned int *)t8);
    t11 = (t10 >> 16);
    *((unsigned int *)t16) = t11;
    t12 = *((unsigned int *)t17);
    t13 = (t12 >> 16);
    *((unsigned int *)t3) = t13;
    t14 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t14 & 255U);
    t15 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t15 & 255U);
    t18 = ((char*)((ng1)));
    xsi_vlogtype_concat(t9, 32, 32, 2U, t18, 24, t16, 8);
    t20 = (t0 + 1768);
    xsi_vlogvar_assign_value(t20, t9, 0, 0, 32);
    goto LAB39;

LAB37:    xsi_set_current_line(56, ng0);
    t3 = (t0 + 1048U);
    t8 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t16 + 4);
    t17 = (t8 + 4);
    t10 = *((unsigned int *)t8);
    t11 = (t10 >> 24);
    *((unsigned int *)t16) = t11;
    t12 = *((unsigned int *)t17);
    t13 = (t12 >> 24);
    *((unsigned int *)t3) = t13;
    t14 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t14 & 255U);
    t15 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t15 & 255U);
    t18 = ((char*)((ng1)));
    xsi_vlogtype_concat(t9, 32, 32, 2U, t18, 24, t16, 8);
    t20 = (t0 + 1768);
    xsi_vlogvar_assign_value(t20, t9, 0, 0, 32);
    goto LAB39;

LAB42:    xsi_set_current_line(63, ng0);
    t18 = (t0 + 1048U);
    t20 = *((char **)t18);
    memset(t16, 0, 8);
    t18 = (t16 + 4);
    t21 = (t20 + 4);
    t10 = *((unsigned int *)t20);
    t11 = (t10 >> 0);
    *((unsigned int *)t16) = t11;
    t12 = *((unsigned int *)t21);
    t13 = (t12 >> 0);
    *((unsigned int *)t18) = t13;
    t14 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t14 & 65535U);
    t15 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t15 & 65535U);
    t22 = ((char*)((ng6)));
    t24 = (t0 + 1048U);
    t31 = *((char **)t24);
    memset(t23, 0, 8);
    t24 = (t23 + 4);
    t32 = (t31 + 4);
    t25 = *((unsigned int *)t31);
    t26 = (t25 >> 15);
    t27 = (t26 & 1);
    *((unsigned int *)t23) = t27;
    t28 = *((unsigned int *)t32);
    t29 = (t28 >> 15);
    t30 = (t29 & 1);
    *((unsigned int *)t24) = t30;
    xsi_vlog_mul_concat(t19, 16, 1, t22, 1U, t23, 1);
    xsi_vlogtype_concat(t9, 32, 32, 2U, t19, 16, t16, 16);
    t33 = (t0 + 1768);
    xsi_vlogvar_assign_value(t33, t9, 0, 0, 32);
    goto LAB46;

LAB44:    xsi_set_current_line(64, ng0);
    t3 = (t0 + 1048U);
    t17 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t16 + 4);
    t18 = (t17 + 4);
    t10 = *((unsigned int *)t17);
    t11 = (t10 >> 16);
    *((unsigned int *)t16) = t11;
    t12 = *((unsigned int *)t18);
    t13 = (t12 >> 16);
    *((unsigned int *)t3) = t13;
    t14 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t14 & 65535U);
    t15 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t15 & 65535U);
    t20 = ((char*)((ng6)));
    t21 = (t0 + 1048U);
    t22 = *((char **)t21);
    memset(t23, 0, 8);
    t21 = (t23 + 4);
    t24 = (t22 + 4);
    t25 = *((unsigned int *)t22);
    t26 = (t25 >> 31);
    t27 = (t26 & 1);
    *((unsigned int *)t23) = t27;
    t28 = *((unsigned int *)t24);
    t29 = (t28 >> 31);
    t30 = (t29 & 1);
    *((unsigned int *)t21) = t30;
    xsi_vlog_mul_concat(t19, 16, 1, t20, 1U, t23, 1);
    xsi_vlogtype_concat(t9, 32, 32, 2U, t19, 16, t16, 16);
    t31 = (t0 + 1768);
    xsi_vlogvar_assign_value(t31, t9, 0, 0, 32);
    goto LAB46;

LAB49:    xsi_set_current_line(71, ng0);
    t20 = (t0 + 1048U);
    t21 = *((char **)t20);
    memset(t16, 0, 8);
    t20 = (t16 + 4);
    t22 = (t21 + 4);
    t10 = *((unsigned int *)t21);
    t11 = (t10 >> 0);
    *((unsigned int *)t16) = t11;
    t12 = *((unsigned int *)t22);
    t13 = (t12 >> 0);
    *((unsigned int *)t20) = t13;
    t14 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t14 & 65535U);
    t15 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t15 & 65535U);
    t24 = ((char*)((ng1)));
    xsi_vlogtype_concat(t9, 32, 32, 2U, t24, 16, t16, 16);
    t31 = (t0 + 1768);
    xsi_vlogvar_assign_value(t31, t9, 0, 0, 32);
    goto LAB53;

LAB51:    xsi_set_current_line(72, ng0);
    t3 = (t0 + 1048U);
    t18 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t16 + 4);
    t20 = (t18 + 4);
    t10 = *((unsigned int *)t18);
    t11 = (t10 >> 16);
    *((unsigned int *)t16) = t11;
    t12 = *((unsigned int *)t20);
    t13 = (t12 >> 16);
    *((unsigned int *)t3) = t13;
    t14 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t14 & 65535U);
    t15 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t15 & 65535U);
    t21 = ((char*)((ng1)));
    xsi_vlogtype_concat(t9, 32, 32, 2U, t21, 16, t16, 16);
    t22 = (t0 + 1768);
    xsi_vlogvar_assign_value(t22, t9, 0, 0, 32);
    goto LAB53;

}


extern void work_m_00000000000878173866_2475441715_init()
{
	static char *pe[] = {(void *)Always_37_0};
	xsi_register_didat("work_m_00000000000878173866_2475441715", "isim/test_mips_isim_beh.exe.sim/work/m_00000000000878173866_2475441715.didat");
	xsi_register_executes(pe);
}
