#!/bin/sh

#-------------------
#  dunecore fixes
#-------------------

for dname in ArtSupport DuneInterface Utilities DAQTriggerSim DuneServiceAccess Geometry DuneCommon DuneObj; do
  for exname in cc cxx h hh cpp; do
    find . -type f -name "*.${exname}" -exec sed -i s"@dune/${dname}@dunecore/${dname}@" {} +
  done
  find . -type f -name "*.txt" -exec sed -i s"@dune_${dname}@dunecore_${dname}@" {} +
done

find . -type f -name "CMakeLists.txt" -exec sed -i s"@dunetpc_inc_dir@dunecore_inc_dir@" {} +

#-------------------
#  duneprototypes fixes
#-------------------

for dname in Protodune Iceberg; do
  for exname in cc cxx h hh cpp; do
    find . -type f -name "*.${exname}" -exec sed -i s"@dune/${dname}@duneprototypes/${dname}@" {} +
  done
  find . -type f -name "*.txt" -exec sed -i s"@dune_${dname}@duneprototypes_${dname}@" {} +
done

#-------------------
#  duneopdet fixes.  This one's different as there's only one directory in it
#-------------------

for dname in OpticalDetector ; do
  for exname in cc cxx h hh cpp; do
    find . -type f -name "*.${exname}" -exec sed -i s"@dune/${dname}@duneopdet@" {} +
  done
  find . -type f -name "*.txt" -exec sed -i s"@dune_${dname}@duneopdet@" {} +
done

#-------------------
#  dunesim fixes
#-------------------

for dname in DetSim Simulation EventGenerator SpaceCharge SpaceChargeServices SimFilter PhotonPropagation DAQTriggerSim DetectorVariations LArG4; do
  for exname in cc cxx h hh cpp; do
    find . -type f -name "*.${exname}" -exec sed -i s"@dune/${dname}@dunesim/${dname}@" {} +
  done
  find . -type f -name "*.txt" -exec sed -i s"@dune_${dname}@dunesim_${dname}@" {} +
done

#-------------------
#  dunecalib fixes
#-------------------

for dname in Calib CalibServices; do
  for exname in cc cxx h hh cpp; do
    find . -type f -name "*.${exname}" -exec sed -i s"@dune/${dname}@dunecalib/${dname}@" {} +
  done
  find . -type f -name "*.txt" -exec sed -i s"@dune_${dname}@dunecalib_${dname}@" {} +
done

#-------------------
#  duneprototypes fixes
#-------------------

for dname in Protodune Iceberg 3x1x1dp BeamData; do
  for exname in cc cxx h hh cpp; do
    find . -type f -name "*.${exname}" -exec sed -i s"@dune/${dname}@duneprototypes/${dname}@" {} +
  done
  find . -type f -name "*.txt" -exec sed -i s"@dune_${dname}@duneprototypes_${dname}@" {} +
done

#-------------------
#  dunedataprep fixes
#-------------------

for dname in DataPrep CalData; do
  for exname in cc cxx h hh cpp; do
    find . -type f -name "*.${exname}" -exec sed -i s"@dune/${dname}@dunedataprep/${dname}@" {} +
  done
  find . -type f -name "*.txt" -exec sed -i s"@dune_${dname}@dunedataprep_${dname}@" {} +
done


#-------------------
#  dunereco fixes
#-------------------

for dname in AnaUtils ClusterFinderDUNE CVN DUNEPandora DUNEWireCell FDSensOpt HitFinderDUNE InfillChannels RecoAlgDUNE RegCNN SNSlicer SNUtils TrackFinderDUNE TrackPID VLNets; do
  for exname in cc cxx h hh cpp; do
    find . -type f -name "*.${exname}" -exec sed -i s"@dune/${dname}@dunereco/${dname}@" {} +
  done
  find . -type f -name "*.txt" -exec sed -i s"@dune_${dname}@dunereco_${dname}@" {} +
done

#-------------------
#  duneana fixes
#-------------------

for dname in AnaTree CAFMaker DAQSimAna EnergyStudies EventFilters HitAnalysis PandoraAnalysis ProductFilters ShowerAna SupernovaAna TrackingAna; do
  for exname in cc cxx h hh cpp; do
    find . -type f -name "*.${exname}" -exec sed -i s"@dune/${dname}@duneana/${dname}@" {} +
  done
  find . -type f -name "*.txt" -exec sed -i s"@dune_${dname}@duneana_${dname}@" {} +
done

#-------------------
#  duneexamples fixes
#-------------------

for dname in DuneExample GalleryScripts; do
  for exname in cc cxx h hh cpp; do
    find . -type f -name "*.${exname}" -exec sed -i s"@dune/${dname}@duneexamples/${dname}@" {} +
  done
  find . -type f -name "*.txt" -exec sed -i s"@dune_${dname}@duneexamples_${dname}@" {} +
done

#-------------------
#  duneconfig fixes
#-------------------

find . -type f -name "*.txt" -exec sed -i s"@dunetpc_fcl_dir@dunesw_fcl_dir@" {} +
