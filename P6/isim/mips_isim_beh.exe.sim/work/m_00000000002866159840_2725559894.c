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
static const char *ng0 = "C:/Users/Ethan/Desktop/test_code/P6/P6_1/alu.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static int ng4[] = {0, 0};
static int ng5[] = {1, 0};
static unsigned int ng6[] = {3U, 0U};
static unsigned int ng7[] = {4U, 0U};
static unsigned int ng8[] = {5U, 0U};
static unsigned int ng9[] = {6U, 0U};
static unsigned int ng10[] = {7U, 0U};
static unsigned int ng11[] = {8U, 0U};
static unsigned int ng12[] = {9U, 0U};
static unsigned int ng13[] = {10U, 0U};



static void Always_43_0(char *t0)
{
    char t10[8];
    char t42[16];
    char t43[16];
    char t44[8];
    char t45[16];
    char t46[8];
    char t47[8];
    char t48[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    int t33;
    int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    char *t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;
    char *t69;

LAB0:    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 3328);
    *((int *)t2) = 1;
    t3 = (t0 + 3040);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(43, ng0);

LAB5:    xsi_set_current_line(44, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t4, 4);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB27;

LAB28:
LAB29:    goto LAB2;

LAB7:    xsi_set_current_line(45, ng0);
    t7 = (t0 + 1048U);
    t8 = *((char **)t7);
    t7 = (t0 + 1208U);
    t9 = *((char **)t7);
    t11 = *((unsigned int *)t8);
    t12 = *((unsigned int *)t9);
    t13 = (t11 & t12);
    *((unsigned int *)t10) = t13;
    t7 = (t8 + 4);
    t14 = (t9 + 4);
    t15 = (t10 + 4);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t14);
    t18 = (t16 | t17);
    *((unsigned int *)t15) = t18;
    t19 = *((unsigned int *)t15);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB30;

LAB31:
LAB32:    t41 = (t0 + 1768);
    xsi_vlogvar_assign_value(t41, t10, 0, 0, 32);
    goto LAB29;

LAB9:    xsi_set_current_line(46, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t7);
    t13 = (t11 | t12);
    *((unsigned int *)t10) = t13;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t9 = (t10 + 4);
    t16 = *((unsigned int *)t3);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    *((unsigned int *)t9) = t18;
    t19 = *((unsigned int *)t9);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB33;

LAB34:
LAB35:    t23 = (t0 + 1768);
    xsi_vlogvar_assign_value(t23, t10, 0, 0, 32);
    goto LAB29;

LAB11:    xsi_set_current_line(47, ng0);

LAB36:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_add(t10, 32, t4, 32, t7, 32);
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t10, 0, 0, 32);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    memset(t10, 0, 8);
    t2 = (t10 + 4);
    t7 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 31);
    t13 = (t12 & 1);
    *((unsigned int *)t10) = t13;
    t16 = *((unsigned int *)t7);
    t17 = (t16 >> 31);
    t18 = (t17 & 1);
    *((unsigned int *)t2) = t18;
    xsi_vlogtype_concat(t42, 33, 33, 2U, t10, 1, t3, 32);
    t8 = (t0 + 1208U);
    t9 = *((char **)t8);
    t8 = (t0 + 1208U);
    t14 = *((char **)t8);
    memset(t44, 0, 8);
    t8 = (t44 + 4);
    t15 = (t14 + 4);
    t19 = *((unsigned int *)t14);
    t20 = (t19 >> 31);
    t21 = (t20 & 1);
    *((unsigned int *)t44) = t21;
    t22 = *((unsigned int *)t15);
    t25 = (t22 >> 31);
    t26 = (t25 & 1);
    *((unsigned int *)t8) = t26;
    xsi_vlogtype_concat(t43, 33, 33, 2U, t44, 1, t9, 32);
    xsi_vlog_unsigned_add(t45, 33, t42, 33, t43, 33);
    t23 = (t0 + 2088);
    xsi_vlogvar_assign_value(t23, t45, 0, 0, 33);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t46, 0, 8);
    t7 = (t46 + 4);
    t8 = (t4 + 8);
    t9 = (t4 + 12);
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 0);
    t13 = (t12 & 1);
    *((unsigned int *)t46) = t13;
    t16 = *((unsigned int *)t9);
    t17 = (t16 >> 0);
    t18 = (t17 & 1);
    *((unsigned int *)t7) = t18;
    t14 = (t0 + 2088);
    t15 = (t14 + 56U);
    t23 = *((char **)t15);
    memset(t47, 0, 8);
    t24 = (t47 + 4);
    t41 = (t23 + 4);
    t19 = *((unsigned int *)t23);
    t20 = (t19 >> 31);
    t21 = (t20 & 1);
    *((unsigned int *)t47) = t21;
    t22 = *((unsigned int *)t41);
    t25 = (t22 >> 31);
    t26 = (t25 & 1);
    *((unsigned int *)t24) = t26;
    memset(t48, 0, 8);
    t49 = (t46 + 4);
    t50 = (t47 + 4);
    t27 = *((unsigned int *)t46);
    t28 = *((unsigned int *)t47);
    t29 = (t27 ^ t28);
    t30 = *((unsigned int *)t49);
    t31 = *((unsigned int *)t50);
    t32 = (t30 ^ t31);
    t35 = (t29 | t32);
    t36 = *((unsigned int *)t49);
    t37 = *((unsigned int *)t50);
    t38 = (t36 | t37);
    t39 = (~(t38));
    t40 = (t35 & t39);
    if (t40 != 0)
        goto LAB40;

LAB37:    if (t38 != 0)
        goto LAB39;

LAB38:    *((unsigned int *)t48) = 1;

LAB40:    memset(t44, 0, 8);
    t52 = (t48 + 4);
    t53 = *((unsigned int *)t52);
    t54 = (~(t53));
    t55 = *((unsigned int *)t48);
    t56 = (t55 & t54);
    t57 = (t56 & 1U);
    if (t57 != 0)
        goto LAB41;

LAB42:    if (*((unsigned int *)t52) != 0)
        goto LAB43;

LAB44:    t59 = (t44 + 4);
    t60 = *((unsigned int *)t44);
    t61 = *((unsigned int *)t59);
    t62 = (t60 || t61);
    if (t62 > 0)
        goto LAB45;

LAB46:    t64 = *((unsigned int *)t44);
    t65 = (~(t64));
    t66 = *((unsigned int *)t59);
    t67 = (t65 || t66);
    if (t67 > 0)
        goto LAB47;

LAB48:    if (*((unsigned int *)t59) > 0)
        goto LAB49;

LAB50:    if (*((unsigned int *)t44) > 0)
        goto LAB51;

LAB52:    memcpy(t10, t68, 8);

LAB53:    t69 = (t0 + 1928);
    xsi_vlogvar_assign_value(t69, t10, 0, 0, 1);
    goto LAB29;

LAB13:    xsi_set_current_line(52, ng0);

LAB54:    xsi_set_current_line(53, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_minus(t10, 32, t4, 32, t7, 32);
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t10, 0, 0, 32);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    memset(t10, 0, 8);
    t2 = (t10 + 4);
    t7 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 31);
    t13 = (t12 & 1);
    *((unsigned int *)t10) = t13;
    t16 = *((unsigned int *)t7);
    t17 = (t16 >> 31);
    t18 = (t17 & 1);
    *((unsigned int *)t2) = t18;
    xsi_vlogtype_concat(t42, 33, 33, 2U, t10, 1, t3, 32);
    t8 = (t0 + 1208U);
    t9 = *((char **)t8);
    t8 = (t0 + 1208U);
    t14 = *((char **)t8);
    memset(t44, 0, 8);
    t8 = (t44 + 4);
    t15 = (t14 + 4);
    t19 = *((unsigned int *)t14);
    t20 = (t19 >> 31);
    t21 = (t20 & 1);
    *((unsigned int *)t44) = t21;
    t22 = *((unsigned int *)t15);
    t25 = (t22 >> 31);
    t26 = (t25 & 1);
    *((unsigned int *)t8) = t26;
    xsi_vlogtype_concat(t43, 33, 33, 2U, t44, 1, t9, 32);
    xsi_vlog_unsigned_minus(t45, 33, t42, 33, t43, 33);
    t23 = (t0 + 2088);
    xsi_vlogvar_assign_value(t23, t45, 0, 0, 33);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t46, 0, 8);
    t7 = (t46 + 4);
    t8 = (t4 + 8);
    t9 = (t4 + 12);
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 0);
    t13 = (t12 & 1);
    *((unsigned int *)t46) = t13;
    t16 = *((unsigned int *)t9);
    t17 = (t16 >> 0);
    t18 = (t17 & 1);
    *((unsigned int *)t7) = t18;
    t14 = (t0 + 2088);
    t15 = (t14 + 56U);
    t23 = *((char **)t15);
    memset(t47, 0, 8);
    t24 = (t47 + 4);
    t41 = (t23 + 4);
    t19 = *((unsigned int *)t23);
    t20 = (t19 >> 31);
    t21 = (t20 & 1);
    *((unsigned int *)t47) = t21;
    t22 = *((unsigned int *)t41);
    t25 = (t22 >> 31);
    t26 = (t25 & 1);
    *((unsigned int *)t24) = t26;
    memset(t48, 0, 8);
    t49 = (t46 + 4);
    t50 = (t47 + 4);
    t27 = *((unsigned int *)t46);
    t28 = *((unsigned int *)t47);
    t29 = (t27 ^ t28);
    t30 = *((unsigned int *)t49);
    t31 = *((unsigned int *)t50);
    t32 = (t30 ^ t31);
    t35 = (t29 | t32);
    t36 = *((unsigned int *)t49);
    t37 = *((unsigned int *)t50);
    t38 = (t36 | t37);
    t39 = (~(t38));
    t40 = (t35 & t39);
    if (t40 != 0)
        goto LAB58;

LAB55:    if (t38 != 0)
        goto LAB57;

LAB56:    *((unsigned int *)t48) = 1;

LAB58:    memset(t44, 0, 8);
    t52 = (t48 + 4);
    t53 = *((unsigned int *)t52);
    t54 = (~(t53));
    t55 = *((unsigned int *)t48);
    t56 = (t55 & t54);
    t57 = (t56 & 1U);
    if (t57 != 0)
        goto LAB59;

LAB60:    if (*((unsigned int *)t52) != 0)
        goto LAB61;

LAB62:    t59 = (t44 + 4);
    t60 = *((unsigned int *)t44);
    t61 = *((unsigned int *)t59);
    t62 = (t60 || t61);
    if (t62 > 0)
        goto LAB63;

LAB64:    t64 = *((unsigned int *)t44);
    t65 = (~(t64));
    t66 = *((unsigned int *)t59);
    t67 = (t65 || t66);
    if (t67 > 0)
        goto LAB65;

LAB66:    if (*((unsigned int *)t59) > 0)
        goto LAB67;

LAB68:    if (*((unsigned int *)t44) > 0)
        goto LAB69;

LAB70:    memcpy(t10, t68, 8);

LAB71:    t69 = (t0 + 1928);
    xsi_vlogvar_assign_value(t69, t10, 0, 0, 1);
    goto LAB29;

LAB15:    xsi_set_current_line(57, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    *((unsigned int *)t10) = t13;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t9 = (t10 + 4);
    t16 = *((unsigned int *)t3);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    *((unsigned int *)t9) = t18;
    t19 = *((unsigned int *)t9);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB72;

LAB73:
LAB74:    t14 = (t0 + 1768);
    xsi_vlogvar_assign_value(t14, t10, 0, 0, 32);
    goto LAB29;

LAB17:    xsi_set_current_line(58, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t7);
    t13 = (t11 | t12);
    *((unsigned int *)t44) = t13;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t9 = (t44 + 4);
    t16 = *((unsigned int *)t3);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    *((unsigned int *)t9) = t18;
    t19 = *((unsigned int *)t9);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB75;

LAB76:
LAB77:    memset(t10, 0, 8);
    t23 = (t10 + 4);
    t24 = (t44 + 4);
    t37 = *((unsigned int *)t44);
    t38 = (~(t37));
    *((unsigned int *)t10) = t38;
    *((unsigned int *)t23) = 0;
    if (*((unsigned int *)t24) != 0)
        goto LAB79;

LAB78:    t55 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t55 & 4294967295U);
    t56 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t56 & 4294967295U);
    t41 = (t0 + 1768);
    xsi_vlogvar_assign_value(t41, t10, 0, 0, 32);
    goto LAB29;

LAB19:    xsi_set_current_line(59, ng0);

LAB80:    xsi_set_current_line(60, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t46, 0, 8);
    xsi_vlog_signed_less(t46, 32, t4, 32, t7, 32);
    t3 = (t46 + 4);
    t11 = *((unsigned int *)t3);
    t12 = (~(t11));
    t13 = *((unsigned int *)t46);
    t16 = (t13 & t12);
    t17 = (t16 != 0);
    if (t17 > 0)
        goto LAB81;

LAB82:    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB83:    goto LAB29;

LAB21:    xsi_set_current_line(63, ng0);

LAB84:    xsi_set_current_line(64, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng1)));
    xsi_vlogtype_concat(t42, 33, 33, 2U, t3, 1, t4, 32);
    t7 = (t0 + 1208U);
    t8 = *((char **)t7);
    t7 = ((char*)((ng1)));
    xsi_vlogtype_concat(t43, 33, 33, 2U, t7, 1, t8, 32);
    xsi_vlog_unsigned_less(t45, 33, t42, 33, t43, 33);
    t9 = (t45 + 4);
    t11 = *((unsigned int *)t9);
    t12 = (~(t11));
    t13 = *((unsigned int *)t45);
    t16 = (t13 & t12);
    t17 = (t16 != 0);
    if (t17 > 0)
        goto LAB85;

LAB86:    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB87:    goto LAB29;

LAB23:    xsi_set_current_line(67, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1048U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    t3 = (t10 + 4);
    t8 = (t7 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 0);
    *((unsigned int *)t10) = t12;
    t13 = *((unsigned int *)t8);
    t16 = (t13 >> 0);
    *((unsigned int *)t3) = t16;
    t17 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t17 & 31U);
    t18 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t18 & 31U);
    memset(t44, 0, 8);
    xsi_vlog_unsigned_lshift(t44, 32, t4, 32, t10, 5);
    t9 = (t0 + 1768);
    xsi_vlogvar_assign_value(t9, t44, 0, 0, 32);
    goto LAB29;

LAB25:    xsi_set_current_line(68, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1048U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    t3 = (t10 + 4);
    t8 = (t7 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 0);
    *((unsigned int *)t10) = t12;
    t13 = *((unsigned int *)t8);
    t16 = (t13 >> 0);
    *((unsigned int *)t3) = t16;
    t17 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t17 & 31U);
    t18 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t18 & 31U);
    memset(t44, 0, 8);
    xsi_vlog_unsigned_rshift(t44, 32, t4, 32, t10, 5);
    t9 = (t0 + 1768);
    xsi_vlogvar_assign_value(t9, t44, 0, 0, 32);
    goto LAB29;

LAB27:    xsi_set_current_line(69, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1048U);
    t7 = *((char **)t3);
    memset(t44, 0, 8);
    t3 = (t44 + 4);
    t8 = (t7 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 0);
    *((unsigned int *)t44) = t12;
    t13 = *((unsigned int *)t8);
    t16 = (t13 >> 0);
    *((unsigned int *)t3) = t16;
    t17 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t17 & 31U);
    t18 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t18 & 31U);
    memset(t46, 0, 8);
    xsi_vlog_signed_arith_rshift(t46, 32, t4, 32, t44, 5);
    t9 = (t0 + 1768);
    xsi_vlogvar_assign_value(t9, t46, 0, 0, 32);
    goto LAB29;

LAB30:    t21 = *((unsigned int *)t10);
    t22 = *((unsigned int *)t15);
    *((unsigned int *)t10) = (t21 | t22);
    t23 = (t8 + 4);
    t24 = (t9 + 4);
    t25 = *((unsigned int *)t8);
    t26 = (~(t25));
    t27 = *((unsigned int *)t23);
    t28 = (~(t27));
    t29 = *((unsigned int *)t9);
    t30 = (~(t29));
    t31 = *((unsigned int *)t24);
    t32 = (~(t31));
    t33 = (t26 & t28);
    t34 = (t30 & t32);
    t35 = (~(t33));
    t36 = (~(t34));
    t37 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t37 & t35);
    t38 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t38 & t36);
    t39 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t39 & t35);
    t40 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t40 & t36);
    goto LAB32;

LAB33:    t21 = *((unsigned int *)t10);
    t22 = *((unsigned int *)t9);
    *((unsigned int *)t10) = (t21 | t22);
    t14 = (t4 + 4);
    t15 = (t7 + 4);
    t25 = *((unsigned int *)t14);
    t26 = (~(t25));
    t27 = *((unsigned int *)t4);
    t33 = (t27 & t26);
    t28 = *((unsigned int *)t15);
    t29 = (~(t28));
    t30 = *((unsigned int *)t7);
    t34 = (t30 & t29);
    t31 = (~(t33));
    t32 = (~(t34));
    t35 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t35 & t31);
    t36 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t36 & t32);
    goto LAB35;

LAB39:    t51 = (t48 + 4);
    *((unsigned int *)t48) = 1;
    *((unsigned int *)t51) = 1;
    goto LAB40;

LAB41:    *((unsigned int *)t44) = 1;
    goto LAB44;

LAB43:    t58 = (t44 + 4);
    *((unsigned int *)t44) = 1;
    *((unsigned int *)t58) = 1;
    goto LAB44;

LAB45:    t63 = ((char*)((ng4)));
    goto LAB46;

LAB47:    t68 = ((char*)((ng5)));
    goto LAB48;

LAB49:    xsi_vlog_unsigned_bit_combine(t10, 32, t63, 32, t68, 32);
    goto LAB53;

LAB51:    memcpy(t10, t63, 8);
    goto LAB53;

LAB57:    t51 = (t48 + 4);
    *((unsigned int *)t48) = 1;
    *((unsigned int *)t51) = 1;
    goto LAB58;

LAB59:    *((unsigned int *)t44) = 1;
    goto LAB62;

LAB61:    t58 = (t44 + 4);
    *((unsigned int *)t44) = 1;
    *((unsigned int *)t58) = 1;
    goto LAB62;

LAB63:    t63 = ((char*)((ng4)));
    goto LAB64;

LAB65:    t68 = ((char*)((ng5)));
    goto LAB66;

LAB67:    xsi_vlog_unsigned_bit_combine(t10, 32, t63, 32, t68, 32);
    goto LAB71;

LAB69:    memcpy(t10, t63, 8);
    goto LAB71;

LAB72:    t21 = *((unsigned int *)t10);
    t22 = *((unsigned int *)t9);
    *((unsigned int *)t10) = (t21 | t22);
    goto LAB74;

LAB75:    t21 = *((unsigned int *)t44);
    t22 = *((unsigned int *)t9);
    *((unsigned int *)t44) = (t21 | t22);
    t14 = (t4 + 4);
    t15 = (t7 + 4);
    t25 = *((unsigned int *)t14);
    t26 = (~(t25));
    t27 = *((unsigned int *)t4);
    t33 = (t27 & t26);
    t28 = *((unsigned int *)t15);
    t29 = (~(t28));
    t30 = *((unsigned int *)t7);
    t34 = (t30 & t29);
    t31 = (~(t33));
    t32 = (~(t34));
    t35 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t35 & t31);
    t36 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t36 & t32);
    goto LAB77;

LAB79:    t39 = *((unsigned int *)t10);
    t40 = *((unsigned int *)t24);
    *((unsigned int *)t10) = (t39 | t40);
    t53 = *((unsigned int *)t23);
    t54 = *((unsigned int *)t24);
    *((unsigned int *)t23) = (t53 | t54);
    goto LAB78;

LAB81:    xsi_set_current_line(60, ng0);
    t8 = ((char*)((ng2)));
    t9 = (t0 + 1768);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 32);
    goto LAB83;

LAB85:    xsi_set_current_line(64, ng0);
    t14 = ((char*)((ng2)));
    t15 = (t0 + 1768);
    xsi_vlogvar_assign_value(t15, t14, 0, 0, 32);
    goto LAB87;

}


extern void work_m_00000000002866159840_2725559894_init()
{
	static char *pe[] = {(void *)Always_43_0};
	xsi_register_didat("work_m_00000000002866159840_2725559894", "isim/mips_isim_beh.exe.sim/work/m_00000000002866159840_2725559894.didat");
	xsi_register_executes(pe);
}
