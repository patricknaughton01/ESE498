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
extern void execute_5110(char*, char *);
extern void execute_5111(char*, char *);
extern void execute_10324(char*, char *);
extern void execute_10325(char*, char *);
extern void execute_10326(char*, char *);
extern void execute_10327(char*, char *);
extern void execute_10328(char*, char *);
extern void execute_10329(char*, char *);
extern void execute_10330(char*, char *);
extern void execute_10331(char*, char *);
extern void execute_10332(char*, char *);
extern void execute_10333(char*, char *);
extern void execute_10334(char*, char *);
extern void execute_10335(char*, char *);
extern void execute_10336(char*, char *);
extern void execute_10337(char*, char *);
extern void execute_10338(char*, char *);
extern void execute_10339(char*, char *);
extern void execute_10340(char*, char *);
extern void execute_10341(char*, char *);
extern void execute_10342(char*, char *);
extern void execute_10343(char*, char *);
extern void execute_10344(char*, char *);
extern void execute_5105(char*, char *);
extern void execute_5106(char*, char *);
extern void execute_10305(char*, char *);
extern void execute_10306(char*, char *);
extern void execute_10307(char*, char *);
extern void execute_10308(char*, char *);
extern void execute_10309(char*, char *);
extern void execute_10310(char*, char *);
extern void execute_10311(char*, char *);
extern void execute_10312(char*, char *);
extern void execute_10313(char*, char *);
extern void execute_10314(char*, char *);
extern void execute_10315(char*, char *);
extern void execute_10316(char*, char *);
extern void execute_10317(char*, char *);
extern void execute_10318(char*, char *);
extern void execute_10319(char*, char *);
extern void execute_10320(char*, char *);
extern void execute_10321(char*, char *);
extern void execute_10322(char*, char *);
extern void execute_10323(char*, char *);
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_100(char*, char *);
extern void execute_101(char*, char *);
extern void execute_5302(char*, char *);
extern void execute_5303(char*, char *);
extern void execute_5116(char*, char *);
extern void execute_5117(char*, char *);
extern void execute_5304(char*, char *);
extern void execute_5104(char*, char *);
extern void execute_10304(char*, char *);
extern void execute_5108(char*, char *);
extern void execute_5109(char*, char *);
extern void execute_5113(char*, char *);
extern void execute_5114(char*, char *);
extern void execute_5115(char*, char *);
extern void execute_10345(char*, char *);
extern void execute_10346(char*, char *);
extern void execute_10347(char*, char *);
extern void execute_10348(char*, char *);
extern void execute_10349(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[66] = {(funcp)execute_5110, (funcp)execute_5111, (funcp)execute_10324, (funcp)execute_10325, (funcp)execute_10326, (funcp)execute_10327, (funcp)execute_10328, (funcp)execute_10329, (funcp)execute_10330, (funcp)execute_10331, (funcp)execute_10332, (funcp)execute_10333, (funcp)execute_10334, (funcp)execute_10335, (funcp)execute_10336, (funcp)execute_10337, (funcp)execute_10338, (funcp)execute_10339, (funcp)execute_10340, (funcp)execute_10341, (funcp)execute_10342, (funcp)execute_10343, (funcp)execute_10344, (funcp)execute_5105, (funcp)execute_5106, (funcp)execute_10305, (funcp)execute_10306, (funcp)execute_10307, (funcp)execute_10308, (funcp)execute_10309, (funcp)execute_10310, (funcp)execute_10311, (funcp)execute_10312, (funcp)execute_10313, (funcp)execute_10314, (funcp)execute_10315, (funcp)execute_10316, (funcp)execute_10317, (funcp)execute_10318, (funcp)execute_10319, (funcp)execute_10320, (funcp)execute_10321, (funcp)execute_10322, (funcp)execute_10323, (funcp)execute_4, (funcp)execute_5, (funcp)execute_100, (funcp)execute_101, (funcp)execute_5302, (funcp)execute_5303, (funcp)execute_5116, (funcp)execute_5117, (funcp)execute_5304, (funcp)execute_5104, (funcp)execute_10304, (funcp)execute_5108, (funcp)execute_5109, (funcp)execute_5113, (funcp)execute_5114, (funcp)execute_5115, (funcp)execute_10345, (funcp)execute_10346, (funcp)execute_10347, (funcp)execute_10348, (funcp)execute_10349, (funcp)vlog_transfunc_eventcallback};
const int NumRelocateId= 66;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/top_tb_behav/xsim.reloc",  (void **)funcTab, 66);

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
