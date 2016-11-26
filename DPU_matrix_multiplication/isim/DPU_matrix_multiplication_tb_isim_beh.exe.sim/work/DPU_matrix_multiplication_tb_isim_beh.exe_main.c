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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *STD_STANDARD;
char *IEEE_P_2592010699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    work_a_3175527945_3182888734_init();
    work_a_0386197624_1023111109_init();
    work_a_1816035169_3712173503_init();
    work_a_2819344207_3712173503_init();
    work_a_4202556489_1071598608_init();
    work_a_1928810450_2373730018_init();
    work_a_2576644601_1533986306_init();
    work_a_0134994574_4141933143_init();
    work_a_0348176998_1625458632_init();
    work_a_2826584722_2397704855_init();
    work_a_0173068511_3671711236_init();


    xsi_register_tops("work_a_0173068511_3671711236");

    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);

    return xsi_run_simulation(argc, argv);

}
