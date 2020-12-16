
lef read /home/anish/workspace/openlane/pdks/sky130A/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd.tlef
if {  [info exist ::env(EXTRA_LEFS)] } {
	set lefs_in $::env(EXTRA_LEFS)
	foreach lef_file $lefs_in {
		lef read $lef_file
	}
}
def read /project/openlane/user_project_wrapper2/runs/user_project_wrapper2/results/routing/user_project_wrapper.def
load user_project_wrapper -dereference
cd /project/openlane/user_project_wrapper2/runs/user_project_wrapper2/results/magic/
extract do local
extract no capacitance
extract no coupling
extract no resistance
extract no adjust
extract unique
# extract warn all
extract

ext2spice lvs
ext2spice user_project_wrapper.ext
feedback save /project/openlane/user_project_wrapper2/runs/user_project_wrapper2/logs/magic/magic_ext2spice.feedback.txt
# exec cp user_project_wrapper.spice /project/openlane/user_project_wrapper2/runs/user_project_wrapper2/results/magic/user_project_wrapper.spice

