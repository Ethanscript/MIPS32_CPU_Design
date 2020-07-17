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
static const char *ng0 = "C:/Users/Ethan/Desktop/Zsk/dm.v";
static int ng1[] = {0, 0};
static int ng2[] = {4095, 0};
static int ng3[] = {1, 0};
static int ng4[] = {4096, 0};
static unsigned int ng5[] = {0U, 0U};
static unsigned int ng6[] = {32512U, 0U};
static unsigned int ng7[] = {32523U, 0U};
static unsigned int ng8[] = {32528U, 0U};
static unsigned int ng9[] = {32539U, 0U};
static const char *ng10 = "%d@%h: *%h <= %h";
static unsigned int ng11[] = {1U, 0U};
static int ng12[] = {7, 0};
static int ng13[] = {15, 0};
static int ng14[] = {8, 0};
static unsigned int ng15[] = {2U, 0U};
static int ng16[] = {23, 0};
static int ng17[] = {16, 0};
static unsigned int ng18[] = {3U, 0U};
static int ng19[] = {31, 0};
static int ng20[] = {24, 0};



static void Initial_53_0(char *t0)
{
    char t5[8];
    char t14[8];
    char t15[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    int t27;
    char *t28;
    unsigned int t29;
    int t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    int t34;
    int t35;

LAB0:    xsi_set_current_line(53, ng0);

LAB2:    xsi_set_current_line(54, ng0);
    xsi_set_current_line(54, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2728);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB3:    t1 = (t0 + 2728);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng2)));
    memset(t5, 0, 8);
    xsi_vlog_signed_leq(t5, 32, t3, 32, t4, 32);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    xsi_set_current_line(54, ng0);

LAB6:    xsi_set_current_line(55, ng0);
    t12 = ((char*)((ng1)));
    t13 = (t0 + 2568);
    t16 = (t0 + 2568);
    t17 = (t16 + 72U);
    t18 = *((char **)t17);
    t19 = (t0 + 2568);
    t20 = (t19 + 64U);
    t21 = *((char **)t20);
    t22 = (t0 + 2728);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    xsi_vlog_generic_convert_array_indices(t14, t15, t18, t21, 2, 1, t24, 32, 1);
    t25 = (t14 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (!(t26));
    t28 = (t15 + 4);
    t29 = *((unsigned int *)t28);
    t30 = (!(t29));
    t31 = (t27 && t30);
    if (t31 == 1)
        goto LAB7;

LAB8:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 2728);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng3)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t3, 32, t4, 32);
    t6 = (t0 + 2728);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 32);
    goto LAB3;

LAB7:    t32 = *((unsigned int *)t14);
    t33 = *((unsigned int *)t15);
    t34 = (t32 - t33);
    t35 = (t34 + 1);
    xsi_vlogvar_assign_value(t13, t12, 0, *((unsigned int *)t15), t35);
    goto LAB8;

}

static void Cont_59_1(char *t0)
{
    char t5[8];
    char t12[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    t1 = (t0 + 3896U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 2568);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 2568);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t13 = (t0 + 1048U);
    t14 = *((char **)t13);
    memset(t12, 0, 8);
    t13 = (t12 + 4);
    t15 = (t14 + 4);
    t16 = *((unsigned int *)t14);
    t17 = (t16 >> 2);
    *((unsigned int *)t12) = t17;
    t18 = *((unsigned int *)t15);
    t19 = (t18 >> 2);
    *((unsigned int *)t13) = t19;
    t20 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t20 & 4095U);
    t21 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t21 & 4095U);
    xsi_vlog_generic_get_array_select_value(t5, 32, t4, t8, t11, 2, 1, t12, 12, 2);
    t22 = (t0 + 4560);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t5, 8);
    xsi_driver_vfirst_trans(t22, 0, 31);
    t27 = (t0 + 4464);
    *((int *)t27) = 1;

LAB1:    return;
}

static void Always_61_2(char *t0)
{
    char t6[8];
    char t30[8];
    char t31[8];
    char t54[8];
    char t55[8];
    char t61[8];
    char t100[8];
    char t101[8];
    char t108[8];
    char t127[8];
    char t129[8];
    char t148[8];
    char t156[8];
    char t188[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
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
    char *t28;
    char *t29;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    int t39;
    char *t40;
    int t41;
    int t42;
    int t43;
    int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    char *t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    char *t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    char *t96;
    char *t97;
    char *t98;
    char *t99;
    char *t102;
    char *t103;
    char *t104;
    char *t105;
    char *t106;
    char *t107;
    char *t109;
    char *t110;
    char *t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    char *t118;
    unsigned int t119;
    char *t120;
    unsigned int t121;
    int t122;
    unsigned int t123;
    unsigned int t124;
    int t125;
    int t126;
    char *t128;
    char *t130;
    char *t131;
    char *t132;
    char *t133;
    char *t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    char *t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    char *t155;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    char *t160;
    char *t161;
    char *t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    unsigned int t166;
    unsigned int t167;
    unsigned int t168;
    unsigned int t169;
    char *t170;
    char *t171;
    unsigned int t172;
    unsigned int t173;
    unsigned int t174;
    unsigned int t175;
    unsigned int t176;
    unsigned int t177;
    unsigned int t178;
    unsigned int t179;
    unsigned int t180;
    unsigned int t181;
    char *t182;
    unsigned int t183;
    unsigned int t184;
    unsigned int t185;
    unsigned int t186;
    unsigned int t187;
    char *t189;
    char *t190;
    char *t191;
    char *t192;
    char *t193;
    int t194;
    int t195;
    int t196;
    int t197;
    int t198;
    int t199;
    int t200;

LAB0:    t1 = (t0 + 4144U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 4480);
    *((int *)t2) = 1;
    t3 = (t0 + 4176);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(61, ng0);

LAB5:    xsi_set_current_line(62, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(67, ng0);

LAB20:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB24;

LAB21:    if (t18 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t6) = 1;

LAB24:    memset(t30, 0, 8);
    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t8) != 0)
        goto LAB27;

LAB28:    t22 = (t30 + 4);
    t45 = *((unsigned int *)t30);
    t46 = *((unsigned int *)t22);
    t47 = (t45 || t46);
    if (t47 > 0)
        goto LAB29;

LAB30:    memcpy(t61, t30, 8);

LAB31:    t90 = (t61 + 4);
    t91 = *((unsigned int *)t90);
    t92 = (~(t91));
    t93 = *((unsigned int *)t61);
    t94 = (t93 & t92);
    t95 = (t94 != 0);
    if (t95 > 0)
        goto LAB44;

LAB45:
LAB46:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(62, ng0);

LAB13:    xsi_set_current_line(63, ng0);
    xsi_set_current_line(63, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 2728);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 32);

LAB14:    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_signed_leq(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB15;

LAB16:    goto LAB12;

LAB15:    xsi_set_current_line(63, ng0);

LAB17:    xsi_set_current_line(64, ng0);
    t8 = ((char*)((ng1)));
    t21 = (t0 + 2568);
    t22 = (t0 + 2568);
    t28 = (t22 + 72U);
    t29 = *((char **)t28);
    t32 = (t0 + 2568);
    t33 = (t32 + 64U);
    t34 = *((char **)t33);
    t35 = (t0 + 2728);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    xsi_vlog_generic_convert_array_indices(t30, t31, t29, t34, 2, 1, t37, 32, 1);
    t38 = (t30 + 4);
    t14 = *((unsigned int *)t38);
    t39 = (!(t14));
    t40 = (t31 + 4);
    t15 = *((unsigned int *)t40);
    t41 = (!(t15));
    t42 = (t39 && t41);
    if (t42 == 1)
        goto LAB18;

LAB19:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 2728);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB14;

LAB18:    t16 = *((unsigned int *)t30);
    t17 = *((unsigned int *)t31);
    t43 = (t16 - t17);
    t44 = (t43 + 1);
    xsi_vlogvar_assign_value(t21, t8, 0, *((unsigned int *)t31), t44);
    goto LAB19;

LAB23:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t30) = 1;
    goto LAB28;

LAB27:    t21 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB28;

LAB29:    t28 = (t0 + 1048U);
    t29 = *((char **)t28);
    memset(t31, 0, 8);
    t28 = (t31 + 4);
    t32 = (t29 + 4);
    t48 = *((unsigned int *)t29);
    t49 = (t48 >> 2);
    *((unsigned int *)t31) = t49;
    t50 = *((unsigned int *)t32);
    t51 = (t50 >> 2);
    *((unsigned int *)t28) = t51;
    t52 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t52 & 4095U);
    t53 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t53 & 4095U);
    t33 = ((char*)((ng4)));
    memset(t54, 0, 8);
    t34 = (t31 + 4);
    if (*((unsigned int *)t34) != 0)
        goto LAB33;

LAB32:    t35 = (t33 + 4);
    if (*((unsigned int *)t35) != 0)
        goto LAB33;

LAB36:    if (*((unsigned int *)t31) < *((unsigned int *)t33))
        goto LAB34;

LAB35:    memset(t55, 0, 8);
    t37 = (t54 + 4);
    t56 = *((unsigned int *)t37);
    t57 = (~(t56));
    t58 = *((unsigned int *)t54);
    t59 = (t58 & t57);
    t60 = (t59 & 1U);
    if (t60 != 0)
        goto LAB37;

LAB38:    if (*((unsigned int *)t37) != 0)
        goto LAB39;

LAB40:    t62 = *((unsigned int *)t30);
    t63 = *((unsigned int *)t55);
    t64 = (t62 & t63);
    *((unsigned int *)t61) = t64;
    t40 = (t30 + 4);
    t65 = (t55 + 4);
    t66 = (t61 + 4);
    t67 = *((unsigned int *)t40);
    t68 = *((unsigned int *)t65);
    t69 = (t67 | t68);
    *((unsigned int *)t66) = t69;
    t70 = *((unsigned int *)t66);
    t71 = (t70 != 0);
    if (t71 == 1)
        goto LAB41;

LAB42:
LAB43:    goto LAB31;

LAB33:    t36 = (t54 + 4);
    *((unsigned int *)t54) = 1;
    *((unsigned int *)t36) = 1;
    goto LAB35;

LAB34:    *((unsigned int *)t54) = 1;
    goto LAB35;

LAB37:    *((unsigned int *)t55) = 1;
    goto LAB40;

LAB39:    t38 = (t55 + 4);
    *((unsigned int *)t55) = 1;
    *((unsigned int *)t38) = 1;
    goto LAB40;

LAB41:    t72 = *((unsigned int *)t61);
    t73 = *((unsigned int *)t66);
    *((unsigned int *)t61) = (t72 | t73);
    t74 = (t30 + 4);
    t75 = (t55 + 4);
    t76 = *((unsigned int *)t30);
    t77 = (~(t76));
    t78 = *((unsigned int *)t74);
    t79 = (~(t78));
    t80 = *((unsigned int *)t55);
    t81 = (~(t80));
    t82 = *((unsigned int *)t75);
    t83 = (~(t82));
    t39 = (t77 & t79);
    t41 = (t81 & t83);
    t84 = (~(t39));
    t85 = (~(t41));
    t86 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t86 & t84);
    t87 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t87 & t85);
    t88 = *((unsigned int *)t61);
    *((unsigned int *)t61) = (t88 & t84);
    t89 = *((unsigned int *)t61);
    *((unsigned int *)t61) = (t89 & t85);
    goto LAB43;

LAB44:    xsi_set_current_line(68, ng0);

LAB47:    xsi_set_current_line(69, ng0);
    t96 = (t0 + 2008U);
    t97 = *((char **)t96);

LAB48:    t96 = ((char*)((ng5)));
    t42 = xsi_vlog_unsigned_case_compare(t97, 2, t96, 2);
    if (t42 == 1)
        goto LAB49;

LAB50:    t2 = ((char*)((ng11)));
    t39 = xsi_vlog_unsigned_case_compare(t97, 2, t2, 2);
    if (t39 == 1)
        goto LAB51;

LAB52:    t2 = ((char*)((ng15)));
    t39 = xsi_vlog_unsigned_case_compare(t97, 2, t2, 2);
    if (t39 == 1)
        goto LAB53;

LAB54:
LAB55:    goto LAB46;

LAB49:    xsi_set_current_line(71, ng0);

LAB56:    xsi_set_current_line(72, ng0);
    t98 = (t0 + 1208U);
    t99 = *((char **)t98);
    t98 = (t0 + 2568);
    t102 = (t0 + 2568);
    t103 = (t102 + 72U);
    t104 = *((char **)t103);
    t105 = (t0 + 2568);
    t106 = (t105 + 64U);
    t107 = *((char **)t106);
    t109 = (t0 + 1048U);
    t110 = *((char **)t109);
    memset(t108, 0, 8);
    t109 = (t108 + 4);
    t111 = (t110 + 4);
    t112 = *((unsigned int *)t110);
    t113 = (t112 >> 2);
    *((unsigned int *)t108) = t113;
    t114 = *((unsigned int *)t111);
    t115 = (t114 >> 2);
    *((unsigned int *)t109) = t115;
    t116 = *((unsigned int *)t108);
    *((unsigned int *)t108) = (t116 & 4095U);
    t117 = *((unsigned int *)t109);
    *((unsigned int *)t109) = (t117 & 4095U);
    xsi_vlog_generic_convert_array_indices(t100, t101, t104, t107, 2, 1, t108, 12, 2);
    t118 = (t100 + 4);
    t119 = *((unsigned int *)t118);
    t43 = (!(t119));
    t120 = (t101 + 4);
    t121 = *((unsigned int *)t120);
    t44 = (!(t121));
    t122 = (t43 && t44);
    if (t122 == 1)
        goto LAB57;

LAB58:    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t3 = (t2 + 4);
    if (*((unsigned int *)t3) != 0)
        goto LAB60;

LAB59:    t5 = (t4 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB60;

LAB63:    if (*((unsigned int *)t2) > *((unsigned int *)t4))
        goto LAB62;

LAB61:    *((unsigned int *)t6) = 1;

LAB62:    memset(t30, 0, 8);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB64;

LAB65:    if (*((unsigned int *)t8) != 0)
        goto LAB66;

LAB67:    t22 = (t30 + 4);
    t14 = *((unsigned int *)t30);
    t15 = *((unsigned int *)t22);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB68;

LAB69:    memcpy(t55, t30, 8);

LAB70:    memset(t61, 0, 8);
    t74 = (t55 + 4);
    t70 = *((unsigned int *)t74);
    t71 = (~(t70));
    t72 = *((unsigned int *)t55);
    t73 = (t72 & t71);
    t76 = (t73 & 1U);
    if (t76 != 0)
        goto LAB83;

LAB84:    if (*((unsigned int *)t74) != 0)
        goto LAB85;

LAB86:    t90 = (t61 + 4);
    t77 = *((unsigned int *)t61);
    t78 = (!(t77));
    t79 = *((unsigned int *)t90);
    t80 = (t78 || t79);
    if (t80 > 0)
        goto LAB87;

LAB88:    memcpy(t156, t61, 8);

LAB89:    t182 = (t156 + 4);
    t183 = *((unsigned int *)t182);
    t184 = (~(t183));
    t185 = *((unsigned int *)t156);
    t186 = (t185 & t184);
    t187 = (t186 != 0);
    if (t187 > 0)
        goto LAB121;

LAB122:    xsi_set_current_line(75, ng0);
    t189 = xsi_vlog_time(t188, 1000.0000000000000, 1000.0000000000000);
    t190 = (t0 + 1848U);
    t191 = *((char **)t190);
    t190 = (t0 + 1048U);
    t192 = *((char **)t190);
    t190 = (t0 + 1208U);
    t193 = *((char **)t190);
    xsi_vlogfile_write(1, 0, 0, ng10, 5, t0, (char)118, t188, 64, (char)118, t191, 32, (char)118, t192, 32, (char)118, t193, 32);

LAB123:    goto LAB55;

LAB51:    xsi_set_current_line(78, ng0);

LAB124:    xsi_set_current_line(79, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t3 = (t6 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 0);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 0);
    *((unsigned int *)t3) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 3U);
    t14 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t14 & 3U);

LAB125:    t7 = ((char*)((ng5)));
    t41 = xsi_vlog_unsigned_case_compare(t6, 2, t7, 2);
    if (t41 == 1)
        goto LAB126;

LAB127:    t2 = ((char*)((ng11)));
    t39 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t39 == 1)
        goto LAB128;

LAB129:    t2 = ((char*)((ng15)));
    t39 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t39 == 1)
        goto LAB130;

LAB131:    t2 = ((char*)((ng18)));
    t39 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t39 == 1)
        goto LAB132;

LAB133:
LAB134:    goto LAB55;

LAB53:    xsi_set_current_line(103, ng0);

LAB147:    xsi_set_current_line(104, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    memset(t30, 0, 8);
    t3 = (t30 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 1);
    t11 = (t10 & 1);
    *((unsigned int *)t30) = t11;
    t12 = *((unsigned int *)t5);
    t13 = (t12 >> 1);
    t14 = (t13 & 1);
    *((unsigned int *)t3) = t14;

LAB148:    t7 = ((char*)((ng5)));
    t41 = xsi_vlog_unsigned_case_compare(t30, 1, t7, 1);
    if (t41 == 1)
        goto LAB149;

LAB150:    t2 = ((char*)((ng11)));
    t39 = xsi_vlog_unsigned_case_compare(t30, 1, t2, 1);
    if (t39 == 1)
        goto LAB151;

LAB152:
LAB153:    goto LAB55;

LAB57:    t123 = *((unsigned int *)t100);
    t124 = *((unsigned int *)t101);
    t125 = (t123 - t124);
    t126 = (t125 + 1);
    xsi_vlogvar_wait_assign_value(t98, t99, 0, *((unsigned int *)t101), t126, 0LL);
    goto LAB58;

LAB60:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB62;

LAB64:    *((unsigned int *)t30) = 1;
    goto LAB67;

LAB66:    t21 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB67;

LAB68:    t28 = (t0 + 1048U);
    t29 = *((char **)t28);
    t28 = ((char*)((ng7)));
    memset(t31, 0, 8);
    t32 = (t29 + 4);
    if (*((unsigned int *)t32) != 0)
        goto LAB72;

LAB71:    t33 = (t28 + 4);
    if (*((unsigned int *)t33) != 0)
        goto LAB72;

LAB75:    if (*((unsigned int *)t29) > *((unsigned int *)t28))
        goto LAB74;

LAB73:    *((unsigned int *)t31) = 1;

LAB74:    memset(t54, 0, 8);
    t35 = (t31 + 4);
    t17 = *((unsigned int *)t35);
    t18 = (~(t17));
    t19 = *((unsigned int *)t31);
    t20 = (t19 & t18);
    t23 = (t20 & 1U);
    if (t23 != 0)
        goto LAB76;

LAB77:    if (*((unsigned int *)t35) != 0)
        goto LAB78;

LAB79:    t24 = *((unsigned int *)t30);
    t25 = *((unsigned int *)t54);
    t26 = (t24 & t25);
    *((unsigned int *)t55) = t26;
    t37 = (t30 + 4);
    t38 = (t54 + 4);
    t40 = (t55 + 4);
    t27 = *((unsigned int *)t37);
    t45 = *((unsigned int *)t38);
    t46 = (t27 | t45);
    *((unsigned int *)t40) = t46;
    t47 = *((unsigned int *)t40);
    t48 = (t47 != 0);
    if (t48 == 1)
        goto LAB80;

LAB81:
LAB82:    goto LAB70;

LAB72:    t34 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB74;

LAB76:    *((unsigned int *)t54) = 1;
    goto LAB79;

LAB78:    t36 = (t54 + 4);
    *((unsigned int *)t54) = 1;
    *((unsigned int *)t36) = 1;
    goto LAB79;

LAB80:    t49 = *((unsigned int *)t55);
    t50 = *((unsigned int *)t40);
    *((unsigned int *)t55) = (t49 | t50);
    t65 = (t30 + 4);
    t66 = (t54 + 4);
    t51 = *((unsigned int *)t30);
    t52 = (~(t51));
    t53 = *((unsigned int *)t65);
    t56 = (~(t53));
    t57 = *((unsigned int *)t54);
    t58 = (~(t57));
    t59 = *((unsigned int *)t66);
    t60 = (~(t59));
    t39 = (t52 & t56);
    t41 = (t58 & t60);
    t62 = (~(t39));
    t63 = (~(t41));
    t64 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t64 & t62);
    t67 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t67 & t63);
    t68 = *((unsigned int *)t55);
    *((unsigned int *)t55) = (t68 & t62);
    t69 = *((unsigned int *)t55);
    *((unsigned int *)t55) = (t69 & t63);
    goto LAB82;

LAB83:    *((unsigned int *)t61) = 1;
    goto LAB86;

LAB85:    t75 = (t61 + 4);
    *((unsigned int *)t61) = 1;
    *((unsigned int *)t75) = 1;
    goto LAB86;

LAB87:    t96 = ((char*)((ng8)));
    t98 = (t0 + 1048U);
    t99 = *((char **)t98);
    memset(t100, 0, 8);
    t98 = (t96 + 4);
    if (*((unsigned int *)t98) != 0)
        goto LAB91;

LAB90:    t102 = (t99 + 4);
    if (*((unsigned int *)t102) != 0)
        goto LAB91;

LAB94:    if (*((unsigned int *)t96) > *((unsigned int *)t99))
        goto LAB93;

LAB92:    *((unsigned int *)t100) = 1;

LAB93:    memset(t101, 0, 8);
    t104 = (t100 + 4);
    t81 = *((unsigned int *)t104);
    t82 = (~(t81));
    t83 = *((unsigned int *)t100);
    t84 = (t83 & t82);
    t85 = (t84 & 1U);
    if (t85 != 0)
        goto LAB95;

LAB96:    if (*((unsigned int *)t104) != 0)
        goto LAB97;

LAB98:    t106 = (t101 + 4);
    t86 = *((unsigned int *)t101);
    t87 = *((unsigned int *)t106);
    t88 = (t86 || t87);
    if (t88 > 0)
        goto LAB99;

LAB100:    memcpy(t129, t101, 8);

LAB101:    memset(t148, 0, 8);
    t149 = (t129 + 4);
    t150 = *((unsigned int *)t149);
    t151 = (~(t150));
    t152 = *((unsigned int *)t129);
    t153 = (t152 & t151);
    t154 = (t153 & 1U);
    if (t154 != 0)
        goto LAB114;

LAB115:    if (*((unsigned int *)t149) != 0)
        goto LAB116;

LAB117:    t157 = *((unsigned int *)t61);
    t158 = *((unsigned int *)t148);
    t159 = (t157 | t158);
    *((unsigned int *)t156) = t159;
    t160 = (t61 + 4);
    t161 = (t148 + 4);
    t162 = (t156 + 4);
    t163 = *((unsigned int *)t160);
    t164 = *((unsigned int *)t161);
    t165 = (t163 | t164);
    *((unsigned int *)t162) = t165;
    t166 = *((unsigned int *)t162);
    t167 = (t166 != 0);
    if (t167 == 1)
        goto LAB118;

LAB119:
LAB120:    goto LAB89;

LAB91:    t103 = (t100 + 4);
    *((unsigned int *)t100) = 1;
    *((unsigned int *)t103) = 1;
    goto LAB93;

LAB95:    *((unsigned int *)t101) = 1;
    goto LAB98;

LAB97:    t105 = (t101 + 4);
    *((unsigned int *)t101) = 1;
    *((unsigned int *)t105) = 1;
    goto LAB98;

LAB99:    t107 = (t0 + 1048U);
    t109 = *((char **)t107);
    t107 = ((char*)((ng9)));
    memset(t108, 0, 8);
    t110 = (t109 + 4);
    if (*((unsigned int *)t110) != 0)
        goto LAB103;

LAB102:    t111 = (t107 + 4);
    if (*((unsigned int *)t111) != 0)
        goto LAB103;

LAB106:    if (*((unsigned int *)t109) > *((unsigned int *)t107))
        goto LAB105;

LAB104:    *((unsigned int *)t108) = 1;

LAB105:    memset(t127, 0, 8);
    t120 = (t108 + 4);
    t89 = *((unsigned int *)t120);
    t91 = (~(t89));
    t92 = *((unsigned int *)t108);
    t93 = (t92 & t91);
    t94 = (t93 & 1U);
    if (t94 != 0)
        goto LAB107;

LAB108:    if (*((unsigned int *)t120) != 0)
        goto LAB109;

LAB110:    t95 = *((unsigned int *)t101);
    t112 = *((unsigned int *)t127);
    t113 = (t95 & t112);
    *((unsigned int *)t129) = t113;
    t130 = (t101 + 4);
    t131 = (t127 + 4);
    t132 = (t129 + 4);
    t114 = *((unsigned int *)t130);
    t115 = *((unsigned int *)t131);
    t116 = (t114 | t115);
    *((unsigned int *)t132) = t116;
    t117 = *((unsigned int *)t132);
    t119 = (t117 != 0);
    if (t119 == 1)
        goto LAB111;

LAB112:
LAB113:    goto LAB101;

LAB103:    t118 = (t108 + 4);
    *((unsigned int *)t108) = 1;
    *((unsigned int *)t118) = 1;
    goto LAB105;

LAB107:    *((unsigned int *)t127) = 1;
    goto LAB110;

LAB109:    t128 = (t127 + 4);
    *((unsigned int *)t127) = 1;
    *((unsigned int *)t128) = 1;
    goto LAB110;

LAB111:    t121 = *((unsigned int *)t129);
    t123 = *((unsigned int *)t132);
    *((unsigned int *)t129) = (t121 | t123);
    t133 = (t101 + 4);
    t134 = (t127 + 4);
    t124 = *((unsigned int *)t101);
    t135 = (~(t124));
    t136 = *((unsigned int *)t133);
    t137 = (~(t136));
    t138 = *((unsigned int *)t127);
    t139 = (~(t138));
    t140 = *((unsigned int *)t134);
    t141 = (~(t140));
    t42 = (t135 & t137);
    t43 = (t139 & t141);
    t142 = (~(t42));
    t143 = (~(t43));
    t144 = *((unsigned int *)t132);
    *((unsigned int *)t132) = (t144 & t142);
    t145 = *((unsigned int *)t132);
    *((unsigned int *)t132) = (t145 & t143);
    t146 = *((unsigned int *)t129);
    *((unsigned int *)t129) = (t146 & t142);
    t147 = *((unsigned int *)t129);
    *((unsigned int *)t129) = (t147 & t143);
    goto LAB113;

LAB114:    *((unsigned int *)t148) = 1;
    goto LAB117;

LAB116:    t155 = (t148 + 4);
    *((unsigned int *)t148) = 1;
    *((unsigned int *)t155) = 1;
    goto LAB117;

LAB118:    t168 = *((unsigned int *)t156);
    t169 = *((unsigned int *)t162);
    *((unsigned int *)t156) = (t168 | t169);
    t170 = (t61 + 4);
    t171 = (t148 + 4);
    t172 = *((unsigned int *)t170);
    t173 = (~(t172));
    t174 = *((unsigned int *)t61);
    t44 = (t174 & t173);
    t175 = *((unsigned int *)t171);
    t176 = (~(t175));
    t177 = *((unsigned int *)t148);
    t122 = (t177 & t176);
    t178 = (~(t44));
    t179 = (~(t122));
    t180 = *((unsigned int *)t162);
    *((unsigned int *)t162) = (t180 & t178);
    t181 = *((unsigned int *)t162);
    *((unsigned int *)t162) = (t181 & t179);
    goto LAB120;

LAB121:    goto LAB123;

LAB126:    xsi_set_current_line(81, ng0);

LAB135:    xsi_set_current_line(82, ng0);
    t8 = (t0 + 1208U);
    t21 = *((char **)t8);
    memset(t30, 0, 8);
    t8 = (t30 + 4);
    t22 = (t21 + 4);
    t15 = *((unsigned int *)t21);
    t16 = (t15 >> 0);
    *((unsigned int *)t30) = t16;
    t17 = *((unsigned int *)t22);
    t18 = (t17 >> 0);
    *((unsigned int *)t8) = t18;
    t19 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t19 & 255U);
    t20 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t20 & 255U);
    t28 = (t0 + 2568);
    t29 = (t0 + 2568);
    t32 = (t29 + 72U);
    t33 = *((char **)t32);
    t34 = (t0 + 2568);
    t35 = (t34 + 64U);
    t36 = *((char **)t35);
    t37 = (t0 + 1048U);
    t38 = *((char **)t37);
    memset(t55, 0, 8);
    t37 = (t55 + 4);
    t40 = (t38 + 4);
    t23 = *((unsigned int *)t38);
    t24 = (t23 >> 2);
    *((unsigned int *)t55) = t24;
    t25 = *((unsigned int *)t40);
    t26 = (t25 >> 2);
    *((unsigned int *)t37) = t26;
    t27 = *((unsigned int *)t55);
    *((unsigned int *)t55) = (t27 & 4095U);
    t45 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t45 & 4095U);
    xsi_vlog_generic_convert_array_indices(t31, t54, t33, t36, 2, 1, t55, 12, 2);
    t65 = (t0 + 2568);
    t66 = (t65 + 72U);
    t74 = *((char **)t66);
    t75 = ((char*)((ng12)));
    t90 = ((char*)((ng1)));
    xsi_vlog_convert_partindices(t61, t100, t101, ((int*)(t74)), 2, t75, 32, 1, t90, 32, 1);
    t96 = (t31 + 4);
    t46 = *((unsigned int *)t96);
    t42 = (!(t46));
    t98 = (t54 + 4);
    t47 = *((unsigned int *)t98);
    t43 = (!(t47));
    t44 = (t42 && t43);
    t99 = (t61 + 4);
    t48 = *((unsigned int *)t99);
    t122 = (!(t48));
    t125 = (t44 && t122);
    t102 = (t100 + 4);
    t49 = *((unsigned int *)t102);
    t126 = (!(t49));
    t194 = (t125 && t126);
    t103 = (t101 + 4);
    t50 = *((unsigned int *)t103);
    t195 = (!(t50));
    t196 = (t194 && t195);
    if (t196 == 1)
        goto LAB136;

LAB137:    xsi_set_current_line(83, ng0);
    t2 = xsi_vlog_time(t188, 1000.0000000000000, 1000.0000000000000);
    t3 = (t0 + 1848U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng5)));
    t5 = (t0 + 1048U);
    t7 = *((char **)t5);
    memset(t31, 0, 8);
    t5 = (t31 + 4);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (t9 >> 2);
    *((unsigned int *)t31) = t10;
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 2);
    *((unsigned int *)t5) = t12;
    t13 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t13 & 1073741823U);
    t14 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t14 & 1073741823U);
    xsi_vlogtype_concat(t30, 32, 32, 2U, t31, 30, t3, 2);
    t21 = (t0 + 1208U);
    t22 = *((char **)t21);
    memset(t55, 0, 8);
    t21 = (t55 + 4);
    t28 = (t22 + 4);
    t15 = *((unsigned int *)t22);
    t16 = (t15 >> 0);
    *((unsigned int *)t55) = t16;
    t17 = *((unsigned int *)t28);
    t18 = (t17 >> 0);
    *((unsigned int *)t21) = t18;
    t19 = *((unsigned int *)t55);
    *((unsigned int *)t55) = (t19 & 255U);
    t20 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t20 & 255U);
    t29 = (t0 + 2568);
    t32 = (t29 + 56U);
    t33 = *((char **)t32);
    t34 = (t0 + 2568);
    t35 = (t34 + 72U);
    t36 = *((char **)t35);
    t37 = (t0 + 2568);
    t38 = (t37 + 64U);
    t40 = *((char **)t38);
    t65 = (t0 + 1048U);
    t66 = *((char **)t65);
    memset(t100, 0, 8);
    t65 = (t100 + 4);
    t74 = (t66 + 4);
    t23 = *((unsigned int *)t66);
    t24 = (t23 >> 2);
    *((unsigned int *)t100) = t24;
    t25 = *((unsigned int *)t74);
    t26 = (t25 >> 2);
    *((unsigned int *)t65) = t26;
    t27 = *((unsigned int *)t100);
    *((unsigned int *)t100) = (t27 & 4095U);
    t45 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t45 & 4095U);
    xsi_vlog_generic_get_array_select_value(t61, 32, t33, t36, t40, 2, 1, t100, 12, 2);
    memset(t101, 0, 8);
    t75 = (t101 + 4);
    t90 = (t61 + 4);
    t46 = *((unsigned int *)t61);
    t47 = (t46 >> 8);
    *((unsigned int *)t101) = t47;
    t48 = *((unsigned int *)t90);
    t49 = (t48 >> 8);
    *((unsigned int *)t75) = t49;
    t50 = *((unsigned int *)t101);
    *((unsigned int *)t101) = (t50 & 16777215U);
    t51 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t51 & 16777215U);
    xsi_vlogtype_concat(t54, 32, 32, 2U, t101, 24, t55, 8);
    xsi_vlogfile_write(1, 0, 0, ng10, 5, t0, (char)118, t188, 64, (char)118, t4, 32, (char)118, t30, 32, (char)118, t54, 32);
    goto LAB134;

LAB128:    xsi_set_current_line(86, ng0);

LAB138:    xsi_set_current_line(87, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    memset(t30, 0, 8);
    t3 = (t30 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 0);
    *((unsigned int *)t30) = t10;
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 0);
    *((unsigned int *)t3) = t12;
    t13 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t13 & 255U);
    t14 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t14 & 255U);
    t7 = (t0 + 2568);
    t8 = (t0 + 2568);
    t21 = (t8 + 72U);
    t22 = *((char **)t21);
    t28 = (t0 + 2568);
    t29 = (t28 + 64U);
    t32 = *((char **)t29);
    t33 = (t0 + 1048U);
    t34 = *((char **)t33);
    memset(t55, 0, 8);
    t33 = (t55 + 4);
    t35 = (t34 + 4);
    t15 = *((unsigned int *)t34);
    t16 = (t15 >> 2);
    *((unsigned int *)t55) = t16;
    t17 = *((unsigned int *)t35);
    t18 = (t17 >> 2);
    *((unsigned int *)t33) = t18;
    t19 = *((unsigned int *)t55);
    *((unsigned int *)t55) = (t19 & 4095U);
    t20 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t20 & 4095U);
    xsi_vlog_generic_convert_array_indices(t31, t54, t22, t32, 2, 1, t55, 12, 2);
    t36 = (t0 + 2568);
    t37 = (t36 + 72U);
    t38 = *((char **)t37);
    t40 = ((char*)((ng13)));
    t65 = ((char*)((ng14)));
    xsi_vlog_convert_partindices(t61, t100, t101, ((int*)(t38)), 2, t40, 32, 1, t65, 32, 1);
    t66 = (t31 + 4);
    t23 = *((unsigned int *)t66);
    t41 = (!(t23));
    t74 = (t54 + 4);
    t24 = *((unsigned int *)t74);
    t42 = (!(t24));
    t43 = (t41 && t42);
    t75 = (t61 + 4);
    t25 = *((unsigned int *)t75);
    t44 = (!(t25));
    t122 = (t43 && t44);
    t90 = (t100 + 4);
    t26 = *((unsigned int *)t90);
    t125 = (!(t26));
    t126 = (t122 && t125);
    t96 = (t101 + 4);
    t27 = *((unsigned int *)t96);
    t194 = (!(t27));
    t195 = (t126 && t194);
    if (t195 == 1)
        goto LAB139;

LAB140:    xsi_set_current_line(88, ng0);
    t2 = xsi_vlog_time(t188, 1000.0000000000000, 1000.0000000000000);
    t3 = (t0 + 1848U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng5)));
    t5 = (t0 + 1048U);
    t7 = *((char **)t5);
    memset(t31, 0, 8);
    t5 = (t31 + 4);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (t9 >> 2);
    *((unsigned int *)t31) = t10;
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 2);
    *((unsigned int *)t5) = t12;
    t13 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t13 & 1073741823U);
    t14 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t14 & 1073741823U);
    xsi_vlogtype_concat(t30, 32, 32, 2U, t31, 30, t3, 2);
    t21 = (t0 + 2568);
    t22 = (t21 + 56U);
    t28 = *((char **)t22);
    t29 = (t0 + 2568);
    t32 = (t29 + 72U);
    t33 = *((char **)t32);
    t34 = (t0 + 2568);
    t35 = (t34 + 64U);
    t36 = *((char **)t35);
    t37 = (t0 + 1048U);
    t38 = *((char **)t37);
    memset(t61, 0, 8);
    t37 = (t61 + 4);
    t40 = (t38 + 4);
    t15 = *((unsigned int *)t38);
    t16 = (t15 >> 2);
    *((unsigned int *)t61) = t16;
    t17 = *((unsigned int *)t40);
    t18 = (t17 >> 2);
    *((unsigned int *)t37) = t18;
    t19 = *((unsigned int *)t61);
    *((unsigned int *)t61) = (t19 & 4095U);
    t20 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t20 & 4095U);
    xsi_vlog_generic_get_array_select_value(t55, 32, t28, t33, t36, 2, 1, t61, 12, 2);
    memset(t100, 0, 8);
    t65 = (t100 + 4);
    t66 = (t55 + 4);
    t23 = *((unsigned int *)t55);
    t24 = (t23 >> 0);
    *((unsigned int *)t100) = t24;
    t25 = *((unsigned int *)t66);
    t26 = (t25 >> 0);
    *((unsigned int *)t65) = t26;
    t27 = *((unsigned int *)t100);
    *((unsigned int *)t100) = (t27 & 255U);
    t45 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t45 & 255U);
    t74 = (t0 + 1208U);
    t75 = *((char **)t74);
    memset(t101, 0, 8);
    t74 = (t101 + 4);
    t90 = (t75 + 4);
    t46 = *((unsigned int *)t75);
    t47 = (t46 >> 0);
    *((unsigned int *)t101) = t47;
    t48 = *((unsigned int *)t90);
    t49 = (t48 >> 0);
    *((unsigned int *)t74) = t49;
    t50 = *((unsigned int *)t101);
    *((unsigned int *)t101) = (t50 & 255U);
    t51 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t51 & 255U);
    t96 = (t0 + 2568);
    t98 = (t96 + 56U);
    t99 = *((char **)t98);
    t102 = (t0 + 2568);
    t103 = (t102 + 72U);
    t104 = *((char **)t103);
    t105 = (t0 + 2568);
    t106 = (t105 + 64U);
    t107 = *((char **)t106);
    t109 = (t0 + 1048U);
    t110 = *((char **)t109);
    memset(t127, 0, 8);
    t109 = (t127 + 4);
    t111 = (t110 + 4);
    t52 = *((unsigned int *)t110);
    t53 = (t52 >> 2);
    *((unsigned int *)t127) = t53;
    t56 = *((unsigned int *)t111);
    t57 = (t56 >> 2);
    *((unsigned int *)t109) = t57;
    t58 = *((unsigned int *)t127);
    *((unsigned int *)t127) = (t58 & 4095U);
    t59 = *((unsigned int *)t109);
    *((unsigned int *)t109) = (t59 & 4095U);
    xsi_vlog_generic_get_array_select_value(t108, 32, t99, t104, t107, 2, 1, t127, 12, 2);
    memset(t129, 0, 8);
    t118 = (t129 + 4);
    t120 = (t108 + 4);
    t60 = *((unsigned int *)t108);
    t62 = (t60 >> 16);
    *((unsigned int *)t129) = t62;
    t63 = *((unsigned int *)t120);
    t64 = (t63 >> 16);
    *((unsigned int *)t118) = t64;
    t67 = *((unsigned int *)t129);
    *((unsigned int *)t129) = (t67 & 65535U);
    t68 = *((unsigned int *)t118);
    *((unsigned int *)t118) = (t68 & 65535U);
    xsi_vlogtype_concat(t54, 32, 32, 3U, t129, 16, t101, 8, t100, 8);
    xsi_vlogfile_write(1, 0, 0, ng10, 5, t0, (char)118, t188, 64, (char)118, t4, 32, (char)118, t30, 32, (char)118, t54, 32);
    goto LAB134;

LAB130:    xsi_set_current_line(91, ng0);

LAB141:    xsi_set_current_line(92, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    memset(t30, 0, 8);
    t3 = (t30 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 0);
    *((unsigned int *)t30) = t10;
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 0);
    *((unsigned int *)t3) = t12;
    t13 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t13 & 255U);
    t14 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t14 & 255U);
    t7 = (t0 + 2568);
    t8 = (t0 + 2568);
    t21 = (t8 + 72U);
    t22 = *((char **)t21);
    t28 = (t0 + 2568);
    t29 = (t28 + 64U);
    t32 = *((char **)t29);
    t33 = (t0 + 1048U);
    t34 = *((char **)t33);
    memset(t55, 0, 8);
    t33 = (t55 + 4);
    t35 = (t34 + 4);
    t15 = *((unsigned int *)t34);
    t16 = (t15 >> 2);
    *((unsigned int *)t55) = t16;
    t17 = *((unsigned int *)t35);
    t18 = (t17 >> 2);
    *((unsigned int *)t33) = t18;
    t19 = *((unsigned int *)t55);
    *((unsigned int *)t55) = (t19 & 4095U);
    t20 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t20 & 4095U);
    xsi_vlog_generic_convert_array_indices(t31, t54, t22, t32, 2, 1, t55, 12, 2);
    t36 = (t0 + 2568);
    t37 = (t36 + 72U);
    t38 = *((char **)t37);
    t40 = ((char*)((ng16)));
    t65 = ((char*)((ng17)));
    xsi_vlog_convert_partindices(t61, t100, t101, ((int*)(t38)), 2, t40, 32, 1, t65, 32, 1);
    t66 = (t31 + 4);
    t23 = *((unsigned int *)t66);
    t41 = (!(t23));
    t74 = (t54 + 4);
    t24 = *((unsigned int *)t74);
    t42 = (!(t24));
    t43 = (t41 && t42);
    t75 = (t61 + 4);
    t25 = *((unsigned int *)t75);
    t44 = (!(t25));
    t122 = (t43 && t44);
    t90 = (t100 + 4);
    t26 = *((unsigned int *)t90);
    t125 = (!(t26));
    t126 = (t122 && t125);
    t96 = (t101 + 4);
    t27 = *((unsigned int *)t96);
    t194 = (!(t27));
    t195 = (t126 && t194);
    if (t195 == 1)
        goto LAB142;

LAB143:    xsi_set_current_line(93, ng0);
    t2 = xsi_vlog_time(t188, 1000.0000000000000, 1000.0000000000000);
    t3 = (t0 + 1848U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng5)));
    t5 = (t0 + 1048U);
    t7 = *((char **)t5);
    memset(t31, 0, 8);
    t5 = (t31 + 4);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (t9 >> 2);
    *((unsigned int *)t31) = t10;
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 2);
    *((unsigned int *)t5) = t12;
    t13 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t13 & 1073741823U);
    t14 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t14 & 1073741823U);
    xsi_vlogtype_concat(t30, 32, 32, 2U, t31, 30, t3, 2);
    t21 = (t0 + 2568);
    t22 = (t21 + 56U);
    t28 = *((char **)t22);
    t29 = (t0 + 2568);
    t32 = (t29 + 72U);
    t33 = *((char **)t32);
    t34 = (t0 + 2568);
    t35 = (t34 + 64U);
    t36 = *((char **)t35);
    t37 = (t0 + 1048U);
    t38 = *((char **)t37);
    memset(t61, 0, 8);
    t37 = (t61 + 4);
    t40 = (t38 + 4);
    t15 = *((unsigned int *)t38);
    t16 = (t15 >> 2);
    *((unsigned int *)t61) = t16;
    t17 = *((unsigned int *)t40);
    t18 = (t17 >> 2);
    *((unsigned int *)t37) = t18;
    t19 = *((unsigned int *)t61);
    *((unsigned int *)t61) = (t19 & 4095U);
    t20 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t20 & 4095U);
    xsi_vlog_generic_get_array_select_value(t55, 32, t28, t33, t36, 2, 1, t61, 12, 2);
    memset(t100, 0, 8);
    t65 = (t100 + 4);
    t66 = (t55 + 4);
    t23 = *((unsigned int *)t55);
    t24 = (t23 >> 0);
    *((unsigned int *)t100) = t24;
    t25 = *((unsigned int *)t66);
    t26 = (t25 >> 0);
    *((unsigned int *)t65) = t26;
    t27 = *((unsigned int *)t100);
    *((unsigned int *)t100) = (t27 & 65535U);
    t45 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t45 & 65535U);
    t74 = (t0 + 1208U);
    t75 = *((char **)t74);
    memset(t101, 0, 8);
    t74 = (t101 + 4);
    t90 = (t75 + 4);
    t46 = *((unsigned int *)t75);
    t47 = (t46 >> 0);
    *((unsigned int *)t101) = t47;
    t48 = *((unsigned int *)t90);
    t49 = (t48 >> 0);
    *((unsigned int *)t74) = t49;
    t50 = *((unsigned int *)t101);
    *((unsigned int *)t101) = (t50 & 255U);
    t51 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t51 & 255U);
    t96 = (t0 + 2568);
    t98 = (t96 + 56U);
    t99 = *((char **)t98);
    t102 = (t0 + 2568);
    t103 = (t102 + 72U);
    t104 = *((char **)t103);
    t105 = (t0 + 2568);
    t106 = (t105 + 64U);
    t107 = *((char **)t106);
    t109 = (t0 + 1048U);
    t110 = *((char **)t109);
    memset(t127, 0, 8);
    t109 = (t127 + 4);
    t111 = (t110 + 4);
    t52 = *((unsigned int *)t110);
    t53 = (t52 >> 2);
    *((unsigned int *)t127) = t53;
    t56 = *((unsigned int *)t111);
    t57 = (t56 >> 2);
    *((unsigned int *)t109) = t57;
    t58 = *((unsigned int *)t127);
    *((unsigned int *)t127) = (t58 & 4095U);
    t59 = *((unsigned int *)t109);
    *((unsigned int *)t109) = (t59 & 4095U);
    xsi_vlog_generic_get_array_select_value(t108, 32, t99, t104, t107, 2, 1, t127, 12, 2);
    memset(t129, 0, 8);
    t118 = (t129 + 4);
    t120 = (t108 + 4);
    t60 = *((unsigned int *)t108);
    t62 = (t60 >> 24);
    *((unsigned int *)t129) = t62;
    t63 = *((unsigned int *)t120);
    t64 = (t63 >> 24);
    *((unsigned int *)t118) = t64;
    t67 = *((unsigned int *)t129);
    *((unsigned int *)t129) = (t67 & 255U);
    t68 = *((unsigned int *)t118);
    *((unsigned int *)t118) = (t68 & 255U);
    xsi_vlogtype_concat(t54, 32, 32, 3U, t129, 8, t101, 8, t100, 16);
    xsi_vlogfile_write(1, 0, 0, ng10, 5, t0, (char)118, t188, 64, (char)118, t4, 32, (char)118, t30, 32, (char)118, t54, 32);
    goto LAB134;

LAB132:    xsi_set_current_line(96, ng0);

LAB144:    xsi_set_current_line(97, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    memset(t30, 0, 8);
    t3 = (t30 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 0);
    *((unsigned int *)t30) = t10;
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 0);
    *((unsigned int *)t3) = t12;
    t13 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t13 & 255U);
    t14 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t14 & 255U);
    t7 = (t0 + 2568);
    t8 = (t0 + 2568);
    t21 = (t8 + 72U);
    t22 = *((char **)t21);
    t28 = (t0 + 2568);
    t29 = (t28 + 64U);
    t32 = *((char **)t29);
    t33 = (t0 + 1048U);
    t34 = *((char **)t33);
    memset(t55, 0, 8);
    t33 = (t55 + 4);
    t35 = (t34 + 4);
    t15 = *((unsigned int *)t34);
    t16 = (t15 >> 2);
    *((unsigned int *)t55) = t16;
    t17 = *((unsigned int *)t35);
    t18 = (t17 >> 2);
    *((unsigned int *)t33) = t18;
    t19 = *((unsigned int *)t55);
    *((unsigned int *)t55) = (t19 & 4095U);
    t20 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t20 & 4095U);
    xsi_vlog_generic_convert_array_indices(t31, t54, t22, t32, 2, 1, t55, 12, 2);
    t36 = (t0 + 2568);
    t37 = (t36 + 72U);
    t38 = *((char **)t37);
    t40 = ((char*)((ng19)));
    t65 = ((char*)((ng20)));
    xsi_vlog_convert_partindices(t61, t100, t101, ((int*)(t38)), 2, t40, 32, 1, t65, 32, 1);
    t66 = (t31 + 4);
    t23 = *((unsigned int *)t66);
    t41 = (!(t23));
    t74 = (t54 + 4);
    t24 = *((unsigned int *)t74);
    t42 = (!(t24));
    t43 = (t41 && t42);
    t75 = (t61 + 4);
    t25 = *((unsigned int *)t75);
    t44 = (!(t25));
    t122 = (t43 && t44);
    t90 = (t100 + 4);
    t26 = *((unsigned int *)t90);
    t125 = (!(t26));
    t126 = (t122 && t125);
    t96 = (t101 + 4);
    t27 = *((unsigned int *)t96);
    t194 = (!(t27));
    t195 = (t126 && t194);
    if (t195 == 1)
        goto LAB145;

LAB146:    xsi_set_current_line(98, ng0);
    t2 = xsi_vlog_time(t188, 1000.0000000000000, 1000.0000000000000);
    t3 = (t0 + 1848U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng5)));
    t5 = (t0 + 1048U);
    t7 = *((char **)t5);
    memset(t31, 0, 8);
    t5 = (t31 + 4);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (t9 >> 2);
    *((unsigned int *)t31) = t10;
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 2);
    *((unsigned int *)t5) = t12;
    t13 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t13 & 1073741823U);
    t14 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t14 & 1073741823U);
    xsi_vlogtype_concat(t30, 32, 32, 2U, t31, 30, t3, 2);
    t21 = (t0 + 2568);
    t22 = (t21 + 56U);
    t28 = *((char **)t22);
    t29 = (t0 + 2568);
    t32 = (t29 + 72U);
    t33 = *((char **)t32);
    t34 = (t0 + 2568);
    t35 = (t34 + 64U);
    t36 = *((char **)t35);
    t37 = (t0 + 1048U);
    t38 = *((char **)t37);
    memset(t61, 0, 8);
    t37 = (t61 + 4);
    t40 = (t38 + 4);
    t15 = *((unsigned int *)t38);
    t16 = (t15 >> 2);
    *((unsigned int *)t61) = t16;
    t17 = *((unsigned int *)t40);
    t18 = (t17 >> 2);
    *((unsigned int *)t37) = t18;
    t19 = *((unsigned int *)t61);
    *((unsigned int *)t61) = (t19 & 4095U);
    t20 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t20 & 4095U);
    xsi_vlog_generic_get_array_select_value(t55, 32, t28, t33, t36, 2, 1, t61, 12, 2);
    memset(t100, 0, 8);
    t65 = (t100 + 4);
    t66 = (t55 + 4);
    t23 = *((unsigned int *)t55);
    t24 = (t23 >> 0);
    *((unsigned int *)t100) = t24;
    t25 = *((unsigned int *)t66);
    t26 = (t25 >> 0);
    *((unsigned int *)t65) = t26;
    t27 = *((unsigned int *)t100);
    *((unsigned int *)t100) = (t27 & 16777215U);
    t45 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t45 & 16777215U);
    t74 = (t0 + 1208U);
    t75 = *((char **)t74);
    memset(t101, 0, 8);
    t74 = (t101 + 4);
    t90 = (t75 + 4);
    t46 = *((unsigned int *)t75);
    t47 = (t46 >> 0);
    *((unsigned int *)t101) = t47;
    t48 = *((unsigned int *)t90);
    t49 = (t48 >> 0);
    *((unsigned int *)t74) = t49;
    t50 = *((unsigned int *)t101);
    *((unsigned int *)t101) = (t50 & 255U);
    t51 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t51 & 255U);
    xsi_vlogtype_concat(t54, 32, 32, 2U, t101, 8, t100, 24);
    xsi_vlogfile_write(1, 0, 0, ng10, 5, t0, (char)118, t188, 64, (char)118, t4, 32, (char)118, t30, 32, (char)118, t54, 32);
    goto LAB134;

LAB136:    t51 = *((unsigned int *)t101);
    t197 = (t51 + 0);
    t52 = *((unsigned int *)t54);
    t53 = *((unsigned int *)t100);
    t198 = (t52 + t53);
    t56 = *((unsigned int *)t61);
    t57 = *((unsigned int *)t100);
    t199 = (t56 - t57);
    t200 = (t199 + 1);
    xsi_vlogvar_wait_assign_value(t28, t30, t197, t198, t200, 0LL);
    goto LAB137;

LAB139:    t45 = *((unsigned int *)t101);
    t196 = (t45 + 0);
    t46 = *((unsigned int *)t54);
    t47 = *((unsigned int *)t100);
    t197 = (t46 + t47);
    t48 = *((unsigned int *)t61);
    t49 = *((unsigned int *)t100);
    t198 = (t48 - t49);
    t199 = (t198 + 1);
    xsi_vlogvar_wait_assign_value(t7, t30, t196, t197, t199, 0LL);
    goto LAB140;

LAB142:    t45 = *((unsigned int *)t101);
    t196 = (t45 + 0);
    t46 = *((unsigned int *)t54);
    t47 = *((unsigned int *)t100);
    t197 = (t46 + t47);
    t48 = *((unsigned int *)t61);
    t49 = *((unsigned int *)t100);
    t198 = (t48 - t49);
    t199 = (t198 + 1);
    xsi_vlogvar_wait_assign_value(t7, t30, t196, t197, t199, 0LL);
    goto LAB143;

LAB145:    t45 = *((unsigned int *)t101);
    t196 = (t45 + 0);
    t46 = *((unsigned int *)t54);
    t47 = *((unsigned int *)t100);
    t197 = (t46 + t47);
    t48 = *((unsigned int *)t61);
    t49 = *((unsigned int *)t100);
    t198 = (t48 - t49);
    t199 = (t198 + 1);
    xsi_vlogvar_wait_assign_value(t7, t30, t196, t197, t199, 0LL);
    goto LAB146;

LAB149:    xsi_set_current_line(106, ng0);

LAB154:    xsi_set_current_line(107, ng0);
    t8 = (t0 + 1208U);
    t21 = *((char **)t8);
    memset(t31, 0, 8);
    t8 = (t31 + 4);
    t22 = (t21 + 4);
    t15 = *((unsigned int *)t21);
    t16 = (t15 >> 0);
    *((unsigned int *)t31) = t16;
    t17 = *((unsigned int *)t22);
    t18 = (t17 >> 0);
    *((unsigned int *)t8) = t18;
    t19 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t19 & 65535U);
    t20 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t20 & 65535U);
    t28 = (t0 + 2568);
    t29 = (t0 + 2568);
    t32 = (t29 + 72U);
    t33 = *((char **)t32);
    t34 = (t0 + 2568);
    t35 = (t34 + 64U);
    t36 = *((char **)t35);
    t37 = (t0 + 1048U);
    t38 = *((char **)t37);
    memset(t61, 0, 8);
    t37 = (t61 + 4);
    t40 = (t38 + 4);
    t23 = *((unsigned int *)t38);
    t24 = (t23 >> 2);
    *((unsigned int *)t61) = t24;
    t25 = *((unsigned int *)t40);
    t26 = (t25 >> 2);
    *((unsigned int *)t37) = t26;
    t27 = *((unsigned int *)t61);
    *((unsigned int *)t61) = (t27 & 4095U);
    t45 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t45 & 4095U);
    xsi_vlog_generic_convert_array_indices(t54, t55, t33, t36, 2, 1, t61, 12, 2);
    t65 = (t0 + 2568);
    t66 = (t65 + 72U);
    t74 = *((char **)t66);
    t75 = ((char*)((ng13)));
    t90 = ((char*)((ng1)));
    xsi_vlog_convert_partindices(t100, t101, t108, ((int*)(t74)), 2, t75, 32, 1, t90, 32, 1);
    t96 = (t54 + 4);
    t46 = *((unsigned int *)t96);
    t42 = (!(t46));
    t98 = (t55 + 4);
    t47 = *((unsigned int *)t98);
    t43 = (!(t47));
    t44 = (t42 && t43);
    t99 = (t100 + 4);
    t48 = *((unsigned int *)t99);
    t122 = (!(t48));
    t125 = (t44 && t122);
    t102 = (t101 + 4);
    t49 = *((unsigned int *)t102);
    t126 = (!(t49));
    t194 = (t125 && t126);
    t103 = (t108 + 4);
    t50 = *((unsigned int *)t103);
    t195 = (!(t50));
    t196 = (t194 && t195);
    if (t196 == 1)
        goto LAB155;

LAB156:    xsi_set_current_line(108, ng0);
    t2 = xsi_vlog_time(t188, 1000.0000000000000, 1000.0000000000000);
    t3 = (t0 + 1848U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng5)));
    t5 = (t0 + 1048U);
    t7 = *((char **)t5);
    memset(t54, 0, 8);
    t5 = (t54 + 4);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (t9 >> 2);
    *((unsigned int *)t54) = t10;
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 2);
    *((unsigned int *)t5) = t12;
    t13 = *((unsigned int *)t54);
    *((unsigned int *)t54) = (t13 & 1073741823U);
    t14 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t14 & 1073741823U);
    xsi_vlogtype_concat(t31, 32, 32, 2U, t54, 30, t3, 2);
    t21 = (t0 + 1208U);
    t22 = *((char **)t21);
    memset(t61, 0, 8);
    t21 = (t61 + 4);
    t28 = (t22 + 4);
    t15 = *((unsigned int *)t22);
    t16 = (t15 >> 0);
    *((unsigned int *)t61) = t16;
    t17 = *((unsigned int *)t28);
    t18 = (t17 >> 0);
    *((unsigned int *)t21) = t18;
    t19 = *((unsigned int *)t61);
    *((unsigned int *)t61) = (t19 & 65535U);
    t20 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t20 & 65535U);
    t29 = (t0 + 2568);
    t32 = (t29 + 56U);
    t33 = *((char **)t32);
    t34 = (t0 + 2568);
    t35 = (t34 + 72U);
    t36 = *((char **)t35);
    t37 = (t0 + 2568);
    t38 = (t37 + 64U);
    t40 = *((char **)t38);
    t65 = (t0 + 1048U);
    t66 = *((char **)t65);
    memset(t101, 0, 8);
    t65 = (t101 + 4);
    t74 = (t66 + 4);
    t23 = *((unsigned int *)t66);
    t24 = (t23 >> 2);
    *((unsigned int *)t101) = t24;
    t25 = *((unsigned int *)t74);
    t26 = (t25 >> 2);
    *((unsigned int *)t65) = t26;
    t27 = *((unsigned int *)t101);
    *((unsigned int *)t101) = (t27 & 4095U);
    t45 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t45 & 4095U);
    xsi_vlog_generic_get_array_select_value(t100, 32, t33, t36, t40, 2, 1, t101, 12, 2);
    memset(t108, 0, 8);
    t75 = (t108 + 4);
    t90 = (t100 + 4);
    t46 = *((unsigned int *)t100);
    t47 = (t46 >> 16);
    *((unsigned int *)t108) = t47;
    t48 = *((unsigned int *)t90);
    t49 = (t48 >> 16);
    *((unsigned int *)t75) = t49;
    t50 = *((unsigned int *)t108);
    *((unsigned int *)t108) = (t50 & 65535U);
    t51 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t51 & 65535U);
    xsi_vlogtype_concat(t55, 32, 32, 2U, t108, 16, t61, 16);
    xsi_vlogfile_write(1, 0, 0, ng10, 5, t0, (char)118, t188, 64, (char)118, t4, 32, (char)118, t31, 32, (char)118, t55, 32);
    goto LAB153;

LAB151:    xsi_set_current_line(111, ng0);

LAB157:    xsi_set_current_line(112, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    memset(t31, 0, 8);
    t3 = (t31 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 0);
    *((unsigned int *)t31) = t10;
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 0);
    *((unsigned int *)t3) = t12;
    t13 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t13 & 65535U);
    t14 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t14 & 65535U);
    t7 = (t0 + 2568);
    t8 = (t0 + 2568);
    t21 = (t8 + 72U);
    t22 = *((char **)t21);
    t28 = (t0 + 2568);
    t29 = (t28 + 64U);
    t32 = *((char **)t29);
    t33 = (t0 + 1048U);
    t34 = *((char **)t33);
    memset(t61, 0, 8);
    t33 = (t61 + 4);
    t35 = (t34 + 4);
    t15 = *((unsigned int *)t34);
    t16 = (t15 >> 2);
    *((unsigned int *)t61) = t16;
    t17 = *((unsigned int *)t35);
    t18 = (t17 >> 2);
    *((unsigned int *)t33) = t18;
    t19 = *((unsigned int *)t61);
    *((unsigned int *)t61) = (t19 & 4095U);
    t20 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t20 & 4095U);
    xsi_vlog_generic_convert_array_indices(t54, t55, t22, t32, 2, 1, t61, 12, 2);
    t36 = (t0 + 2568);
    t37 = (t36 + 72U);
    t38 = *((char **)t37);
    t40 = ((char*)((ng19)));
    t65 = ((char*)((ng17)));
    xsi_vlog_convert_partindices(t100, t101, t108, ((int*)(t38)), 2, t40, 32, 1, t65, 32, 1);
    t66 = (t54 + 4);
    t23 = *((unsigned int *)t66);
    t41 = (!(t23));
    t74 = (t55 + 4);
    t24 = *((unsigned int *)t74);
    t42 = (!(t24));
    t43 = (t41 && t42);
    t75 = (t100 + 4);
    t25 = *((unsigned int *)t75);
    t44 = (!(t25));
    t122 = (t43 && t44);
    t90 = (t101 + 4);
    t26 = *((unsigned int *)t90);
    t125 = (!(t26));
    t126 = (t122 && t125);
    t96 = (t108 + 4);
    t27 = *((unsigned int *)t96);
    t194 = (!(t27));
    t195 = (t126 && t194);
    if (t195 == 1)
        goto LAB158;

LAB159:    xsi_set_current_line(113, ng0);
    t2 = xsi_vlog_time(t188, 1000.0000000000000, 1000.0000000000000);
    t3 = (t0 + 1848U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng5)));
    t5 = (t0 + 1048U);
    t7 = *((char **)t5);
    memset(t54, 0, 8);
    t5 = (t54 + 4);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (t9 >> 2);
    *((unsigned int *)t54) = t10;
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 2);
    *((unsigned int *)t5) = t12;
    t13 = *((unsigned int *)t54);
    *((unsigned int *)t54) = (t13 & 1073741823U);
    t14 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t14 & 1073741823U);
    xsi_vlogtype_concat(t31, 32, 32, 2U, t54, 30, t3, 2);
    t21 = (t0 + 2568);
    t22 = (t21 + 56U);
    t28 = *((char **)t22);
    t29 = (t0 + 2568);
    t32 = (t29 + 72U);
    t33 = *((char **)t32);
    t34 = (t0 + 2568);
    t35 = (t34 + 64U);
    t36 = *((char **)t35);
    t37 = (t0 + 1048U);
    t38 = *((char **)t37);
    memset(t100, 0, 8);
    t37 = (t100 + 4);
    t40 = (t38 + 4);
    t15 = *((unsigned int *)t38);
    t16 = (t15 >> 2);
    *((unsigned int *)t100) = t16;
    t17 = *((unsigned int *)t40);
    t18 = (t17 >> 2);
    *((unsigned int *)t37) = t18;
    t19 = *((unsigned int *)t100);
    *((unsigned int *)t100) = (t19 & 4095U);
    t20 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t20 & 4095U);
    xsi_vlog_generic_get_array_select_value(t61, 32, t28, t33, t36, 2, 1, t100, 12, 2);
    memset(t101, 0, 8);
    t65 = (t101 + 4);
    t66 = (t61 + 4);
    t23 = *((unsigned int *)t61);
    t24 = (t23 >> 0);
    *((unsigned int *)t101) = t24;
    t25 = *((unsigned int *)t66);
    t26 = (t25 >> 0);
    *((unsigned int *)t65) = t26;
    t27 = *((unsigned int *)t101);
    *((unsigned int *)t101) = (t27 & 65535U);
    t45 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t45 & 65535U);
    t74 = (t0 + 1208U);
    t75 = *((char **)t74);
    memset(t108, 0, 8);
    t74 = (t108 + 4);
    t90 = (t75 + 4);
    t46 = *((unsigned int *)t75);
    t47 = (t46 >> 0);
    *((unsigned int *)t108) = t47;
    t48 = *((unsigned int *)t90);
    t49 = (t48 >> 0);
    *((unsigned int *)t74) = t49;
    t50 = *((unsigned int *)t108);
    *((unsigned int *)t108) = (t50 & 65535U);
    t51 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t51 & 65535U);
    xsi_vlogtype_concat(t55, 32, 32, 2U, t108, 16, t101, 16);
    xsi_vlogfile_write(1, 0, 0, ng10, 5, t0, (char)118, t188, 64, (char)118, t4, 32, (char)118, t31, 32, (char)118, t55, 32);
    goto LAB153;

LAB155:    t51 = *((unsigned int *)t108);
    t197 = (t51 + 0);
    t52 = *((unsigned int *)t55);
    t53 = *((unsigned int *)t101);
    t198 = (t52 + t53);
    t56 = *((unsigned int *)t100);
    t57 = *((unsigned int *)t101);
    t199 = (t56 - t57);
    t200 = (t199 + 1);
    xsi_vlogvar_wait_assign_value(t28, t31, t197, t198, t200, 0LL);
    goto LAB156;

LAB158:    t45 = *((unsigned int *)t108);
    t196 = (t45 + 0);
    t46 = *((unsigned int *)t55);
    t47 = *((unsigned int *)t101);
    t197 = (t46 + t47);
    t48 = *((unsigned int *)t100);
    t49 = *((unsigned int *)t101);
    t198 = (t48 - t49);
    t199 = (t198 + 1);
    xsi_vlogvar_wait_assign_value(t7, t31, t196, t197, t199, 0LL);
    goto LAB159;

}


extern void work_m_00000000000295830552_0010801604_init()
{
	static char *pe[] = {(void *)Initial_53_0,(void *)Cont_59_1,(void *)Always_61_2};
	xsi_register_didat("work_m_00000000000295830552_0010801604", "isim/dm_isim_beh.exe.sim/work/m_00000000000295830552_0010801604.didat");
	xsi_register_executes(pe);
}
