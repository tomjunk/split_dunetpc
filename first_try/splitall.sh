#!/bin/sh

./makenewtmpproductsdir.sh
./split_target_newdev.sh

for suffix in core opdet sim calib prototypes dataprep reco ana examples sw; do
./makedune${suffix}.sh
./rebuild.sh
./copyproducts.sh
done
