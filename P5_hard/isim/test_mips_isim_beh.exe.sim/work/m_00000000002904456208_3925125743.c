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
static const char *ng0 = "C:/Users/Ethan/Desktop/test_code/P5/P5_new/E_controller.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {33U, 0U};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {2U, 0U};
static int ng5[] = {0, 0};
static unsigned int ng6[] = {42U, 0U};
static unsigned int ng7[] = {35U, 0U};
static unsigned int ng8[] = {3U, 0U};
static unsigned int ng9[] = {13U, 0U};
static unsigned int ng10[] = {1U, 0U};
static int ng11[] = {2, 0};
static unsigned int ng12[] = {43U, 0U};
static unsigned int ng13[] = {15U, 0U};
static unsigned int ng14[] = {31U, 0U};
static unsigned int ng15[] = {8U, 0U};
static unsigned int ng16[] = {4U, 0U};



static void Always_54_0(char *t0)
{
    char t4[8];
    char t16[8];
    char t30[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    int t15;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    int t27;
    char *t28;
    char *t29;

LAB0:    t1 = (t0 + 4800U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 5120);
    *((int *)t2) = 1;
    t3 = (t0 + 4832);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(54, ng0);

LAB5:    xsi_set_current_line(56, ng0);
    t5 = (t0 + 2680U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t4 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 26);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 26);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 63U);
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 63U);

LAB6:    t14 = ((char*)((ng1)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 6, t14, 6);
    if (t15 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng9)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t15 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng7)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t15 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng12)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t15 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng13)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t15 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng8)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t15 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng15)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t15 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng16)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t15 == 1)
        goto LAB21;

LAB22:
LAB24:
LAB23:    xsi_set_current_line(196, ng0);

LAB51:    xsi_set_current_line(197, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3240);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(198, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3400);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(200, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3720);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(201, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3560);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(202, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3080);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(203, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB25:    goto LAB2;

LAB7:    xsi_set_current_line(57, ng0);

LAB26:    xsi_set_current_line(58, ng0);
    t17 = (t0 + 2680U);
    t18 = *((char **)t17);
    memset(t16, 0, 8);
    t17 = (t16 + 4);
    t19 = (t18 + 4);
    t20 = *((unsigned int *)t18);
    t21 = (t20 >> 0);
    *((unsigned int *)t16) = t21;
    t22 = *((unsigned int *)t19);
    t23 = (t22 >> 0);
    *((unsigned int *)t17) = t23;
    t24 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t24 & 63U);
    t25 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t25 & 63U);

LAB27:    t26 = ((char*)((ng2)));
    t27 = xsi_vlog_unsigned_case_compare(t16, 6, t26, 6);
    if (t27 == 1)
        goto LAB28;

LAB29:    t2 = ((char*)((ng6)));
    t15 = xsi_vlog_unsigned_case_compare(t16, 6, t2, 6);
    if (t15 == 1)
        goto LAB30;

LAB31:    t2 = ((char*)((ng7)));
    t15 = xsi_vlog_unsigned_case_compare(t16, 6, t2, 6);
    if (t15 == 1)
        goto LAB32;

LAB33:    t2 = ((char*)((ng4)));
    t15 = xsi_vlog_unsigned_case_compare(t16, 6, t2, 6);
    if (t15 == 1)
        goto LAB34;

LAB35:
LAB37:
LAB36:    xsi_set_current_line(106, ng0);

LAB43:    xsi_set_current_line(108, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3240);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(109, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3400);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(111, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3720);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(112, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3560);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(113, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3080);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(114, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB38:    goto LAB25;

LAB9:    xsi_set_current_line(120, ng0);

LAB44:    xsi_set_current_line(122, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 3240);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 2);
    xsi_set_current_line(123, ng0);
    t2 = (t0 + 2680U);
    t3 = *((char **)t2);
    memset(t30, 0, 8);
    t2 = (t30 + 4);
    t5 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 16);
    *((unsigned int *)t30) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 16);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t12 & 31U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 31U);
    t6 = (t0 + 3400);
    xsi_vlogvar_assign_value(t6, t30, 0, 0, 5);
    xsi_set_current_line(125, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 3720);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(126, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3560);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(127, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3080);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(128, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB25;

LAB11:    xsi_set_current_line(131, ng0);

LAB45:    xsi_set_current_line(133, ng0);
    t3 = ((char*)((ng11)));
    t5 = (t0 + 3240);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 2);
    xsi_set_current_line(134, ng0);
    t2 = (t0 + 2680U);
    t3 = *((char **)t2);
    memset(t30, 0, 8);
    t2 = (t30 + 4);
    t5 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 16);
    *((unsigned int *)t30) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 16);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t12 & 31U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 31U);
    t6 = (t0 + 3400);
    xsi_vlogvar_assign_value(t6, t30, 0, 0, 5);
    xsi_set_current_line(136, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3720);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(137, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3560);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(138, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3080);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(139, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB25;

LAB13:    xsi_set_current_line(142, ng0);

LAB46:    xsi_set_current_line(144, ng0);
    t3 = ((char*)((ng5)));
    t5 = (t0 + 3240);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 2);
    xsi_set_current_line(145, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3400);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(147, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3720);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(148, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3560);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(149, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3080);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(150, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB25;

LAB15:    xsi_set_current_line(153, ng0);

LAB47:    xsi_set_current_line(155, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 3240);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 2);
    xsi_set_current_line(156, ng0);
    t2 = (t0 + 2680U);
    t3 = *((char **)t2);
    memset(t30, 0, 8);
    t2 = (t30 + 4);
    t5 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 16);
    *((unsigned int *)t30) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 16);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t12 & 31U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 31U);
    t6 = (t0 + 3400);
    xsi_vlogvar_assign_value(t6, t30, 0, 0, 5);
    xsi_set_current_line(158, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3720);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(159, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3560);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(160, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3080);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(161, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB25;

LAB17:    xsi_set_current_line(164, ng0);

LAB48:    xsi_set_current_line(166, ng0);
    t3 = ((char*)((ng5)));
    t5 = (t0 + 3240);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 2);
    xsi_set_current_line(167, ng0);
    t2 = ((char*)((ng14)));
    t3 = (t0 + 3400);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(169, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3720);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(170, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3560);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(171, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3080);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(172, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB25;

LAB19:    xsi_set_current_line(175, ng0);

LAB49:    xsi_set_current_line(177, ng0);
    t3 = ((char*)((ng5)));
    t5 = (t0 + 3240);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 2);
    xsi_set_current_line(178, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3400);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(180, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3720);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(181, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3560);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(182, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3080);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(183, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB25;

LAB21:    xsi_set_current_line(186, ng0);

LAB50:    xsi_set_current_line(188, ng0);
    t3 = ((char*)((ng5)));
    t5 = (t0 + 3240);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 2);
    xsi_set_current_line(189, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3400);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(191, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3720);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(192, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3560);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(193, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3080);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(194, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB25;

LAB28:    xsi_set_current_line(60, ng0);

LAB39:    xsi_set_current_line(62, ng0);
    t28 = ((char*)((ng3)));
    t29 = (t0 + 3240);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 2);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2680U);
    t3 = *((char **)t2);
    memset(t30, 0, 8);
    t2 = (t30 + 4);
    t5 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 11);
    *((unsigned int *)t30) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 11);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t12 & 31U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 31U);
    t6 = (t0 + 3400);
    xsi_vlogvar_assign_value(t6, t30, 0, 0, 5);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3720);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3560);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3080);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB38;

LAB30:    xsi_set_current_line(71, ng0);

LAB40:    xsi_set_current_line(73, ng0);
    t3 = ((char*)((ng5)));
    t5 = (t0 + 3240);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 2);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 2680U);
    t3 = *((char **)t2);
    memset(t30, 0, 8);
    t2 = (t30 + 4);
    t5 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 11);
    *((unsigned int *)t30) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 11);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t12 & 31U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 31U);
    t6 = (t0 + 3400);
    xsi_vlogvar_assign_value(t6, t30, 0, 0, 5);
    xsi_set_current_line(76, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3720);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3560);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(80, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3080);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(81, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB38;

LAB32:    xsi_set_current_line(84, ng0);

LAB41:    xsi_set_current_line(86, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 3240);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 2);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 2680U);
    t3 = *((char **)t2);
    memset(t30, 0, 8);
    t2 = (t30 + 4);
    t5 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 11);
    *((unsigned int *)t30) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 11);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t12 & 31U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 31U);
    t6 = (t0 + 3400);
    xsi_vlogvar_assign_value(t6, t30, 0, 0, 5);
    xsi_set_current_line(89, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 3720);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(90, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3560);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(91, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3080);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(92, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB38;

LAB34:    xsi_set_current_line(95, ng0);

LAB42:    xsi_set_current_line(97, ng0);
    t3 = ((char*)((ng5)));
    t5 = (t0 + 3240);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 2);
    xsi_set_current_line(98, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3400);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(100, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3720);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(101, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3560);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(102, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3080);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(103, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB38;

}


extern void work_m_00000000002904456208_3925125743_init()
{
	static char *pe[] = {(void *)Always_54_0};
	xsi_register_didat("work_m_00000000002904456208_3925125743", "isim/test_mips_isim_beh.exe.sim/work/m_00000000002904456208_3925125743.didat");
	xsi_register_executes(pe);
}
