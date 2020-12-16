cd verilog/dv/caravel/
cp -asn $(pwd)/../../../crypto-accelerator-chip/verilog/dv/caravel/accelerator/ .

find . -type l | while read l; do
    target="$(realpath "$l")"
    ln -fs "$(realpath --relative-to="$(dirname "$(realpath -s "$l")")" "$target")" "$l"
done

cd ../../../
