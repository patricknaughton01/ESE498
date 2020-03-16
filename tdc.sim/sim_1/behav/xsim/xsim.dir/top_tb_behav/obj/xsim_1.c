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
extern void execute_8318(char*, char *);
extern void execute_8319(char*, char *);
extern void execute_16724(char*, char *);
extern void execute_16725(char*, char *);
extern void execute_16726(char*, char *);
extern void execute_16727(char*, char *);
extern void execute_16728(char*, char *);
extern void execute_16729(char*, char *);
extern void execute_16730(char*, char *);
extern void execute_16731(char*, char *);
extern void execute_16732(char*, char *);
extern void execute_16733(char*, char *);
extern void execute_16734(char*, char *);
extern void execute_16735(char*, char *);
extern void execute_16736(char*, char *);
extern void execute_16737(char*, char *);
extern void execute_16738(char*, char *);
extern void execute_16739(char*, char *);
extern void execute_16740(char*, char *);
extern void execute_16741(char*, char *);
extern void execute_16742(char*, char *);
extern void execute_16743(char*, char *);
extern void execute_16744(char*, char *);
extern void execute_8313(char*, char *);
extern void execute_8314(char*, char *);
extern void execute_16705(char*, char *);
extern void execute_16706(char*, char *);
extern void execute_16707(char*, char *);
extern void execute_16708(char*, char *);
extern void execute_16709(char*, char *);
extern void execute_16710(char*, char *);
extern void execute_16711(char*, char *);
extern void execute_16712(char*, char *);
extern void execute_16713(char*, char *);
extern void execute_16714(char*, char *);
extern void execute_16715(char*, char *);
extern void execute_16716(char*, char *);
extern void execute_16717(char*, char *);
extern void execute_16718(char*, char *);
extern void execute_16719(char*, char *);
extern void execute_16720(char*, char *);
extern void execute_16721(char*, char *);
extern void execute_16722(char*, char *);
extern void execute_16723(char*, char *);
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_100(char*, char *);
extern void execute_101(char*, char *);
extern void execute_8510(char*, char *);
extern void execute_8511(char*, char *);
extern void execute_8324(char*, char *);
extern void execute_8325(char*, char *);
extern void execute_8512(char*, char *);
extern void execute_8312(char*, char *);
extern void execute_16704(char*, char *);
extern void execute_8316(char*, char *);
extern void execute_8317(char*, char *);
extern void execute_8321(char*, char *);
extern void execute_8322(char*, char *);
extern void execute_8323(char*, char *);
extern void execute_16745(char*, char *);
extern void execute_16746(char*, char *);
extern void execute_16747(char*, char *);
extern void execute_16748(char*, char *);
extern void execute_16749(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[66] = {(funcp)execute_8318, (funcp)execute_8319, (funcp)execute_16724, (funcp)execute_16725, (funcp)execute_16726, (funcp)execute_16727, (funcp)execute_16728, (funcp)execute_16729, (funcp)execute_16730, (funcp)execute_16731, (funcp)execute_16732, (funcp)execute_16733, (funcp)execute_16734, (funcp)execute_16735, (funcp)execute_16736, (funcp)execute_16737, (funcp)execute_16738, (funcp)execute_16739, (funcp)execute_16740, (funcp)execute_16741, (funcp)execute_16742, (funcp)execute_16743, (funcp)execute_16744, (funcp)execute_8313, (funcp)execute_8314, (funcp)execute_16705, (funcp)execute_16706, (funcp)execute_16707, (funcp)execute_16708, (funcp)execute_16709, (funcp)execute_16710, (funcp)execute_16711, (funcp)execute_16712, (funcp)execute_16713, (funcp)execute_16714, (funcp)execute_16715, (funcp)execute_16716, (funcp)execute_16717, (funcp)execute_16718, (funcp)execute_16719, (funcp)execute_16720, (funcp)execute_16721, (funcp)execute_16722, (funcp)execute_16723, (funcp)execute_4, (funcp)execute_5, (funcp)execute_100, (funcp)execute_101, (funcp)execute_8510, (funcp)execute_8511, (funcp)execute_8324, (funcp)execute_8325, (funcp)execute_8512, (funcp)execute_8312, (funcp)execute_16704, (funcp)execute_8316, (funcp)execute_8317, (funcp)execute_8321, (funcp)execute_8322, (funcp)execute_8323, (funcp)execute_16745, (funcp)execute_16746, (funcp)execute_16747, (funcp)execute_16748, (funcp)execute_16749, (funcp)vlog_transfunc_eventcallback};
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
