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
extern void execute_3206(char*, char *);
extern void execute_3207(char*, char *);
extern void execute_6423(char*, char *);
extern void execute_6424(char*, char *);
extern void execute_6425(char*, char *);
extern void execute_6426(char*, char *);
extern void execute_6427(char*, char *);
extern void execute_6428(char*, char *);
extern void execute_6429(char*, char *);
extern void execute_6430(char*, char *);
extern void execute_6431(char*, char *);
extern void execute_6432(char*, char *);
extern void execute_6433(char*, char *);
extern void execute_6434(char*, char *);
extern void execute_6435(char*, char *);
extern void execute_6436(char*, char *);
extern void execute_6437(char*, char *);
extern void execute_6438(char*, char *);
extern void execute_6439(char*, char *);
extern void execute_6440(char*, char *);
extern void execute_6441(char*, char *);
extern void execute_6442(char*, char *);
extern void execute_6443(char*, char *);
extern void execute_3201(char*, char *);
extern void execute_3202(char*, char *);
extern void execute_6404(char*, char *);
extern void execute_6405(char*, char *);
extern void execute_6406(char*, char *);
extern void execute_6407(char*, char *);
extern void execute_6408(char*, char *);
extern void execute_6409(char*, char *);
extern void execute_6410(char*, char *);
extern void execute_6411(char*, char *);
extern void execute_6412(char*, char *);
extern void execute_6413(char*, char *);
extern void execute_6414(char*, char *);
extern void execute_6415(char*, char *);
extern void execute_6416(char*, char *);
extern void execute_6417(char*, char *);
extern void execute_6418(char*, char *);
extern void execute_6419(char*, char *);
extern void execute_6420(char*, char *);
extern void execute_6421(char*, char *);
extern void execute_6422(char*, char *);
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_196(char*, char *);
extern void execute_197(char*, char *);
extern void execute_3401(char*, char *);
extern void execute_3402(char*, char *);
extern void execute_3212(char*, char *);
extern void execute_3403(char*, char *);
extern void execute_3200(char*, char *);
extern void execute_6403(char*, char *);
extern void execute_3204(char*, char *);
extern void execute_3205(char*, char *);
extern void execute_3209(char*, char *);
extern void execute_3210(char*, char *);
extern void execute_3211(char*, char *);
extern void execute_6444(char*, char *);
extern void execute_6445(char*, char *);
extern void execute_6446(char*, char *);
extern void execute_6447(char*, char *);
extern void execute_6448(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[65] = {(funcp)execute_3206, (funcp)execute_3207, (funcp)execute_6423, (funcp)execute_6424, (funcp)execute_6425, (funcp)execute_6426, (funcp)execute_6427, (funcp)execute_6428, (funcp)execute_6429, (funcp)execute_6430, (funcp)execute_6431, (funcp)execute_6432, (funcp)execute_6433, (funcp)execute_6434, (funcp)execute_6435, (funcp)execute_6436, (funcp)execute_6437, (funcp)execute_6438, (funcp)execute_6439, (funcp)execute_6440, (funcp)execute_6441, (funcp)execute_6442, (funcp)execute_6443, (funcp)execute_3201, (funcp)execute_3202, (funcp)execute_6404, (funcp)execute_6405, (funcp)execute_6406, (funcp)execute_6407, (funcp)execute_6408, (funcp)execute_6409, (funcp)execute_6410, (funcp)execute_6411, (funcp)execute_6412, (funcp)execute_6413, (funcp)execute_6414, (funcp)execute_6415, (funcp)execute_6416, (funcp)execute_6417, (funcp)execute_6418, (funcp)execute_6419, (funcp)execute_6420, (funcp)execute_6421, (funcp)execute_6422, (funcp)execute_4, (funcp)execute_5, (funcp)execute_196, (funcp)execute_197, (funcp)execute_3401, (funcp)execute_3402, (funcp)execute_3212, (funcp)execute_3403, (funcp)execute_3200, (funcp)execute_6403, (funcp)execute_3204, (funcp)execute_3205, (funcp)execute_3209, (funcp)execute_3210, (funcp)execute_3211, (funcp)execute_6444, (funcp)execute_6445, (funcp)execute_6446, (funcp)execute_6447, (funcp)execute_6448, (funcp)vlog_transfunc_eventcallback};
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
