
lef read /home/anish/workspace/openlane/pdks/sky130A/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd.tlef
if {  [info exist ::env(EXTRA_LEFS)] } {
	set lefs_in $::env(EXTRA_LEFS)
	foreach lef_file $lefs_in {
		lef read $lef_file
	}
}
def read /project/openlane/accelerator_top/runs/18-12_10-52/results/routing/accelerator_top.def
load accelerator_top -dereference
cd /project/openlane/accelerator_top/runs/18-12_10-52/results/magic/
extract do local
extract no capacitance
extract no coupling
extract no resistance
extract no adjust
extract unique
# extract warn all
extract

ext2spice lvs
ext2spice accelerator_top.ext
feedback save /project/openlane/accelerator_top/runs/18-12_10-52/logs/magic/magic_ext2spice.feedback.txt
# exec cp accelerator_top.spice /project/openlane/accelerator_top/runs/18-12_10-52/results/magic/accelerator_top.spice

