
lef read $::env(TECH_LEF)
if {  [info exist ::env(EXTRA_LEFS)] } {
	set lefs_in $::env(EXTRA_LEFS)
	foreach lef_file $lefs_in {
		lef read $lef_file
	}
}
def read $::env(CURRENT_DEF)
load $::env(DESIGN_NAME) -dereference
cd $::env(TMP_DIR)/magic/
select top cell

# for now, do extraction anyway; can be optimized by reading the maglef ext
# but getting many warnings
if { ! [file exists $::env(DESIGN_NAME).ext] } {
	extract do local
	extract no capacitance
	extract no coupling
	extract no resistance
	extract no adjust
	extract unique
	# extract warn all
	extract
	feedback save /project/openlane/accelerator_top/runs/17-12_22-02/logs/magic/magic_ext2spice.antenna.feedback.txt
}
antennacheck debug
antennacheck

