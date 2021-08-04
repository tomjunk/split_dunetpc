# source this to set up the split products before build
SPLITDIR=/build/trj/split_target
SPLITPRODUCTS=/build/trj/splitproducts

source /cvmfs/dune.opensciencegrid.org/products/dune/setup_dune.sh
source ${SPLITDIR}/localProducts*/setup
export PRODUCTS=${SPLITPRODUCTS}:${PRODUCTS}
cd ${MRB_BUILDDIR}
mrbsetenv
