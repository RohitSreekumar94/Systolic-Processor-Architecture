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
static const char *ng0 = "E:/Works/GitHub/Systolic-Processor-On-FPGA/ISE Design Files/FA/FA_tb.vhd";



static void work_a_3523692784_3671711236_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;

LAB0:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 3584);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(23, ng0);
    t7 = (5 * 1000LL);
    t2 = (t0 + 2760);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(24, ng0);
    t2 = (t0 + 3584);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(24, ng0);
    t7 = (5 * 1000LL);
    t2 = (t0 + 2760);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_3523692784_3671711236_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    int t13;
    int t14;

LAB0:    t1 = (t0 + 3200U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 3648);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(33, ng0);
    t2 = (t0 + 3712);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(34, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 3008);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t8 = *((unsigned char *)t3);
    t9 = (t8 == (unsigned char)2);
    if (t9 == 0)
        goto LAB8;

LAB9:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t8 = *((unsigned char *)t3);
    t9 = (t8 == (unsigned char)3);
    if (t9 == 0)
        goto LAB10;

LAB11:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t9 = *((unsigned char *)t3);
    t10 = (t9 != (unsigned char)3);
    if (t10 == 1)
        goto LAB15;

LAB16:    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t11 = *((unsigned char *)t4);
    t12 = (t11 != (unsigned char)2);
    t8 = t12;

LAB17:    if (t8 != 0)
        goto LAB12;

LAB14:
LAB13:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 3648);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 3712);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(44, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 3008);
    xsi_process_wait(t2, t7);

LAB20:    *((char **)t1) = &&LAB21;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    t2 = (t0 + 5976);
    xsi_report(t2, 12U, (unsigned char)2);
    goto LAB9;

LAB10:    t2 = (t0 + 5988);
    xsi_report(t2, 12U, (unsigned char)2);
    goto LAB11;

LAB12:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1968U);
    t5 = *((char **)t2);
    t13 = *((int *)t5);
    t14 = (t13 + 1);
    t2 = (t0 + 1968U);
    t6 = *((char **)t2);
    t2 = (t6 + 0);
    *((int *)t2) = t14;
    goto LAB13;

LAB15:    t8 = (unsigned char)1;
    goto LAB17;

LAB18:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t8 = *((unsigned char *)t3);
    t9 = (t8 == (unsigned char)3);
    if (t9 == 0)
        goto LAB22;

LAB23:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t8 = *((unsigned char *)t3);
    t9 = (t8 == (unsigned char)3);
    if (t9 == 0)
        goto LAB24;

LAB25:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t9 = *((unsigned char *)t3);
    t10 = (t9 != (unsigned char)2);
    if (t10 == 1)
        goto LAB29;

LAB30:    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t11 = *((unsigned char *)t4);
    t12 = (t11 != (unsigned char)3);
    t8 = t12;

LAB31:    if (t8 != 0)
        goto LAB26;

LAB28:
LAB27:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 3648);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 3712);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(54, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 3008);
    xsi_process_wait(t2, t7);

LAB34:    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB19:    goto LAB18;

LAB21:    goto LAB19;

LAB22:    t2 = (t0 + 6000);
    xsi_report(t2, 12U, (unsigned char)2);
    goto LAB23;

LAB24:    t2 = (t0 + 6012);
    xsi_report(t2, 12U, (unsigned char)2);
    goto LAB25;

LAB26:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1968U);
    t5 = *((char **)t2);
    t13 = *((int *)t5);
    t14 = (t13 + 1);
    t2 = (t0 + 1968U);
    t6 = *((char **)t2);
    t2 = (t6 + 0);
    *((int *)t2) = t14;
    goto LAB27;

LAB29:    t8 = (unsigned char)1;
    goto LAB31;

LAB32:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t8 = *((unsigned char *)t3);
    t9 = (t8 == (unsigned char)2);
    if (t9 == 0)
        goto LAB36;

LAB37:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t8 = *((unsigned char *)t3);
    t9 = (t8 == (unsigned char)3);
    if (t9 == 0)
        goto LAB38;

LAB39:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t9 = *((unsigned char *)t3);
    t10 = (t9 != (unsigned char)3);
    if (t10 == 1)
        goto LAB43;

LAB44:    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t11 = *((unsigned char *)t4);
    t12 = (t11 != (unsigned char)2);
    t8 = t12;

LAB45:    if (t8 != 0)
        goto LAB40;

LAB42:
LAB41:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t13 = *((int *)t3);
    t8 = (t13 == 0);
    if (t8 != 0)
        goto LAB46;

LAB48:    xsi_set_current_line(65, ng0);
    if ((unsigned char)0 == 0)
        goto LAB51;

LAB52:
LAB47:    goto LAB2;

LAB33:    goto LAB32;

LAB35:    goto LAB33;

LAB36:    t2 = (t0 + 6024);
    xsi_report(t2, 12U, (unsigned char)2);
    goto LAB37;

LAB38:    t2 = (t0 + 6036);
    xsi_report(t2, 12U, (unsigned char)2);
    goto LAB39;

LAB40:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1968U);
    t5 = *((char **)t2);
    t13 = *((int *)t5);
    t14 = (t13 + 1);
    t2 = (t0 + 1968U);
    t6 = *((char **)t2);
    t2 = (t6 + 0);
    *((int *)t2) = t14;
    goto LAB41;

LAB43:    t8 = (unsigned char)1;
    goto LAB45;

LAB46:    xsi_set_current_line(63, ng0);
    if ((unsigned char)0 == 0)
        goto LAB49;

LAB50:    goto LAB47;

LAB49:    t2 = (t0 + 6048);
    xsi_report(t2, 8U, (unsigned char)0);
    goto LAB50;

LAB51:    t2 = (t0 + 6056);
    xsi_report(t2, 9U, (unsigned char)0);
    goto LAB52;

}


extern void work_a_3523692784_3671711236_init()
{
	static char *pe[] = {(void *)work_a_3523692784_3671711236_p_0,(void *)work_a_3523692784_3671711236_p_1};
	xsi_register_didat("work_a_3523692784_3671711236", "isim/FA_tb_isim_beh.exe.sim/work/a_3523692784_3671711236.didat");
	xsi_register_executes(pe);
}
