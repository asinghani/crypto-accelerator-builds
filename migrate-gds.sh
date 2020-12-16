if [ "$1" == "" ] || [ $# -gt 1 ]; then
    echo "Usage: $0 <path to accelerator_top run>"
    exit 0
fi

cp $1/results/routing/accelerator_top.def def/accelerator_top.def
cp $1/results/magic/accelerator_top.gds gds/accelerator_top.gds
cp $1/results/magic/accelerator_top.lef lef/accelerator_top.lef
cp $1/results/magic/accelerator_top.lef.mag maglef/accelerator_top.mag
cp $1/results/magic/accelerator_top.mag mag/accelerator_top.mag
cp $1/results/magic/accelerator_top.spice spi/lvs/accelerator_top.spice
