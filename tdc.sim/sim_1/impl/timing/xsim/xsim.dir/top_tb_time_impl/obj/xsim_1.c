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
extern void execute_18825(char*, char *);
extern void execute_18826(char*, char *);
extern void execute_37659(char*, char *);
extern void execute_37660(char*, char *);
extern void execute_37661(char*, char *);
extern void execute_37662(char*, char *);
extern void execute_37663(char*, char *);
extern void execute_37664(char*, char *);
extern void execute_37665(char*, char *);
extern void execute_37666(char*, char *);
extern void execute_37667(char*, char *);
extern void execute_37668(char*, char *);
extern void execute_37669(char*, char *);
extern void execute_37670(char*, char *);
extern void execute_37671(char*, char *);
extern void execute_37672(char*, char *);
extern void execute_37673(char*, char *);
extern void execute_37674(char*, char *);
extern void execute_37675(char*, char *);
extern void execute_37676(char*, char *);
extern void execute_37677(char*, char *);
extern void execute_37678(char*, char *);
extern void execute_37679(char*, char *);
extern void execute_18820(char*, char *);
extern void execute_18821(char*, char *);
extern void execute_37643(char*, char *);
extern void execute_37644(char*, char *);
extern void execute_37645(char*, char *);
extern void execute_37646(char*, char *);
extern void execute_37647(char*, char *);
extern void execute_37648(char*, char *);
extern void execute_37649(char*, char *);
extern void execute_37650(char*, char *);
extern void execute_37651(char*, char *);
extern void execute_37652(char*, char *);
extern void execute_37653(char*, char *);
extern void execute_37654(char*, char *);
extern void execute_37655(char*, char *);
extern void execute_37656(char*, char *);
extern void execute_37657(char*, char *);
extern void execute_37658(char*, char *);
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_97(char*, char *);
extern void execute_98(char*, char *);
extern void execute_18921(char*, char *);
extern void execute_18922(char*, char *);
extern void execute_18831(char*, char *);
extern void execute_18923(char*, char *);
extern void execute_18823(char*, char *);
extern void execute_18824(char*, char *);
extern void execute_18828(char*, char *);
extern void execute_18829(char*, char *);
extern void execute_18830(char*, char *);
extern void execute_37680(char*, char *);
extern void execute_37681(char*, char *);
extern void execute_37682(char*, char *);
extern void execute_37683(char*, char *);
extern void execute_37684(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[60] = {(funcp)execute_18825, (funcp)execute_18826, (funcp)execute_37659, (funcp)execute_37660, (funcp)execute_37661, (funcp)execute_37662, (funcp)execute_37663, (funcp)execute_37664, (funcp)execute_37665, (funcp)execute_37666, (funcp)execute_37667, (funcp)execute_37668, (funcp)execute_37669, (funcp)execute_37670, (funcp)execute_37671, (funcp)execute_37672, (funcp)execute_37673, (funcp)execute_37674, (funcp)execute_37675, (funcp)execute_37676, (funcp)execute_37677, (funcp)execute_37678, (funcp)execute_37679, (funcp)execute_18820, (funcp)execute_18821, (funcp)execute_37643, (funcp)execute_37644, (funcp)execute_37645, (funcp)execute_37646, (funcp)execute_37647, (funcp)execute_37648, (funcp)execute_37649, (funcp)execute_37650, (funcp)execute_37651, (funcp)execute_37652, (funcp)execute_37653, (funcp)execute_37654, (funcp)execute_37655, (funcp)execute_37656, (funcp)execute_37657, (funcp)execute_37658, (funcp)execute_4, (funcp)execute_5, (funcp)execute_97, (funcp)execute_98, (funcp)execute_18921, (funcp)execute_18922, (funcp)execute_18831, (funcp)execute_18923, (funcp)execute_18823, (funcp)execute_18824, (funcp)execute_18828, (funcp)execute_18829, (funcp)execute_18830, (funcp)execute_37680, (funcp)execute_37681, (funcp)execute_37682, (funcp)execute_37683, (funcp)execute_37684, (funcp)vlog_transfunc_eventcallback};
const int NumRelocateId= 60;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/top_tb_time_impl/xsim.reloc",  (void **)funcTab, 60);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/top_tb_time_impl/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/top_tb_time_impl/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/top_tb_time_impl/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/top_tb_time_impl/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/top_tb_time_impl/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
