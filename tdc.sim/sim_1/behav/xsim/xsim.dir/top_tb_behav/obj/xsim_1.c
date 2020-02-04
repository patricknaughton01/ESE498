/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern void execute_7654(char*, char *);
extern void execute_7655(char*, char *);
extern void execute_15319(char*, char *);
extern void execute_15320(char*, char *);
extern void execute_15321(char*, char *);
extern void execute_15322(char*, char *);
extern void execute_15323(char*, char *);
extern void execute_15324(char*, char *);
extern void execute_15325(char*, char *);
extern void execute_15326(char*, char *);
extern void execute_15327(char*, char *);
extern void execute_15328(char*, char *);
extern void execute_15329(char*, char *);
extern void execute_15330(char*, char *);
extern void execute_15331(char*, char *);
extern void execute_15332(char*, char *);
extern void execute_15333(char*, char *);
extern void execute_15334(char*, char *);
extern void execute_15335(char*, char *);
extern void execute_15336(char*, char *);
extern void execute_15337(char*, char *);
extern void execute_15338(char*, char *);
extern void execute_15339(char*, char *);
extern void execute_7649(char*, char *);
extern void execute_7650(char*, char *);
extern void execute_15300(char*, char *);
extern void execute_15301(char*, char *);
extern void execute_15302(char*, char *);
extern void execute_15303(char*, char *);
extern void execute_15304(char*, char *);
extern void execute_15305(char*, char *);
extern void execute_15306(char*, char *);
extern void execute_15307(char*, char *);
extern void execute_15308(char*, char *);
extern void execute_15309(char*, char *);
extern void execute_15310(char*, char *);
extern void execute_15311(char*, char *);
extern void execute_15312(char*, char *);
extern void execute_15313(char*, char *);
extern void execute_15314(char*, char *);
extern void execute_15315(char*, char *);
extern void execute_15316(char*, char *);
extern void execute_15317(char*, char *);
extern void execute_15318(char*, char *);
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_644(char*, char *);
extern void execute_645(char*, char *);
extern void execute_8297(char*, char *);
extern void execute_8298(char*, char *);
extern void execute_7660(char*, char *);
extern void execute_8299(char*, char *);
extern void execute_7648(char*, char *);
extern void execute_15299(char*, char *);
extern void execute_7652(char*, char *);
extern void execute_7653(char*, char *);
extern void execute_7657(char*, char *);
extern void execute_7658(char*, char *);
extern void execute_7659(char*, char *);
extern void execute_15340(char*, char *);
extern void execute_15341(char*, char *);
extern void execute_15342(char*, char *);
extern void execute_15343(char*, char *);
extern void execute_15344(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[65] = {(funcp)execute_7654, (funcp)execute_7655, (funcp)execute_15319, (funcp)execute_15320, (funcp)execute_15321, (funcp)execute_15322, (funcp)execute_15323, (funcp)execute_15324, (funcp)execute_15325, (funcp)execute_15326, (funcp)execute_15327, (funcp)execute_15328, (funcp)execute_15329, (funcp)execute_15330, (funcp)execute_15331, (funcp)execute_15332, (funcp)execute_15333, (funcp)execute_15334, (funcp)execute_15335, (funcp)execute_15336, (funcp)execute_15337, (funcp)execute_15338, (funcp)execute_15339, (funcp)execute_7649, (funcp)execute_7650, (funcp)execute_15300, (funcp)execute_15301, (funcp)execute_15302, (funcp)execute_15303, (funcp)execute_15304, (funcp)execute_15305, (funcp)execute_15306, (funcp)execute_15307, (funcp)execute_15308, (funcp)execute_15309, (funcp)execute_15310, (funcp)execute_15311, (funcp)execute_15312, (funcp)execute_15313, (funcp)execute_15314, (funcp)execute_15315, (funcp)execute_15316, (funcp)execute_15317, (funcp)execute_15318, (funcp)execute_4, (funcp)execute_5, (funcp)execute_644, (funcp)execute_645, (funcp)execute_8297, (funcp)execute_8298, (funcp)execute_7660, (funcp)execute_8299, (funcp)execute_7648, (funcp)execute_15299, (funcp)execute_7652, (funcp)execute_7653, (funcp)execute_7657, (funcp)execute_7658, (funcp)execute_7659, (funcp)execute_15340, (funcp)execute_15341, (funcp)execute_15342, (funcp)execute_15343, (funcp)execute_15344, (funcp)vlog_transfunc_eventcallback};
const int NumRelocateId= 65;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/top_tb_behav/xsim.reloc",  (void **)funcTab, 65);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/top_tb_behav/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/top_tb_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstantiate();

extern void implicit_HDL_SCcleanup();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/top_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/top_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/top_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
