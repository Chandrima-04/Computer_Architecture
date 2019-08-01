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

/* This file is designed for use with ISim build 0x79f3f3a8 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Goutam_Debnath_Xilinx/Class_asgn/ud_counter/UD_COUNTER.vhd";
extern char *IEEE_P_3620187407;

unsigned char ieee_p_3620187407_sub_2546382208_3965413181(char *, char *, char *, int );
unsigned char ieee_p_3620187407_sub_2546454082_3965413181(char *, char *, char *, int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );
char *ieee_p_3620187407_sub_436351764_3965413181(char *, char *, char *, char *, int );


static void work_a_4200415922_3212880686_p_0(char *t0)
{
    char t7[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;

LAB0:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1236U);
    t3 = *((char **)t2);
    t16 = (2 - 2);
    t17 = (t16 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t2 = (t3 + t19);
    t1 = *((unsigned char *)t2);
    t8 = (t0 + 2324);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t1;
    xsi_driver_first_trans_fast(t8);
    t2 = (t0 + 2236);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(53, ng0);
    t8 = (t0 + 1236U);
    t9 = *((char **)t8);
    t8 = (t0 + 4148U);
    t10 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t7, t9, t8, 1);
    t11 = (t0 + 2288);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t10, 3U);
    xsi_driver_first_trans_fast(t11);
    goto LAB3;

LAB5:    t2 = (t0 + 568U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

}

static void work_a_4200415922_3212880686_p_1(char *t0)
{
    char t15[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned char t14;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 868U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB19;

LAB21:    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB22;

LAB23:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 1120U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB27;

LAB28:    t3 = (unsigned char)0;

LAB29:    if (t3 != 0)
        goto LAB24;

LAB26:
LAB25:
LAB20:
LAB3:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t1 = (t0 + 2396);
    t5 = (t1 + 32U);
    t8 = *((char **)t5);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 2244);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 684U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB8;

LAB9:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1120U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB13;

LAB14:    t3 = (unsigned char)0;

LAB15:    if (t3 != 0)
        goto LAB10;

LAB12:
LAB11:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 4184);
    t9 = (t0 + 2360);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 4U);
    xsi_driver_first_trans_fast(t9);
    goto LAB6;

LAB8:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1052U);
    t5 = *((char **)t1);
    t1 = (t0 + 2360);
    t8 = (t1 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t5, 4U);
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB10:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 1052U);
    t8 = *((char **)t2);
    t2 = (t0 + 4132U);
    t14 = ieee_p_3620187407_sub_2546382208_3965413181(IEEE_P_3620187407, t8, t2, 15);
    if (t14 != 0)
        goto LAB16;

LAB18:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 4188);
    t5 = (t0 + 2360);
    t8 = (t5 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t5);

LAB17:    goto LAB11;

LAB13:    t2 = (t0 + 1144U);
    t5 = *((char **)t2);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t3 = t7;
    goto LAB15;

LAB16:    xsi_set_current_line(69, ng0);
    t9 = (t0 + 1052U);
    t10 = *((char **)t9);
    t9 = (t0 + 4132U);
    t11 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t15, t10, t9, 1);
    t12 = (t0 + 2360);
    t13 = (t12 + 32U);
    t16 = *((char **)t13);
    t17 = (t16 + 40U);
    t18 = *((char **)t17);
    memcpy(t18, t11, 4U);
    xsi_driver_first_trans_fast(t12);
    goto LAB17;

LAB19:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 4192);
    t8 = (t0 + 2360);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 4U);
    xsi_driver_first_trans_fast(t8);
    goto LAB20;

LAB22:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 1052U);
    t5 = *((char **)t1);
    t1 = (t0 + 2360);
    t8 = (t1 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t5, 4U);
    xsi_driver_first_trans_fast(t1);
    goto LAB20;

LAB24:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 1052U);
    t8 = *((char **)t2);
    t2 = (t0 + 4132U);
    t14 = ieee_p_3620187407_sub_2546454082_3965413181(IEEE_P_3620187407, t8, t2, 0);
    if (t14 != 0)
        goto LAB30;

LAB32:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 4196);
    t5 = (t0 + 2360);
    t8 = (t5 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t5);

LAB31:    goto LAB25;

LAB27:    t2 = (t0 + 1144U);
    t5 = *((char **)t2);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t3 = t7;
    goto LAB29;

LAB30:    xsi_set_current_line(83, ng0);
    t9 = (t0 + 1052U);
    t10 = *((char **)t9);
    t9 = (t0 + 4132U);
    t11 = ieee_p_3620187407_sub_436351764_3965413181(IEEE_P_3620187407, t15, t10, t9, 1);
    t12 = (t0 + 2360);
    t13 = (t12 + 32U);
    t16 = *((char **)t13);
    t17 = (t16 + 40U);
    t18 = *((char **)t17);
    memcpy(t18, t11, 4U);
    xsi_driver_first_trans_fast(t12);
    goto LAB31;

}


extern void work_a_4200415922_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4200415922_3212880686_p_0,(void *)work_a_4200415922_3212880686_p_1};
	xsi_register_didat("work_a_4200415922_3212880686", "isim/UD_COUNTER_TB_isim_beh.exe.sim/work/a_4200415922_3212880686.didat");
	xsi_register_executes(pe);
}
