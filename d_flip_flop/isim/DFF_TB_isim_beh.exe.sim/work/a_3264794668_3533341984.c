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
static const char *ng0 = "C:/Users/SAIKAT/Desktop/Class_asgn/d_flip_flop/DFF.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void work_a_3264794668_3533341984_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2992);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(45, ng0);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t9 = *((unsigned char *)t8);
    t7 = (t0 + 3072);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t9;
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t1);
    t2 = (t0 + 3136);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t4;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB3;

LAB5:    t2 = (t0 + 1152U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

}


extern void work_a_3264794668_3533341984_init()
{
	static char *pe[] = {(void *)work_a_3264794668_3533341984_p_0};
	xsi_register_didat("work_a_3264794668_3533341984", "isim/DFF_TB_isim_beh.exe.sim/work/a_3264794668_3533341984.didat");
	xsi_register_executes(pe);
}
