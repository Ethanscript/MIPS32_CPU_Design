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
static const char *ng0 = "C:/Users/Ethan/Desktop/Zsk/alu.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {2U, 0U};
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
    char t8[8];
    char t40[16];
    char t41[16];
    char t42[8];
    char t43[16];
    char t44[8];
    char t45[8];
    char t48[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t46;
    char *t47;
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
    t4 = ((char*)((ng1)));
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);

LAB6:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB27;

LAB28:
LAB29:    goto LAB2;

LAB7:    xsi_set_current_line(46, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 & t10);
    *((unsigned int *)t8) = t11;
    t4 = (t5 + 4);
    t12 = (t7 + 4);
    t13 = (t8 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t12);
    t16 = (t14 | t15);
    *((unsigned int *)t13) = t16;
    t17 = *((unsigned int *)t13);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB30;

LAB31:
LAB32:    t39 = (t0 + 1768);
    xsi_vlogvar_assign_value(t39, t8, 0, 0, 32);
    goto LAB29;

LAB9:    xsi_set_current_line(47, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 | t10);
    *((unsigned int *)t8) = t11;
    t4 = (t5 + 4);
    t12 = (t7 + 4);
    t13 = (t8 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t12);
    t16 = (t14 | t15);
    *((unsigned int *)t13) = t16;
    t17 = *((unsigned int *)t13);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB33;

LAB34:
LAB35:    t39 = (t0 + 1768);
    xsi_vlogvar_assign_value(t39, t8, 0, 0, 32);
    goto LAB29;

LAB11:    xsi_set_current_line(48, ng0);

LAB36:    xsi_set_current_line(49, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t5, 32, t7, 32);
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t8, 0, 0, 32);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t2 = (t0 + 1048U);
    t5 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t8 + 4);
    t7 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 31);
    t11 = (t10 & 1);
    *((unsigned int *)t8) = t11;
    t14 = *((unsigned int *)t7);
    t15 = (t14 >> 31);
    t16 = (t15 & 1);
    *((unsigned int *)t2) = t16;
    xsi_vlogtype_concat(t40, 33, 33, 2U, t8, 1, t4, 32);
    t12 = (t0 + 1208U);
    t13 = *((char **)t12);
    t12 = (t0 + 1208U);
    t21 = *((char **)t12);
    memset(t42, 0, 8);
    t12 = (t42 + 4);
    t22 = (t21 + 4);
    t17 = *((unsigned int *)t21);
    t18 = (t17 >> 31);
    t19 = (t18 & 1);
    *((unsigned int *)t42) = t19;
    t20 = *((unsigned int *)t22);
    t23 = (t20 >> 31);
    t24 = (t23 & 1);
    *((unsigned int *)t12) = t24;
    xsi_vlogtype_concat(t41, 33, 33, 2U, t42, 1, t13, 32);
    xsi_vlog_unsigned_add(t43, 33, t40, 33, t41, 33);
    t39 = (t0 + 2088);
    xsi_vlogvar_assign_value(t39, t43, 0, 0, 33);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 2088);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t44, 0, 8);
    t7 = (t44 + 4);
    t12 = (t5 + 8);
    t13 = (t5 + 12);
    t9 = *((unsigned int *)t12);
    t10 = (t9 >> 0);
    t11 = (t10 & 1);
    *((unsigned int *)t44) = t11;
    t14 = *((unsigned int *)t13);
    t15 = (t14 >> 0);
    t16 = (t15 & 1);
    *((unsigned int *)t7) = t16;
    t21 = (t0 + 2088);
    t22 = (t21 + 56U);
    t39 = *((char **)t22);
    memset(t45, 0, 8);
    t46 = (t45 + 4);
    t47 = (t39 + 4);
    t17 = *((unsigned int *)t39);
    t18 = (t17 >> 31);
    t19 = (t18 & 1);
    *((unsigned int *)t45) = t19;
    t20 = *((unsigned int *)t47);
    t23 = (t20 >> 31);
    t24 = (t23 & 1);
    *((unsigned int *)t46) = t24;
    memset(t48, 0, 8);
    t49 = (t44 + 4);
    t50 = (t45 + 4);
    t25 = *((unsigned int *)t44);
    t26 = *((unsigned int *)t45);
    t27 = (t25 ^ t26);
    t28 = *((unsigned int *)t49);
    t29 = *((unsigned int *)t50);
    t30 = (t28 ^ t29);
    t33 = (t27 | t30);
    t34 = *((unsigned int *)t49);
    t35 = *((unsigned int *)t50);
    t36 = (t34 | t35);
    t37 = (~(t36));
    t38 = (t33 & t37);
    if (t38 != 0)
        goto LAB40;

LAB37:    if (t36 != 0)
        goto LAB39;

LAB38:    *((unsigned int *)t48) = 1;

LAB40:    memset(t42, 0, 8);
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

LAB44:    t59 = (t42 + 4);
    t60 = *((unsigned int *)t42);
    t61 = *((unsigned int *)t59);
    t62 = (t60 || t61);
    if (t62 > 0)
        goto LAB45;

LAB46:    t64 = *((unsigned int *)t42);
    t65 = (~(t64));
    t66 = *((unsigned int *)t59);
    t67 = (t65 || t66);
    if (t67 > 0)
        goto LAB47;

LAB48:    if (*((unsigned int *)t59) > 0)
        goto LAB49;

LAB50:    if (*((unsigned int *)t42) > 0)
        goto LAB51;

LAB52:    memcpy(t8, t68, 8);

LAB53:    t69 = (t0 + 1928);
    xsi_vlogvar_assign_value(t69, t8, 0, 0, 1);
    goto LAB29;

LAB13:    xsi_set_current_line(53, ng0);

LAB54:    xsi_set_current_line(54, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_minus(t8, 32, t5, 32, t7, 32);
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t8, 0, 0, 32);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t2 = (t0 + 1048U);
    t5 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t8 + 4);
    t7 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 31);
    t11 = (t10 & 1);
    *((unsigned int *)t8) = t11;
    t14 = *((unsigned int *)t7);
    t15 = (t14 >> 31);
    t16 = (t15 & 1);
    *((unsigned int *)t2) = t16;
    xsi_vlogtype_concat(t40, 33, 33, 2U, t8, 1, t4, 32);
    t12 = (t0 + 1208U);
    t13 = *((char **)t12);
    t12 = (t0 + 1208U);
    t21 = *((char **)t12);
    memset(t42, 0, 8);
    t12 = (t42 + 4);
    t22 = (t21 + 4);
    t17 = *((unsigned int *)t21);
    t18 = (t17 >> 31);
    t19 = (t18 & 1);
    *((unsigned int *)t42) = t19;
    t20 = *((unsigned int *)t22);
    t23 = (t20 >> 31);
    t24 = (t23 & 1);
    *((unsigned int *)t12) = t24;
    xsi_vlogtype_concat(t41, 33, 33, 2U, t42, 1, t13, 32);
    xsi_vlog_unsigned_minus(t43, 33, t40, 33, t41, 33);
    t39 = (t0 + 2088);
    xsi_vlogvar_assign_value(t39, t43, 0, 0, 33);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2088);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t44, 0, 8);
    t7 = (t44 + 4);
    t12 = (t5 + 8);
    t13 = (t5 + 12);
    t9 = *((unsigned int *)t12);
    t10 = (t9 >> 0);
    t11 = (t10 & 1);
    *((unsigned int *)t44) = t11;
    t14 = *((unsigned int *)t13);
    t15 = (t14 >> 0);
    t16 = (t15 & 1);
    *((unsigned int *)t7) = t16;
    t21 = (t0 + 2088);
    t22 = (t21 + 56U);
    t39 = *((char **)t22);
    memset(t45, 0, 8);
    t46 = (t45 + 4);
    t47 = (t39 + 4);
    t17 = *((unsigned int *)t39);
    t18 = (t17 >> 31);
    t19 = (t18 & 1);
    *((unsigned int *)t45) = t19;
    t20 = *((unsigned int *)t47);
    t23 = (t20 >> 31);
    t24 = (t23 & 1);
    *((unsigned int *)t46) = t24;
    memset(t48, 0, 8);
    t49 = (t44 + 4);
    t50 = (t45 + 4);
    t25 = *((unsigned int *)t44);
    t26 = *((unsigned int *)t45);
    t27 = (t25 ^ t26);
    t28 = *((unsigned int *)t49);
    t29 = *((unsigned int *)t50);
    t30 = (t28 ^ t29);
    t33 = (t27 | t30);
    t34 = *((unsigned int *)t49);
    t35 = *((unsigned int *)t50);
    t36 = (t34 | t35);
    t37 = (~(t36));
    t38 = (t33 & t37);
    if (t38 != 0)
        goto LAB58;

LAB55:    if (t36 != 0)
        goto LAB57;

LAB56:    *((unsigned int *)t48) = 1;

LAB58:    memset(t42, 0, 8);
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

LAB62:    t59 = (t42 + 4);
    t60 = *((unsigned int *)t42);
    t61 = *((unsigned int *)t59);
    t62 = (t60 || t61);
    if (t62 > 0)
        goto LAB63;

LAB64:    t64 = *((unsigned int *)t42);
    t65 = (~(t64));
    t66 = *((unsigned int *)t59);
    t67 = (t65 || t66);
    if (t67 > 0)
        goto LAB65;

LAB66:    if (*((unsigned int *)t59) > 0)
        goto LAB67;

LAB68:    if (*((unsigned int *)t42) > 0)
        goto LAB69;

LAB70:    memcpy(t8, t68, 8);

LAB71:    t69 = (t0 + 1928);
    xsi_vlogvar_assign_value(t69, t8, 0, 0, 1);
    goto LAB29;

LAB15:    xsi_set_current_line(58, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 ^ t10);
    *((unsigned int *)t8) = t11;
    t4 = (t5 + 4);
    t12 = (t7 + 4);
    t13 = (t8 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t12);
    t16 = (t14 | t15);
    *((unsigned int *)t13) = t16;
    t17 = *((unsigned int *)t13);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB72;

LAB73:
LAB74:    t21 = (t0 + 1768);
    xsi_vlogvar_assign_value(t21, t8, 0, 0, 32);
    goto LAB29;

LAB17:    xsi_set_current_line(59, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 | t10);
    *((unsigned int *)t42) = t11;
    t4 = (t5 + 4);
    t12 = (t7 + 4);
    t13 = (t42 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t12);
    t16 = (t14 | t15);
    *((unsigned int *)t13) = t16;
    t17 = *((unsigned int *)t13);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB75;

LAB76:
LAB77:    memset(t8, 0, 8);
    t39 = (t8 + 4);
    t46 = (t42 + 4);
    t35 = *((unsigned int *)t42);
    t36 = (~(t35));
    *((unsigned int *)t8) = t36;
    *((unsigned int *)t39) = 0;
    if (*((unsigned int *)t46) != 0)
        goto LAB79;

LAB78:    t55 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t55 & 4294967295U);
    t56 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t56 & 4294967295U);
    t47 = (t0 + 1768);
    xsi_vlogvar_assign_value(t47, t8, 0, 0, 32);
    goto LAB29;

LAB19:    xsi_set_current_line(60, ng0);

LAB80:    xsi_set_current_line(61, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    memset(t44, 0, 8);
    xsi_vlog_signed_less(t44, 32, t5, 32, t7, 32);
    t4 = (t44 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (~(t9));
    t11 = *((unsigned int *)t44);
    t14 = (t11 & t10);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB81;

LAB82:    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 32);

LAB83:    goto LAB29;

LAB21:    xsi_set_current_line(64, ng0);

LAB84:    xsi_set_current_line(65, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng2)));
    xsi_vlogtype_concat(t40, 33, 33, 2U, t4, 1, t5, 32);
    t7 = (t0 + 1208U);
    t12 = *((char **)t7);
    t7 = ((char*)((ng2)));
    xsi_vlogtype_concat(t41, 33, 33, 2U, t7, 1, t12, 32);
    xsi_vlog_unsigned_less(t43, 33, t40, 33, t41, 33);
    t13 = (t43 + 4);
    t9 = *((unsigned int *)t13);
    t10 = (~(t9));
    t11 = *((unsigned int *)t43);
    t14 = (t11 & t10);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB85;

LAB86:    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 32);

LAB87:    goto LAB29;

LAB23:    xsi_set_current_line(68, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t0 + 1048U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    t4 = (t8 + 4);
    t12 = (t7 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (t9 >> 0);
    *((unsigned int *)t8) = t10;
    t11 = *((unsigned int *)t12);
    t14 = (t11 >> 0);
    *((unsigned int *)t4) = t14;
    t15 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t15 & 31U);
    t16 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t16 & 31U);
    memset(t42, 0, 8);
    xsi_vlog_unsigned_lshift(t42, 32, t5, 32, t8, 5);
    t13 = (t0 + 1768);
    xsi_vlogvar_assign_value(t13, t42, 0, 0, 32);
    goto LAB29;

LAB25:    xsi_set_current_line(69, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t0 + 1048U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    t4 = (t8 + 4);
    t12 = (t7 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (t9 >> 0);
    *((unsigned int *)t8) = t10;
    t11 = *((unsigned int *)t12);
    t14 = (t11 >> 0);
    *((unsigned int *)t4) = t14;
    t15 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t15 & 31U);
    t16 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t16 & 31U);
    memset(t42, 0, 8);
    xsi_vlog_unsigned_rshift(t42, 32, t5, 32, t8, 5);
    t13 = (t0 + 1768);
    xsi_vlogvar_assign_value(t13, t42, 0, 0, 32);
    goto LAB29;

LAB27:    xsi_set_current_line(70, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t0 + 1048U);
    t7 = *((char **)t4);
    memset(t42, 0, 8);
    t4 = (t42 + 4);
    t12 = (t7 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (t9 >> 0);
    *((unsigned int *)t42) = t10;
    t11 = *((unsigned int *)t12);
    t14 = (t11 >> 0);
    *((unsigned int *)t4) = t14;
    t15 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t15 & 31U);
    t16 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t16 & 31U);
    memset(t44, 0, 8);
    xsi_vlog_signed_arith_rshift(t44, 32, t5, 32, t42, 5);
    t13 = (t0 + 1768);
    xsi_vlogvar_assign_value(t13, t44, 0, 0, 32);
    goto LAB29;

LAB30:    t19 = *((unsigned int *)t8);
    t20 = *((unsigned int *)t13);
    *((unsigned int *)t8) = (t19 | t20);
    t21 = (t5 + 4);
    t22 = (t7 + 4);
    t23 = *((unsigned int *)t5);
    t24 = (~(t23));
    t25 = *((unsigned int *)t21);
    t26 = (~(t25));
    t27 = *((unsigned int *)t7);
    t28 = (~(t27));
    t29 = *((unsigned int *)t22);
    t30 = (~(t29));
    t31 = (t24 & t26);
    t32 = (t28 & t30);
    t33 = (~(t31));
    t34 = (~(t32));
    t35 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t35 & t33);
    t36 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t36 & t34);
    t37 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t37 & t33);
    t38 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t38 & t34);
    goto LAB32;

LAB33:    t19 = *((unsigned int *)t8);
    t20 = *((unsigned int *)t13);
    *((unsigned int *)t8) = (t19 | t20);
    t21 = (t5 + 4);
    t22 = (t7 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t5);
    t31 = (t25 & t24);
    t26 = *((unsigned int *)t22);
    t27 = (~(t26));
    t28 = *((unsigned int *)t7);
    t32 = (t28 & t27);
    t29 = (~(t31));
    t30 = (~(t32));
    t33 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t33 & t29);
    t34 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t34 & t30);
    goto LAB35;

LAB39:    t51 = (t48 + 4);
    *((unsigned int *)t48) = 1;
    *((unsigned int *)t51) = 1;
    goto LAB40;

LAB41:    *((unsigned int *)t42) = 1;
    goto LAB44;

LAB43:    t58 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t58) = 1;
    goto LAB44;

LAB45:    t63 = ((char*)((ng1)));
    goto LAB46;

LAB47:    t68 = ((char*)((ng5)));
    goto LAB48;

LAB49:    xsi_vlog_unsigned_bit_combine(t8, 32, t63, 32, t68, 32);
    goto LAB53;

LAB51:    memcpy(t8, t63, 8);
    goto LAB53;

LAB57:    t51 = (t48 + 4);
    *((unsigned int *)t48) = 1;
    *((unsigned int *)t51) = 1;
    goto LAB58;

LAB59:    *((unsigned int *)t42) = 1;
    goto LAB62;

LAB61:    t58 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t58) = 1;
    goto LAB62;

LAB63:    t63 = ((char*)((ng1)));
    goto LAB64;

LAB65:    t68 = ((char*)((ng5)));
    goto LAB66;

LAB67:    xsi_vlog_unsigned_bit_combine(t8, 32, t63, 32, t68, 32);
    goto LAB71;

LAB69:    memcpy(t8, t63, 8);
    goto LAB71;

LAB72:    t19 = *((unsigned int *)t8);
    t20 = *((unsigned int *)t13);
    *((unsigned int *)t8) = (t19 | t20);
    goto LAB74;

LAB75:    t19 = *((unsigned int *)t42);
    t20 = *((unsigned int *)t13);
    *((unsigned int *)t42) = (t19 | t20);
    t21 = (t5 + 4);
    t22 = (t7 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t5);
    t31 = (t25 & t24);
    t26 = *((unsigned int *)t22);
    t27 = (~(t26));
    t28 = *((unsigned int *)t7);
    t32 = (t28 & t27);
    t29 = (~(t31));
    t30 = (~(t32));
    t33 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t33 & t29);
    t34 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t34 & t30);
    goto LAB77;

LAB79:    t37 = *((unsigned int *)t8);
    t38 = *((unsigned int *)t46);
    *((unsigned int *)t8) = (t37 | t38);
    t53 = *((unsigned int *)t39);
    t54 = *((unsigned int *)t46);
    *((unsigned int *)t39) = (t53 | t54);
    goto LAB78;

LAB81:    xsi_set_current_line(61, ng0);
    t12 = ((char*)((ng3)));
    t13 = (t0 + 1768);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 32);
    goto LAB83;

LAB85:    xsi_set_current_line(65, ng0);
    t21 = ((char*)((ng3)));
    t22 = (t0 + 1768);
    xsi_vlogvar_assign_value(t22, t21, 0, 0, 32);
    goto LAB87;

}


extern void work_m_00000000002866159840_2725559894_init()
{
	static char *pe[] = {(void *)Always_43_0};
	xsi_register_didat("work_m_00000000002866159840_2725559894", "isim/test_mips_isim_beh.exe.sim/work/m_00000000002866159840_2725559894.didat");
	xsi_register_executes(pe);
}
