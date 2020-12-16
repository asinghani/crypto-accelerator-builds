if [ "$1" == "" ] || [ $# -gt 1 ]; then
    echo "Usage: $0 <path to accelerator_top run>"
    exit 0
fi

cp openlane/user_project_wrapper/runs/user_project_wrapper/results/synthesis/user_project_wrapper.synthesis.v verilog/gl/user_project_wrapper.v
cp $1/results/synthesis/accelerator_top.synthesis.v verilog/gl/accelerator_top.v
