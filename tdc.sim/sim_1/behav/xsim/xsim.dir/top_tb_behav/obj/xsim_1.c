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
extern void execute_18843(char*, char *);
extern void execute_18844(char*, char *);
extern void execute_37695(char*, char *);
extern void execute_37696(char*, char *);
extern void execute_37697(char*, char *);
extern void execute_37698(char*, char *);
extern void execute_37699(char*, char *);
extern void execute_37700(char*, char *);
extern void execute_37701(char*, char *);
extern void execute_37702(char*, char *);
extern void execute_37703(char*, char *);
extern void execute_37704(char*, char *);
extern void execute_37705(char*, char *);
extern void execute_37706(char*, char *);
extern void execute_37707(char*, char *);
extern void execute_37708(char*, char *);
extern void execute_37709(char*, char *);
extern void execute_37710(char*, char *);
extern void execute_37711(char*, char *);
extern void execute_37712(char*, char *);
extern void execute_37713(char*, char *);
extern void execute_37714(char*, char *);
extern void execute_37715(char*, char *);
extern void execute_18838(char*, char *);
extern void execute_18839(char*, char *);
extern void execute_37679(char*, char *);
extern void execute_37680(char*, char *);
extern void execute_37681(char*, char *);
extern void execute_37682(char*, char *);
extern void execute_37683(char*, char *);
extern void execute_37684(char*, char *);
extern void execute_37685(char*, char *);
extern void execute_37686(char*, char *);
extern void execute_37687(char*, char *);
extern void execute_37688(char*, char *);
extern void execute_37689(char*, char *);
extern void execute_37690(char*, char *);
extern void execute_37691(char*, char *);
extern void execute_37692(char*, char *);
extern void execute_37693(char*, char *);
extern void execute_37694(char*, char *);
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_115(char*, char *);
extern void execute_116(char*, char *);
extern void execute_18957(char*, char *);
extern void execute_18958(char*, char *);
extern void execute_18849(char*, char *);
extern void execute_18959(char*, char *);
extern void execute_18841(char*, char *);
extern void execute_18842(char*, char *);
extern void execute_18846(char*, char *);
extern void execute_18847(char*, char *);
extern void execute_18848(char*, char *);
extern void execute_37716(char*, char *);
extern void execute_37717(char*, char *);
extern void execute_37718(char*, char *);
extern void execute_37719(char*, char *);
extern void execute_37720(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[60] = {(funcp)execute_18843, (funcp)execute_18844, (funcp)execute_37695, (funcp)execute_37696, (funcp)execute_37697, (funcp)execute_37698, (funcp)execute_37699, (funcp)execute_37700, (funcp)execute_37701, (funcp)execute_37702, (funcp)execute_37703, (funcp)execute_37704, (funcp)execute_37705, (funcp)execute_37706, (funcp)execute_37707, (funcp)execute_37708, (funcp)execute_37709, (funcp)execute_37710, (funcp)execute_37711, (funcp)execute_37712, (funcp)execute_37713, (funcp)execute_37714, (funcp)execute_37715, (funcp)execute_18838, (funcp)execute_18839, (funcp)execute_37679, (funcp)execute_37680, (funcp)execute_37681, (funcp)execute_37682, (funcp)execute_37683, (funcp)execute_37684, (funcp)execute_37685, (funcp)execute_37686, (funcp)execute_37687, (funcp)execute_37688, (funcp)execute_37689, (funcp)execute_37690, (funcp)execute_37691, (funcp)execute_37692, (funcp)execute_37693, (funcp)execute_37694, (funcp)execute_4, (funcp)execute_5, (funcp)execute_115, (funcp)execute_116, (funcp)execute_18957, (funcp)execute_18958, (funcp)execute_18849, (funcp)execute_18959, (funcp)execute_18841, (funcp)execute_18842, (funcp)execute_18846, (funcp)execute_18847, (funcp)execute_18848, (funcp)execute_37716, (funcp)execute_37717, (funcp)execute_37718, (funcp)execute_37719, (funcp)execute_37720, (funcp)vlog_transfunc_eventcallback};
const int NumRelocateId= 60;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/top_tb_behav/xsim.reloc",  (void **)funcTab, 60);

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
