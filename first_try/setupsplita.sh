# source this to set up the split products before build
source ./defvars.sh

source /cvmfs/dune.opensciencegrid.org/products/dune/setup_dune.sh
export PRODUCTS=${SPLITPRODUCTS}:${PRODUCTS}
source ${SPLITDIR}/localProducts*/setup
cd ${MRB_BUILDDIR}
mrbsetenv
