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

/* This file is designed for use with ISim build 0x8ddf5b5d */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/yujin/4B/ArchiMat/Projet-System-Info/Registre.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_17802405650254020620_1035706684(char *, char *, char *);


static void work_a_1869514137_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int t17;
    int t18;
    unsigned int t19;

LAB0:    t1 = (t0 + 3624U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(50, ng0);

LAB6:    t2 = (t0 + 4440);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t6 = (t0 + 4440);
    *((int *)t6) = 0;
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t5 = (t3 == (unsigned char)2);
    if (t5 != 0)
        goto LAB11;

LAB13:    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t5 = (t3 == (unsigned char)3);
    if (t5 != 0)
        goto LAB16;

LAB17:
LAB12:    goto LAB2;

LAB5:    t4 = (t0 + 1952U);
    t5 = xsi_signal_has_event(t4);
    if (t5 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB8:    t6 = (t0 + 1992U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    t3 = t9;
    goto LAB10;

LAB11:    xsi_set_current_line(52, ng0);
    t2 = xsi_get_transient_memory(256U);
    memset(t2, 0, 256U);
    t6 = t2;
    t10 = (16U * 1U);
    t7 = t6;
    memset(t7, (unsigned char)2, t10);
    t8 = (t10 != 0);
    if (t8 == 1)
        goto LAB14;

LAB15:    t12 = (t0 + 4552);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 256U);
    xsi_driver_first_trans_fast(t12);
    goto LAB12;

LAB14:    t11 = (256U / t10);
    xsi_mem_set_data(t6, t6, t10, t11);
    goto LAB15;

LAB16:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1672U);
    t6 = *((char **)t2);
    t2 = (t0 + 1352U);
    t7 = *((char **)t2);
    t2 = (t0 + 7192U);
    t17 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t7, t2);
    t18 = (t17 - 15);
    t10 = (t18 * -1);
    t11 = (16U * t10);
    t19 = (0U + t11);
    t12 = (t0 + 4552);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t6, 16U);
    xsi_driver_first_trans_delta(t12, t19, 16U, 0LL);
    goto LAB12;

}

static void work_a_1869514137_3212880686_p_1(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    unsigned char t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned char t23;
    unsigned char t24;
    char *t25;
    char *t26;
    int t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;

LAB0:    xsi_set_current_line(58, ng0);
    t3 = (t0 + 1832U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t21 = (t0 + 1832U);
    t22 = *((char **)t21);
    t23 = *((unsigned char *)t22);
    t24 = (t23 == (unsigned char)3);
    if (t24 != 0)
        goto LAB17;

LAB18:
LAB19:    t38 = (t0 + 7583);
    t40 = (t0 + 4616);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    memcpy(t44, t38, 16U);
    xsi_driver_first_trans_fast_port(t40);

LAB2:    t45 = (t0 + 4456);
    *((int *)t45) = 1;

LAB1:    return;
LAB3:    t15 = (t0 + 1672U);
    t16 = *((char **)t15);
    t15 = (t0 + 4616);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t16, 16U);
    xsi_driver_first_trans_fast_port(t15);
    goto LAB2;

LAB5:    t3 = (t0 + 1032U);
    t10 = *((char **)t3);
    t3 = (t0 + 1352U);
    t11 = *((char **)t3);
    t12 = 1;
    if (4U == 4U)
        goto LAB11;

LAB12:    t12 = 0;

LAB13:    t1 = t12;
    goto LAB7;

LAB8:    t3 = (t0 + 1512U);
    t7 = *((char **)t3);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    t2 = t9;
    goto LAB10;

LAB11:    t13 = 0;

LAB14:    if (t13 < 4U)
        goto LAB15;
    else
        goto LAB13;

LAB15:    t3 = (t10 + t13);
    t14 = (t11 + t13);
    if (*((unsigned char *)t3) != *((unsigned char *)t14))
        goto LAB12;

LAB16:    t13 = (t13 + 1);
    goto LAB14;

LAB17:    t21 = (t0 + 2472U);
    t25 = *((char **)t21);
    t21 = (t0 + 1032U);
    t26 = *((char **)t21);
    t21 = (t0 + 7160U);
    t27 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t26, t21);
    t28 = (t27 - 15);
    t29 = (t28 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t27);
    t30 = (16U * t29);
    t31 = (0 + t30);
    t32 = (t25 + t31);
    t33 = (t0 + 4616);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    memcpy(t37, t32, 16U);
    xsi_driver_first_trans_fast_port(t33);
    goto LAB2;

LAB20:    goto LAB2;

}

static void work_a_1869514137_3212880686_p_2(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    unsigned char t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned char t23;
    unsigned char t24;
    char *t25;
    char *t26;
    int t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;

LAB0:    xsi_set_current_line(61, ng0);
    t3 = (t0 + 1832U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t21 = (t0 + 1832U);
    t22 = *((char **)t21);
    t23 = *((unsigned char *)t22);
    t24 = (t23 == (unsigned char)3);
    if (t24 != 0)
        goto LAB17;

LAB18:
LAB19:    t38 = (t0 + 7599);
    t40 = (t0 + 4680);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    memcpy(t44, t38, 16U);
    xsi_driver_first_trans_fast_port(t40);

LAB2:    t45 = (t0 + 4472);
    *((int *)t45) = 1;

LAB1:    return;
LAB3:    t15 = (t0 + 1672U);
    t16 = *((char **)t15);
    t15 = (t0 + 4680);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t16, 16U);
    xsi_driver_first_trans_fast_port(t15);
    goto LAB2;

LAB5:    t3 = (t0 + 1192U);
    t10 = *((char **)t3);
    t3 = (t0 + 1352U);
    t11 = *((char **)t3);
    t12 = 1;
    if (4U == 4U)
        goto LAB11;

LAB12:    t12 = 0;

LAB13:    t1 = t12;
    goto LAB7;

LAB8:    t3 = (t0 + 1512U);
    t7 = *((char **)t3);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    t2 = t9;
    goto LAB10;

LAB11:    t13 = 0;

LAB14:    if (t13 < 4U)
        goto LAB15;
    else
        goto LAB13;

LAB15:    t3 = (t10 + t13);
    t14 = (t11 + t13);
    if (*((unsigned char *)t3) != *((unsigned char *)t14))
        goto LAB12;

LAB16:    t13 = (t13 + 1);
    goto LAB14;

LAB17:    t21 = (t0 + 2472U);
    t25 = *((char **)t21);
    t21 = (t0 + 1192U);
    t26 = *((char **)t21);
    t21 = (t0 + 7176U);
    t27 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t26, t21);
    t28 = (t27 - 15);
    t29 = (t28 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t27);
    t30 = (16U * t29);
    t31 = (0 + t30);
    t32 = (t25 + t31);
    t33 = (t0 + 4680);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    memcpy(t37, t32, 16U);
    xsi_driver_first_trans_fast_port(t33);
    goto LAB2;

LAB20:    goto LAB2;

}


extern void work_a_1869514137_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1869514137_3212880686_p_0,(void *)work_a_1869514137_3212880686_p_1,(void *)work_a_1869514137_3212880686_p_2};
	xsi_register_didat("work_a_1869514137_3212880686", "isim/Registre_isim_beh.exe.sim/work/a_1869514137_3212880686.didat");
	xsi_register_executes(pe);
}
