ifeq ($(strip $(RecoTracker/TrackProducer)),)
RecoTrackerTrackProducer := cmssw/RecoTracker/TrackProducer
RecoTracker/TrackProducer := RecoTrackerTrackProducer
RecoTrackerTrackProducer_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoTrackerTrackProducer_EX_USE := $(foreach d, cmssw  TrackingTools/GsfTools DataFormats/Common DataFormats/GsfTrackReco DataFormats/SiPixelDetId DataFormats/SiStripDetId DataFormats/TrackReco DataFormats/TrackingRecHit DataFormats/TrajectorySeed DataFormats/TrackerCommon FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet Geometry/CommonDetUnit Geometry/Records Geometry/TrackerGeometryBuilder MagneticField/Engine MagneticField/Records RecoTracker/TkNavigation RecoTracker/MeasurementDet TrackingTools/GeomPropagators TrackingTools/PatternTools TrackingTools/Records TrackingTools/TrackFitters TrackingTools/TrajectoryState TrackingTools/KalmanUpdators Utilities/General,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoTrackerTrackProducer_EX_LIB   := RecoTrackerTrackProducer
ALL_EXTERNAL_PRODS += RecoTrackerTrackProducer
endif
ifeq ($(strip $(DQM/HLTEvF)),)
DQMHLTEvF := cmssw/DQM/HLTEvF
DQM/HLTEvF := DQMHLTEvF
DQMHLTEvF_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMHLTEvF_EX_USE := $(foreach d, cmssw  DQMServices/Core DataFormats/Common DataFormats/HLTReco DataFormats/Provenance DataFormats/BTauReco DataFormats/TauReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Services FWCore/Utilities Geometry/CaloGeometry Geometry/CaloTopology RecoEcal/EgammaCoreTools HLTrigger/HLTcore rootcore,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMHLTEvF_EX_LIB   := DQMHLTEvF
ALL_EXTERNAL_PRODS += DQMHLTEvF
endif
ifeq ($(strip $(SimDataFormats/ValidationFormats)),)
SimDataFormatsValidationFormats := cmssw/SimDataFormats/ValidationFormats
SimDataFormats/ValidationFormats := SimDataFormatsValidationFormats
SimDataFormatsValidationFormats_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimDataFormatsValidationFormats_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/GeometryVector clhep geant4 rootrflx expat,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimDataFormatsValidationFormats_EX_LIB   := SimDataFormatsValidationFormats
ALL_EXTERNAL_PRODS += SimDataFormatsValidationFormats
endif
ifeq ($(strip $(DataFormats/RPCDigi)),)
DataFormatsRPCDigi := cmssw/DataFormats/RPCDigi
DataFormats/RPCDigi := DataFormatsRPCDigi
DataFormatsRPCDigi_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsRPCDigi_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/MuonDetId CondFormats/RPCObjects boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsRPCDigi_EX_LIB   := DataFormatsRPCDigi
ALL_EXTERNAL_PRODS += DataFormatsRPCDigi
endif
ifeq ($(strip $(TrackingTools/GeomPropagators)),)
TrackingToolsGeomPropagators := cmssw/TrackingTools/GeomPropagators
TrackingTools/GeomPropagators := TrackingToolsGeomPropagators
TrackingToolsGeomPropagators_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TrackingToolsGeomPropagators_EX_USE := $(foreach d, cmssw  FWCore/MessageLogger FWCore/Utilities DataFormats/GeometrySurface TrackingTools/AnalyticalJacobians TrackingTools/TrajectoryState vdt,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TrackingToolsGeomPropagators_EX_LIB   := TrackingToolsGeomPropagators
ALL_EXTERNAL_PRODS += TrackingToolsGeomPropagators
endif
ifeq ($(strip $(CondCore/IOVService)),)
CondCoreIOVService := cmssw/CondCore/IOVService
CondCore/IOVService := CondCoreIOVService
CondCoreIOVService_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondCoreIOVService_EX_USE := $(foreach d, cmssw  CondFormats/Common CondCore/DBCommon CondCore/MetaDataService,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondCoreIOVService_EX_LIB   := CondCoreIOVService
ALL_EXTERNAL_PRODS += CondCoreIOVService
endif
ifeq ($(strip $(JetMETCorrections/Type1MET)),)
JetMETCorrectionsType1MET := cmssw/JetMETCorrections/Type1MET
JetMETCorrections/Type1MET := JetMETCorrectionsType1MET
JetMETCorrectionsType1MET_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
JetMETCorrectionsType1MET_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities CondFormats/EgammaObjects DataFormats/Candidate DataFormats/JetReco DataFormats/ParticleFlowCandidate DataFormats/Math DataFormats/METReco DataFormats/MuonReco DataFormats/TauReco DataFormats/VertexReco JetMETCorrections/Objects root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
JetMETCorrectionsType1MET_EX_LIB   := JetMETCorrectionsType1MET
ALL_EXTERNAL_PRODS += JetMETCorrectionsType1MET
endif
ifeq ($(strip $(L1Trigger/GlobalTriggerAnalyzer)),)
L1TriggerGlobalTriggerAnalyzer := cmssw/L1Trigger/GlobalTriggerAnalyzer
L1Trigger/GlobalTriggerAnalyzer := L1TriggerGlobalTriggerAnalyzer
L1TriggerGlobalTriggerAnalyzer_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
L1TriggerGlobalTriggerAnalyzer_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/ParameterSet DataFormats/Common DataFormats/L1GlobalTrigger DataFormats/L1GlobalMuonTrigger DataFormats/L1GlobalCaloTrigger DataFormats/L1Trigger CondFormats/L1TObjects CondFormats/DataRecord CommonTools/UtilAlgos,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
L1TriggerGlobalTriggerAnalyzer_EX_LIB   := L1TriggerGlobalTriggerAnalyzer
ALL_EXTERNAL_PRODS += L1TriggerGlobalTriggerAnalyzer
endif
ifeq ($(strip $(RecoLuminosity/LumiProducer)),)
RecoLuminosityLumiProducer := cmssw/RecoLuminosity/LumiProducer
RecoLuminosity/LumiProducer := RecoLuminosityLumiProducer
RecoLuminosityLumiProducer_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoLuminosityLumiProducer_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet CoralBase RelationalAccess FWCore/ServiceRegistry FWCore/Utilities FWCore/Concurrency,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoLuminosityLumiProducer_EX_LIB   := RecoLuminosityLumiProducer
ALL_EXTERNAL_PRODS += RecoLuminosityLumiProducer
endif
ifeq ($(strip $(FastSimulation/CaloGeometryTools)),)
FastSimulationCaloGeometryTools := cmssw/FastSimulation/CaloGeometryTools
FastSimulation/CaloGeometryTools := FastSimulationCaloGeometryTools
FastSimulationCaloGeometryTools_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FastSimulationCaloGeometryTools_EX_USE := $(foreach d, cmssw  DataFormats/DetId DataFormats/EcalDetId DataFormats/GeometryVector DataFormats/Math FWCore/MessageLogger FWCore/ParameterSet FastSimulation/CalorimeterProperties Geometry/CaloGeometry Geometry/CaloTopology Geometry/EcalAlgo clhep rootmath,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FastSimulationCaloGeometryTools_EX_LIB   := FastSimulationCaloGeometryTools
ALL_EXTERNAL_PRODS += FastSimulationCaloGeometryTools
endif
ifeq ($(strip $(TrackPropagation/Geant4e)),)
TrackPropagationGeant4e := cmssw/TrackPropagation/Geant4e
TrackPropagation/Geant4e := TrackPropagationGeant4e
TrackPropagationGeant4e_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TrackPropagationGeant4e_EX_USE := $(foreach d, cmssw  root geant4 boost FWCore/ParameterSet FWCore/Utilities TrackingTools/GeomPropagators TrackingTools/Records TrackingTools/TrajectoryState FWCore/Framework FWCore/MessageLogger DataFormats/CLHEP clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TrackPropagationGeant4e_EX_LIB   := TrackPropagationGeant4e
ALL_EXTERNAL_PRODS += TrackPropagationGeant4e
endif
ifeq ($(strip $(GeneratorInterface/AlpgenInterface)),)
GeneratorInterfaceAlpgenInterface := cmssw/GeneratorInterface/AlpgenInterface
GeneratorInterface/AlpgenInterface := GeneratorInterfaceAlpgenInterface
GeneratorInterfaceAlpgenInterface_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeneratorInterfaceAlpgenInterface_EX_USE := $(foreach d, cmssw  boost root DataFormats/Math SimDataFormats/GeneratorProducts f77compiler,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeneratorInterfaceAlpgenInterface_EX_LIB   := GeneratorInterfaceAlpgenInterface
ALL_EXTERNAL_PRODS += GeneratorInterfaceAlpgenInterface
endif
ifeq ($(strip $(DataFormats/Common)),)
DataFormatsCommon := cmssw/DataFormats/Common
DataFormats/Common := DataFormatsCommon
DataFormatsCommon_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsCommon_EX_USE := $(foreach d, cmssw  DataFormats/Provenance FWCore/MessageLogger FWCore/Utilities DataFormats/StdDictionaries boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsCommon_EX_LIB   := DataFormatsCommon
ALL_EXTERNAL_PRODS += DataFormatsCommon
endif
ifeq ($(strip $(CondFormats/BTauObjects)),)
CondFormatsBTauObjects := cmssw/CondFormats/BTauObjects
CondFormats/BTauObjects := CondFormatsBTauObjects
CondFormatsBTauObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondFormatsBTauObjects_EX_USE := $(foreach d, cmssw  CondFormats/Common FWCore/MessageLogger FWCore/Utilities boost rootrflx CondFormats/PhysicsToolsObjects,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsBTauObjects_EX_LIB   := CondFormatsBTauObjects
ALL_EXTERNAL_PRODS += CondFormatsBTauObjects
endif
ifeq ($(strip $(Calibration/EcalCalibAlgos)),)
CalibrationEcalCalibAlgos := cmssw/Calibration/EcalCalibAlgos
Calibration/EcalCalibAlgos := CalibrationEcalCalibAlgos
CalibrationEcalCalibAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibrationEcalCalibAlgos_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DataFormats/EcalRecHit DataFormats/EcalDetId DataFormats/EgammaReco DataFormats/TrackReco DataFormats/EgammaCandidates CondFormats/EcalObjects CondFormats/DataRecord RecoLocalCalo/EcalRecAlgos Geometry/CaloGeometry Geometry/CaloTopology RecoEcal/EgammaClusterAlgos Geometry/EcalAlgo DataFormats/Math RecoEcal/EgammaCoreTools root xerces-c Calibration/Tools CalibCalorimetry/CaloMiscalibTools CondTools/Ecal SimDataFormats/GeneratorProducts,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibrationEcalCalibAlgos_EX_LIB   := CalibrationEcalCalibAlgos
ALL_EXTERNAL_PRODS += CalibrationEcalCalibAlgos
endif
ifeq ($(strip $(EventFilter/CSCRawToDigi)),)
EventFilterCSCRawToDigi := cmssw/EventFilter/CSCRawToDigi
EventFilter/CSCRawToDigi := EventFilterCSCRawToDigi
EventFilterCSCRawToDigi_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
EventFilterCSCRawToDigi_EX_USE := $(foreach d, cmssw  DataFormats/CSCDigi FWCore/Framework DataFormats/FEDRawData CondFormats/CSCObjects FWCore/MessageLogger FWCore/Utilities CondFormats/DataRecord DataFormats/L1CSCTrackFinder,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
EventFilterCSCRawToDigi_EX_LIB   := EventFilterCSCRawToDigi
ALL_EXTERNAL_PRODS += EventFilterCSCRawToDigi
endif
ifeq ($(strip $(SimG4Core/Geometry)),)
SimG4CoreGeometry := cmssw/SimG4Core/Geometry
SimG4Core/Geometry := SimG4CoreGeometry
SimG4CoreGeometry_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CoreGeometry_EX_USE := $(foreach d, cmssw  DetectorDescription/Core geant4core Geometry/Records FWCore/MessageLogger FWCore/Utilities expat,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CoreGeometry_EX_LIB   := SimG4CoreGeometry
ALL_EXTERNAL_PRODS += SimG4CoreGeometry
endif
ifeq ($(strip $(FWCore/TFWLiteSelector)),)
FWCoreTFWLiteSelector := cmssw/FWCore/TFWLiteSelector
FWCore/TFWLiteSelector := FWCoreTFWLiteSelector
FWCoreTFWLiteSelector_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCoreTFWLiteSelector_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/Provenance FWCore/Framework FWCore/ParameterSet FWCore/Utilities rootcore,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCoreTFWLiteSelector_EX_LIB   := FWCoreTFWLiteSelector
ALL_EXTERNAL_PRODS += FWCoreTFWLiteSelector
endif
ifeq ($(strip $(CommonTools/RecoAlgos)),)
CommonToolsRecoAlgos := cmssw/CommonTools/RecoAlgos
CommonTools/RecoAlgos := CommonToolsRecoAlgos
CommonToolsRecoAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CommonToolsRecoAlgos_EX_USE := $(foreach d, cmssw  SimGeneral/HepPDTRecord DataFormats/RecoCandidate FWCore/Framework FWCore/ParameterSet DataFormats/TrackReco DataFormats/MuonReco DataFormats/TrackingRecHit DataFormats/SiStripCluster DataFormats/SiPixelCluster DataFormats/TrackerRecHit2D DataFormats/METReco,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CommonToolsRecoAlgos_EX_LIB   := CommonToolsRecoAlgos
ALL_EXTERNAL_PRODS += CommonToolsRecoAlgos
endif
ifeq ($(strip $(DetectorDescription/Core)),)
DetectorDescriptionCore := cmssw/DetectorDescription/Core
DetectorDescription/Core := DetectorDescriptionCore
DetectorDescriptionCore_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DetectorDescriptionCore_EX_USE := $(foreach d, cmssw  DetectorDescription/Base DetectorDescription/ExprAlgo FWCore/Utilities FWCore/MessageLogger boost rootmath,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DetectorDescriptionCore_EX_LIB   := DetectorDescriptionCore
ALL_EXTERNAL_PRODS += DetectorDescriptionCore
endif
ifeq ($(strip $(RecoTracker/TkHitPairs)),)
RecoTrackerTkHitPairs := cmssw/RecoTracker/TkHitPairs
RecoTracker/TkHitPairs := RecoTrackerTkHitPairs
RecoTrackerTkHitPairs_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoTrackerTkHitPairs_EX_USE := $(foreach d, cmssw  clhep boost RecoTracker/Record RecoTracker/TkDetLayers FWCore/ParameterSet TrackingTools/DetLayers DataFormats/TrackerRecHit2D FWCore/Framework DataFormats/SiStripDetId TrackingTools/TransientTrackingRecHit RecoTracker/TkMSParametrization RecoTracker/TkSeedingLayers,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoTrackerTkHitPairs_EX_LIB   := RecoTrackerTkHitPairs
ALL_EXTERNAL_PRODS += RecoTrackerTkHitPairs
endif
ifeq ($(strip $(AnalysisDataFormats/Egamma)),)
AnalysisDataFormatsEgamma := cmssw/AnalysisDataFormats/Egamma
AnalysisDataFormats/Egamma := AnalysisDataFormatsEgamma
AnalysisDataFormatsEgamma_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AnalysisDataFormatsEgamma_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/Math rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AnalysisDataFormatsEgamma_EX_LIB   := AnalysisDataFormatsEgamma
ALL_EXTERNAL_PRODS += AnalysisDataFormatsEgamma
endif
ifeq ($(strip $(CondCore/DBCommon)),)
CondCoreDBCommon := cmssw/CondCore/DBCommon
CondCore/DBCommon := CondCoreDBCommon
CondCoreDBCommon_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondCoreDBCommon_EX_USE := $(foreach d, cmssw  boost CoralCommon CoralKernel RelationalAccess FWCore/Framework FWCore/Concurrency CondCore/ORA,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondCoreDBCommon_EX_LIB   := CondCoreDBCommon
ALL_EXTERNAL_PRODS += CondCoreDBCommon
endif
ifeq ($(strip $(SimG4CMS/Tracker)),)
SimG4CMSTracker := cmssw/SimG4CMS/Tracker
SimG4CMS/Tracker := SimG4CMSTracker
SimG4CMSTracker_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CMSTracker_EX_USE := $(foreach d, cmssw  FWCore/ParameterSet SimG4Core/SensitiveDetector SimG4Core/Notification Geometry/TrackerNumberingBuilder boost geant4core SimDataFormats/SimHitMaker SimG4Core/Application,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CMSTracker_EX_LIB   := SimG4CMSTracker
ALL_EXTERNAL_PRODS += SimG4CMSTracker
endif
ifeq ($(strip $(L1Trigger/DTUtilities)),)
L1TriggerDTUtilities := cmssw/L1Trigger/DTUtilities
L1Trigger/DTUtilities := L1TriggerDTUtilities
L1TriggerDTUtilities_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
L1TriggerDTUtilities_EX_USE := $(foreach d, cmssw  FWCore/PluginManager FWCore/ParameterSet Geometry/DTGeometry L1TriggerConfig/DTTPGConfig clhep root rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
L1TriggerDTUtilities_EX_LIB   := L1TriggerDTUtilities
ALL_EXTERNAL_PRODS += L1TriggerDTUtilities
endif
ifeq ($(strip $(HLTrigger/Timer)),)
HLTriggerTimer := cmssw/HLTrigger/Timer
HLTrigger/Timer := HLTriggerTimer
HLTriggerTimer_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
HLTriggerTimer_EX_USE := $(foreach d, cmssw  DataFormats/HLTReco DataFormats/Provenance FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities DQMServices/Core sigcpp sockets,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
HLTriggerTimer_EX_LIB   := HLTriggerTimer
ALL_EXTERNAL_PRODS += HLTriggerTimer
endif
ifeq ($(strip $(DataFormats/SiPixelDigi)),)
DataFormatsSiPixelDigi := cmssw/DataFormats/SiPixelDigi
DataFormats/SiPixelDigi := DataFormatsSiPixelDigi
DataFormatsSiPixelDigi_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsSiPixelDigi_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/SiPixelDetId rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsSiPixelDigi_EX_LIB   := DataFormatsSiPixelDigi
ALL_EXTERNAL_PRODS += DataFormatsSiPixelDigi
endif
ifeq ($(strip $(CondFormats/CSCObjects)),)
CondFormatsCSCObjects := cmssw/CondFormats/CSCObjects
CondFormats/CSCObjects := CondFormatsCSCObjects
CondFormatsCSCObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondFormatsCSCObjects_EX_USE := $(foreach d, cmssw  DataFormats/MuonDetId FWCore/MessageLogger FWCore/ParameterSet rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsCSCObjects_EX_LIB   := CondFormatsCSCObjects
ALL_EXTERNAL_PRODS += CondFormatsCSCObjects
endif
ifeq ($(strip $(CaloOnlineTools/EcalTools)),)
CaloOnlineToolsEcalTools := cmssw/CaloOnlineTools/EcalTools
CaloOnlineTools/EcalTools := CaloOnlineToolsEcalTools
CaloOnlineToolsEcalTools_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CaloOnlineToolsEcalTools_EX_USE := $(foreach d, cmssw  root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CaloOnlineToolsEcalTools_EX_LIB   := CaloOnlineToolsEcalTools
ALL_EXTERNAL_PRODS += CaloOnlineToolsEcalTools
endif
ifeq ($(strip $(DataFormats/HcalIsolatedTrack)),)
DataFormatsHcalIsolatedTrack := cmssw/DataFormats/HcalIsolatedTrack
DataFormats/HcalIsolatedTrack := DataFormatsHcalIsolatedTrack
DataFormatsHcalIsolatedTrack_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsHcalIsolatedTrack_EX_USE := $(foreach d, cmssw  DataFormats/Candidate DataFormats/Common DataFormats/Math DataFormats/RecoCandidate DataFormats/TrackReco FWCore/MessageLogger rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsHcalIsolatedTrack_EX_LIB   := DataFormatsHcalIsolatedTrack
ALL_EXTERNAL_PRODS += DataFormatsHcalIsolatedTrack
endif
ifeq ($(strip $(FWCore/PythonParameterSet)),)
FWCorePythonParameterSet := cmssw/FWCore/PythonParameterSet
FWCore/PythonParameterSet := FWCorePythonParameterSet
FWCorePythonParameterSet_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCorePythonParameterSet_EX_USE := $(foreach d, cmssw  DataFormats/Provenance FWCore/ParameterSet FWCore/Utilities boost boost_python,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCorePythonParameterSet_EX_LIB   := FWCorePythonParameterSet
ALL_EXTERNAL_PRODS += FWCorePythonParameterSet
endif
ifeq ($(strip $(TrackingTools/GsfTracking)),)
TrackingToolsGsfTracking := cmssw/TrackingTools/GsfTracking
TrackingTools/GsfTracking := TrackingToolsGsfTracking
TrackingToolsGsfTracking_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TrackingToolsGsfTracking_EX_USE := $(foreach d, cmssw  boost clhep DataFormats/TrajectorySeed FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities DataFormats/GeometrySurface TrackingTools/GeomPropagators TrackingTools/GsfTools TrackingTools/KalmanUpdators TrackingTools/PatternTools TrackingTools/Records TrackingTools/TrackFitters TrackingTools/TrajectoryState TrackingTools/TransientTrackingRecHit DataFormats/BeamSpot DataFormats/VertexReco DataFormats/GsfTrackReco Geometry/Records Geometry/TrackerGeometryBuilder MagneticField/Engine MagneticField/Records,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TrackingToolsGsfTracking_EX_LIB   := TrackingToolsGsfTracking
ALL_EXTERNAL_PRODS += TrackingToolsGsfTracking
endif
ifeq ($(strip $(SimCalorimetry/EcalTrigPrimAlgos)),)
SimCalorimetryEcalTrigPrimAlgos := cmssw/SimCalorimetry/EcalTrigPrimAlgos
SimCalorimetry/EcalTrigPrimAlgos := SimCalorimetryEcalTrigPrimAlgos
SimCalorimetryEcalTrigPrimAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimCalorimetryEcalTrigPrimAlgos_EX_USE := $(foreach d, cmssw  DataFormats/EcalDigi DataFormats/EcalDetId CondFormats/L1TObjects CondFormats/EcalObjects CondFormats/DataRecord Geometry/CaloTopology Geometry/CaloGeometry Geometry/Records Geometry/EcalMapping FWCore/Framework FWCore/Utilities clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimCalorimetryEcalTrigPrimAlgos_EX_LIB   := SimCalorimetryEcalTrigPrimAlgos
ALL_EXTERNAL_PRODS += SimCalorimetryEcalTrigPrimAlgos
endif
ifeq ($(strip $(DataFormats/METObjects)),)
DataFormatsMETObjects := cmssw/DataFormats/METObjects
DataFormats/METObjects := DataFormatsMETObjects
DataFormatsMETObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsMETObjects_EX_USE := $(foreach d, cmssw  DataFormats/Common rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsMETObjects_EX_LIB   := DataFormatsMETObjects
ALL_EXTERNAL_PRODS += DataFormatsMETObjects
endif
ifeq ($(strip $(SimMuon/CSCDigitizer)),)
SimMuonCSCDigitizer := cmssw/SimMuon/CSCDigitizer
SimMuon/CSCDigitizer := SimMuonCSCDigitizer
SimMuonCSCDigitizer_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimMuonCSCDigitizer_EX_USE := $(foreach d, cmssw  CalibMuon/CSCCalibration CondFormats/CSCObjects DataFormats/CSCDigi DataFormats/GeometryVector DataFormats/MuonDetId FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities FWCore/PluginManager Geometry/CSCGeometry Geometry/Records MagneticField/Engine MagneticField/Records SimDataFormats/GeneratorProducts SimDataFormats/TrackingHit SimGeneral/HepPDTRecord SimMuon/Neutron Utilities/General boost clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimMuonCSCDigitizer_EX_LIB   := SimMuonCSCDigitizer
ALL_EXTERNAL_PRODS += SimMuonCSCDigitizer
endif
ifeq ($(strip $(Calibration/IsolatedParticles)),)
CalibrationIsolatedParticles := cmssw/Calibration/IsolatedParticles
Calibration/IsolatedParticles := CalibrationIsolatedParticles
CalibrationIsolatedParticles_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibrationIsolatedParticles_EX_USE := $(foreach d, cmssw  clhep boost root FWCore/Utilities FWCore/Framework FWCore/PluginManager FWCore/ParameterSet FWCore/Services FWCore/ServiceRegistry FWCore/MessageLogger CondFormats/DataRecord MagneticField/Engine MagneticField/Records Utilities/Timing DataFormats/DetId DataFormats/EcalDetId DataFormats/HcalDetId DataFormats/EcalRecHit DataFormats/HcalRecHit DataFormats/Common DataFormats/TrackReco DataFormats/EgammaReco DataFormats/Provenance SimDataFormats/CaloHit SimDataFormats/Track SimDataFormats/GeneratorProducts SimDataFormats/Vertex SimTracker/TrackerHitAssociation SimGeneral/HepPDTRecord Geometry/CaloGeometry Geometry/CommonDetUnit Geometry/TrackerGeometryBuilder Geometry/EcalAlgo Geometry/CaloTopology Geometry/Records RecoLocalCalo/EcalRecAlgos TrackingTools/TrajectoryState TrackingTools/GeomPropagators TrackingTools/TrackAssociator,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibrationIsolatedParticles_EX_LIB   := CalibrationIsolatedParticles
ALL_EXTERNAL_PRODS += CalibrationIsolatedParticles
endif
ifeq ($(strip $(Utilities/RFIOAdaptor)),)
UtilitiesRFIOAdaptor := cmssw/Utilities/RFIOAdaptor
Utilities/RFIOAdaptor := UtilitiesRFIOAdaptor
UtilitiesRFIOAdaptor_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
UtilitiesRFIOAdaptor_EX_USE := $(foreach d, cmssw  Utilities/StorageFactory FWCore/MessageLogger FWCore/Utilities FWCore/PluginManager,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
UtilitiesRFIOAdaptor_EX_LIB   := UtilitiesRFIOAdaptor
ALL_EXTERNAL_PRODS += UtilitiesRFIOAdaptor
endif
ifeq ($(strip $(SimDataFormats/RPCDigiSimLink)),)
SimDataFormatsRPCDigiSimLink := cmssw/SimDataFormats/RPCDigiSimLink
SimDataFormats/RPCDigiSimLink := SimDataFormatsRPCDigiSimLink
SimDataFormatsRPCDigiSimLink_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimDataFormatsRPCDigiSimLink_EX_USE := $(foreach d, cmssw  DataFormats/Common SimDataFormats/EncodedEventId SimDataFormats/TrackingHit boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimDataFormatsRPCDigiSimLink_EX_LIB   := SimDataFormatsRPCDigiSimLink
ALL_EXTERNAL_PRODS += SimDataFormatsRPCDigiSimLink
endif
ifeq ($(strip $(L1Trigger/RegionalCaloTrigger)),)
L1TriggerRegionalCaloTrigger := cmssw/L1Trigger/RegionalCaloTrigger
L1Trigger/RegionalCaloTrigger := L1TriggerRegionalCaloTrigger
L1TriggerRegionalCaloTrigger_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
L1TriggerRegionalCaloTrigger_EX_USE := $(foreach d, cmssw  boost FWCore/Framework FWCore/ParameterSet FWCore/PluginManager FWCore/Utilities DataFormats/L1CaloTrigger DataFormats/EcalDigi DataFormats/EcalDetId DataFormats/HcalDigi DataFormats/HcalDetId CalibFormats/CaloTPG CalibCalorimetry/EcalTPGTools CondFormats/L1TObjects CondFormats/DataRecord clhep DataFormats/JetReco DataFormats/EgammaCandidates DataFormats/HepMCCandidate CalibFormats/HcalObjects CondFormats/RunInfo root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
L1TriggerRegionalCaloTrigger_EX_LIB   := L1TriggerRegionalCaloTrigger
ALL_EXTERNAL_PRODS += L1TriggerRegionalCaloTrigger
endif
ifeq ($(strip $(CondFormats/DataRecord)),)
CondFormatsDataRecord := cmssw/CondFormats/DataRecord
CondFormats/DataRecord := CondFormatsDataRecord
CondFormatsDataRecord_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondFormatsDataRecord_EX_USE := $(foreach d, cmssw  FWCore/Framework Geometry/Records,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsDataRecord_EX_LIB   := CondFormatsDataRecord
ALL_EXTERNAL_PRODS += CondFormatsDataRecord
endif
ifeq ($(strip $(RecoBTag/Records)),)
RecoBTagRecords := cmssw/RecoBTag/Records
RecoBTag/Records := RecoBTagRecords
RecoBTagRecords_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoBTagRecords_EX_USE := $(foreach d, cmssw  FWCore/Framework CondFormats/DataRecord,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoBTagRecords_EX_LIB   := RecoBTagRecords
ALL_EXTERNAL_PRODS += RecoBTagRecords
endif
ifeq ($(strip $(PerfTools/EdmEvent)),)
PerfToolsEdmEvent := cmssw/PerfTools/EdmEvent
PerfTools/EdmEvent := PerfToolsEdmEvent
PerfToolsEdmEvent_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
PerfToolsEdmEvent_EX_USE := $(foreach d, cmssw  FWCore/FWLite rootgraphics boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PerfToolsEdmEvent_EX_LIB   := PerfToolsEdmEvent
ALL_EXTERNAL_PRODS += PerfToolsEdmEvent
endif
ifeq ($(strip $(RecoTracker/TkDetLayers)),)
RecoTrackerTkDetLayers := cmssw/RecoTracker/TkDetLayers
RecoTracker/TkDetLayers := RecoTrackerTkDetLayers
RecoTrackerTkDetLayers_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoTrackerTkDetLayers_EX_USE := $(foreach d, cmssw  TrackingTools/DetLayers TrackingTools/GeomPropagators TrackingTools/PatternTools clhep Utilities/General DataFormats/SiStripDetId DataFormats/SiPixelDetId Geometry/TrackerGeometryBuilder FWCore/MessageLogger,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoTrackerTkDetLayers_EX_LIB   := RecoTrackerTkDetLayers
ALL_EXTERNAL_PRODS += RecoTrackerTkDetLayers
endif
ifeq ($(strip $(SimDataFormats/TrackerDigiSimLink)),)
SimDataFormatsTrackerDigiSimLink := cmssw/SimDataFormats/TrackerDigiSimLink
SimDataFormats/TrackerDigiSimLink := SimDataFormatsTrackerDigiSimLink
SimDataFormatsTrackerDigiSimLink_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimDataFormatsTrackerDigiSimLink_EX_USE := $(foreach d, cmssw  DataFormats/Common SimDataFormats/EncodedEventId boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimDataFormatsTrackerDigiSimLink_EX_LIB   := SimDataFormatsTrackerDigiSimLink
ALL_EXTERNAL_PRODS += SimDataFormatsTrackerDigiSimLink
endif
ifeq ($(strip $(RecoBTag/SecondaryVertex)),)
RecoBTagSecondaryVertex := cmssw/RecoBTag/SecondaryVertex
RecoBTag/SecondaryVertex := RecoBTagSecondaryVertex
RecoBTagSecondaryVertex_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoBTagSecondaryVertex_EX_USE := $(foreach d, cmssw  FWCore/ParameterSet FWCore/Utilities DataFormats/Math DataFormats/TrackReco DataFormats/VertexReco DataFormats/BTauReco DataFormats/PatCandidates rootmath,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoBTagSecondaryVertex_EX_LIB   := RecoBTagSecondaryVertex
ALL_EXTERNAL_PRODS += RecoBTagSecondaryVertex
endif
ifeq ($(strip $(MuonAnalysis/MuonAssociators)),)
MuonAnalysisMuonAssociators := cmssw/MuonAnalysis/MuonAssociators
MuonAnalysis/MuonAssociators := MuonAnalysisMuonAssociators
MuonAnalysisMuonAssociators_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
MuonAnalysisMuonAssociators_EX_USE := $(foreach d, cmssw  CommonTools/Utils DataFormats/CLHEP DataFormats/Candidate DataFormats/GeometrySurface DataFormats/HepMCCandidate DataFormats/L1Trigger DataFormats/Math DataFormats/RecoCandidate DataFormats/TrackReco DataFormats/CSCRecHit DataFormats/CSCDigi DataFormats/L1CSCTrackFinder FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities Geometry/CommonDetUnit Geometry/Records L1Trigger/CSCTrackFinder MagneticField/Engine MagneticField/Records RecoMuon/DetLayers RecoMuon/Records TrackingTools/DetLayers TrackingTools/GeomPropagators TrackingTools/KalmanUpdators TrackingTools/PatternTools TrackingTools/Records TrackingTools/TrajectoryState SimDataFormats/Track SimDataFormats/Vertex,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
MuonAnalysisMuonAssociators_EX_LIB   := MuonAnalysisMuonAssociators
ALL_EXTERNAL_PRODS += MuonAnalysisMuonAssociators
endif
ifeq ($(strip $(L1TriggerConfig/DTTPGConfig)),)
L1TriggerConfigDTTPGConfig := cmssw/L1TriggerConfig/DTTPGConfig
L1TriggerConfig/DTTPGConfig := L1TriggerConfigDTTPGConfig
L1TriggerConfigDTTPGConfig_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
L1TriggerConfigDTTPGConfig_EX_USE := $(foreach d, cmssw  DataFormats/MuonDetId FWCore/Framework CondFormats/DTObjects CondFormats/DataRecord CondCore/DBOutputService rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
L1TriggerConfigDTTPGConfig_EX_LIB   := L1TriggerConfigDTTPGConfig
ALL_EXTERNAL_PRODS += L1TriggerConfigDTTPGConfig
endif
ifeq ($(strip $(CondFormats/SiStripObjects)),)
CondFormatsSiStripObjects := cmssw/CondFormats/SiStripObjects
CondFormats/SiStripObjects := CondFormatsSiStripObjects
CondFormatsSiStripObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondFormatsSiStripObjects_EX_USE := $(foreach d, cmssw  CondFormats/Common DataFormats/SiStripCommon DataFormats/SiStripDetId DataFormats/FEDRawData FWCore/MessageLogger FWCore/Utilities boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsSiStripObjects_EX_LIB   := CondFormatsSiStripObjects
ALL_EXTERNAL_PRODS += CondFormatsSiStripObjects
endif
ifeq ($(strip $(DataFormats/PatCandidates)),)
DataFormatsPatCandidates := cmssw/DataFormats/PatCandidates
DataFormats/PatCandidates := DataFormatsPatCandidates
DataFormatsPatCandidates_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsPatCandidates_EX_USE := $(foreach d, cmssw  FWCore/Utilities FWCore/Common DataFormats/Common DataFormats/StdDictionaries DataFormats/Candidate DataFormats/MuonReco DataFormats/TauReco DataFormats/JetReco DataFormats/METReco DataFormats/EgammaCandidates DataFormats/ParticleFlowCandidate DataFormats/TrackReco DataFormats/HepMCCandidate DataFormats/BTauReco CondFormats/L1TObjects DataFormats/L1Trigger DataFormats/HLTReco boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsPatCandidates_EX_LIB   := DataFormatsPatCandidates
ALL_EXTERNAL_PRODS += DataFormatsPatCandidates
endif
ifeq ($(strip $(Validation/CSCRecHits)),)
ValidationCSCRecHits := cmssw/Validation/CSCRecHits
Validation/CSCRecHits := ValidationCSCRecHits
ValidationCSCRecHits_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
ValidationCSCRecHits_EX_USE := $(foreach d, cmssw  DataFormats/CSCRecHit DQMServices/Core FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry Geometry/CSCGeometry Geometry/Records SimMuon/MCTruth Validation/MuonCSCDigis,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ValidationCSCRecHits_EX_LIB   := ValidationCSCRecHits
ALL_EXTERNAL_PRODS += ValidationCSCRecHits
endif
ifeq ($(strip $(DataFormats/RecoCandidate)),)
DataFormatsRecoCandidate := cmssw/DataFormats/RecoCandidate
DataFormats/RecoCandidate := DataFormatsRecoCandidate
DataFormatsRecoCandidate_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsRecoCandidate_EX_USE := $(foreach d, cmssw  DataFormats/CaloRecHit DataFormats/Candidate DataFormats/Common DataFormats/TrackReco clhep SimDataFormats/GeneratorProducts rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsRecoCandidate_EX_LIB   := DataFormatsRecoCandidate
ALL_EXTERNAL_PRODS += DataFormatsRecoCandidate
endif
ifeq ($(strip $(DataFormats/SiStripCommon)),)
DataFormatsSiStripCommon := cmssw/DataFormats/SiStripCommon
DataFormats/SiStripCommon := DataFormatsSiStripCommon
DataFormatsSiStripCommon_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsSiStripCommon_EX_USE := $(foreach d, cmssw  FWCore/MessageLogger DataFormats/Common boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsSiStripCommon_EX_LIB   := DataFormatsSiStripCommon
ALL_EXTERNAL_PRODS += DataFormatsSiStripCommon
endif
ifeq ($(strip $(Geometry/CommonDetUnit)),)
GeometryCommonDetUnit := cmssw/Geometry/CommonDetUnit
Geometry/CommonDetUnit := GeometryCommonDetUnit
GeometryCommonDetUnit_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeometryCommonDetUnit_EX_USE := $(foreach d, cmssw  DataFormats/GeometrySurface FWCore/Utilities clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryCommonDetUnit_EX_LIB   := GeometryCommonDetUnit
ALL_EXTERNAL_PRODS += GeometryCommonDetUnit
endif
ifeq ($(strip $(DataFormats/TrackReco)),)
DataFormatsTrackReco := cmssw/DataFormats/TrackReco
DataFormats/TrackReco := DataFormatsTrackReco
DataFormatsTrackReco_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsTrackReco_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/TrackCandidate DataFormats/MuonDetId DataFormats/BeamSpot DataFormats/SiPixelDetId DataFormats/SiStripDetId DataFormats/TrackingRecHit FWCore/Utilities clhepheader rootrflx rootmath,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsTrackReco_EX_LIB   := DataFormatsTrackReco
ALL_EXTERNAL_PRODS += DataFormatsTrackReco
endif
ifeq ($(strip $(FastSimDataFormats/PileUpEvents)),)
FastSimDataFormatsPileUpEvents := cmssw/FastSimDataFormats/PileUpEvents
FastSimDataFormats/PileUpEvents := FastSimDataFormatsPileUpEvents
FastSimDataFormatsPileUpEvents_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FastSimDataFormatsPileUpEvents_EX_USE := $(foreach d, cmssw  rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FastSimDataFormatsPileUpEvents_EX_LIB   := FastSimDataFormatsPileUpEvents
ALL_EXTERNAL_PRODS += FastSimDataFormatsPileUpEvents
endif
ifeq ($(strip $(Geometry/CaloTopology)),)
GeometryCaloTopology := cmssw/Geometry/CaloTopology
Geometry/CaloTopology := GeometryCaloTopology
GeometryCaloTopology_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeometryCaloTopology_EX_USE := $(foreach d, cmssw  DataFormats/CaloTowers DataFormats/HcalDetId DataFormats/EcalDetId DataFormats/Common boost Geometry/CaloGeometry,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryCaloTopology_EX_LIB   := GeometryCaloTopology
ALL_EXTERNAL_PRODS += GeometryCaloTopology
endif
ifeq ($(strip $(DataFormats/GeometryVector)),)
DataFormatsGeometryVector := cmssw/DataFormats/GeometryVector
DataFormats/GeometryVector := DataFormatsGeometryVector
DataFormatsGeometryVector_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsGeometryVector_EX_USE := $(foreach d, cmssw  rootmath rootrflx DataFormats/Math,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsGeometryVector_EX_LIB   := DataFormatsGeometryVector
ALL_EXTERNAL_PRODS += DataFormatsGeometryVector
endif
ifeq ($(strip $(CondCore/PluginSystem)),)
src_CondCore_PluginSystem := cmssw/CondCore/PluginSystem
CondCore/PluginSystem  := src_CondCore_PluginSystem
src_CondCore_PluginSystem_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
src_CondCore_PluginSystem_EX_USE := $(foreach d, CondCore/ESSources cmssw,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_CondCore_PluginSystem
endif

ifeq ($(strip $(RecoLocalTracker/SiStripZeroSuppression)),)
RecoLocalTrackerSiStripZeroSuppression := cmssw/RecoLocalTracker/SiStripZeroSuppression
RecoLocalTracker/SiStripZeroSuppression := RecoLocalTrackerSiStripZeroSuppression
RecoLocalTrackerSiStripZeroSuppression_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoLocalTrackerSiStripZeroSuppression_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/Utilities FWCore/ServiceRegistry DataFormats/Common DataFormats/FEDRawData DataFormats/SiStripDetId CondFormats/DataRecord CondFormats/SiStripObjects CalibFormats/SiStripObjects CalibTracker/Records CommonTools/UtilAlgos root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoLocalTrackerSiStripZeroSuppression_EX_LIB   := RecoLocalTrackerSiStripZeroSuppression
ALL_EXTERNAL_PRODS += RecoLocalTrackerSiStripZeroSuppression
endif
ifeq ($(strip $(RecoParticleFlow/PFClusterShapeProducer)),)
RecoParticleFlowPFClusterShapeProducer := cmssw/RecoParticleFlow/PFClusterShapeProducer
RecoParticleFlow/PFClusterShapeProducer := RecoParticleFlowPFClusterShapeProducer
RecoParticleFlowPFClusterShapeProducer_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoParticleFlowPFClusterShapeProducer_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/EgammaReco,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoParticleFlowPFClusterShapeProducer_EX_LIB   := RecoParticleFlowPFClusterShapeProducer
ALL_EXTERNAL_PRODS += RecoParticleFlowPFClusterShapeProducer
endif
ifeq ($(strip $(FastSimulation/Particle)),)
FastSimulationParticle := cmssw/FastSimulation/Particle
FastSimulation/Particle := FastSimulationParticle
FastSimulationParticle_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FastSimulationParticle_EX_USE := $(foreach d, cmssw  DataFormats/Math SimGeneral/HepPDTRecord rootmath,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FastSimulationParticle_EX_LIB   := FastSimulationParticle
ALL_EXTERNAL_PRODS += FastSimulationParticle
endif
ifeq ($(strip $(DQM/EcalCommon)),)
DQMEcalCommon := cmssw/DQM/EcalCommon
DQM/EcalCommon := DQMEcalCommon
DQMEcalCommon_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMEcalCommon_EX_USE := $(foreach d, cmssw  DataFormats/DetId DataFormats/EcalDetId DataFormats/EcalRawData DataFormats/FEDRawData FWCore/Utilities FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry Geometry/EcalMapping Geometry/CaloTopology Geometry/CaloGeometry Geometry/Records CondCore/DBOutputService CondFormats/DataRecord CondFormats/EcalObjects DQMServices/Core rootcore,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMEcalCommon_EX_LIB   := DQMEcalCommon
ALL_EXTERNAL_PRODS += DQMEcalCommon
endif
ifeq ($(strip $(MagneticField/UniformEngine)),)
MagneticFieldUniformEngine := cmssw/MagneticField/UniformEngine
MagneticField/UniformEngine := MagneticFieldUniformEngine
MagneticFieldUniformEngine_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
MagneticFieldUniformEngine_EX_USE := $(foreach d, cmssw  MagneticField/Engine,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
MagneticFieldUniformEngine_EX_LIB   := MagneticFieldUniformEngine
ALL_EXTERNAL_PRODS += MagneticFieldUniformEngine
endif
ifeq ($(strip $(DQM/EcalBarrelMonitorDbModule)),)
DQMEcalBarrelMonitorDbModule := cmssw/DQM/EcalBarrelMonitorDbModule
DQM/EcalBarrelMonitorDbModule := DQMEcalBarrelMonitorDbModule
DQMEcalBarrelMonitorDbModule_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMEcalBarrelMonitorDbModule_EX_USE := $(foreach d, cmssw  CoralBase DQMServices/Core FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Concurrency RelationalAccess rootcore rootgraphics xerces-c,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMEcalBarrelMonitorDbModule_EX_LIB   := DQMEcalBarrelMonitorDbModule
ALL_EXTERNAL_PRODS += DQMEcalBarrelMonitorDbModule
endif
ifeq ($(strip $(SimDataFormats/JetMatching)),)
SimDataFormatsJetMatching := cmssw/SimDataFormats/JetMatching
SimDataFormats/JetMatching := SimDataFormatsJetMatching
SimDataFormatsJetMatching_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimDataFormatsJetMatching_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/HepMCCandidate DataFormats/JetReco rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimDataFormatsJetMatching_EX_LIB   := SimDataFormatsJetMatching
ALL_EXTERNAL_PRODS += SimDataFormatsJetMatching
endif
ifeq ($(strip $(DQM/SiStripCommissioningSources)),)
DQMSiStripCommissioningSources := cmssw/DQM/SiStripCommissioningSources
DQM/SiStripCommissioningSources := DQMSiStripCommissioningSources
DQMSiStripCommissioningSources_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMSiStripCommissioningSources_EX_USE := $(foreach d, cmssw  CalibFormats/SiStripObjects CalibTracker/SiStripAPVAnalysis CondFormats/DataRecord CondFormats/SiStripObjects DataFormats/Common DataFormats/SiStripCommon DQM/SiStripCommon DQMServices/Core FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities boost rootcore,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMSiStripCommissioningSources_EX_LIB   := DQMSiStripCommissioningSources
ALL_EXTERNAL_PRODS += DQMSiStripCommissioningSources
endif
ifeq ($(strip $(FWCore/FWLite)),)
FWCoreFWLite := cmssw/FWCore/FWLite
FWCore/FWLite := FWCoreFWLite
FWCoreFWLite_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCoreFWLite_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/Provenance FWCore/PluginManager FWCore/RootAutoLibraryLoader FWCore/Utilities boost rootcintex rootcore,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCoreFWLite_EX_LIB   := FWCoreFWLite
ALL_EXTERNAL_PRODS += FWCoreFWLite
endif
ifeq ($(strip $(PhysicsTools/RooStatsCms)),)
PhysicsToolsRooStatsCms := cmssw/PhysicsTools/RooStatsCms
PhysicsTools/RooStatsCms := PhysicsToolsRooStatsCms
PhysicsToolsRooStatsCms_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
PhysicsToolsRooStatsCms_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet root rootmath,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsRooStatsCms_EX_LIB   := PhysicsToolsRooStatsCms
ALL_EXTERNAL_PRODS += PhysicsToolsRooStatsCms
endif
ifeq ($(strip $(RecoPixelVertexing/PixelLowPtUtilities)),)
RecoPixelVertexingPixelLowPtUtilities := cmssw/RecoPixelVertexing/PixelLowPtUtilities
RecoPixelVertexing/PixelLowPtUtilities := RecoPixelVertexingPixelLowPtUtilities
RecoPixelVertexingPixelLowPtUtilities_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoPixelVertexingPixelLowPtUtilities_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/ParameterSet FWCore/PluginManager FWCore/Utilities Geometry/Records Geometry/TrackerGeometryBuilder TrackingTools/PatternTools RecoPixelVertexing/PixelTriplets RecoPixelVertexing/PixelTrackFitting TrackingTools/TrajectoryFiltering TrackingTools/Records RecoLocalTracker/Records MagneticField/Records DataFormats/VertexReco DataFormats/TrackerCommon,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoPixelVertexingPixelLowPtUtilities_EX_LIB   := RecoPixelVertexingPixelLowPtUtilities
ALL_EXTERNAL_PRODS += RecoPixelVertexingPixelLowPtUtilities
endif
ifeq ($(strip $(GeneratorInterface/Pythia8Interface)),)
GeneratorInterfacePythia8Interface := cmssw/GeneratorInterface/Pythia8Interface
GeneratorInterface/Pythia8Interface := GeneratorInterfacePythia8Interface
GeneratorInterfacePythia8Interface_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeneratorInterfacePythia8Interface_EX_USE := $(foreach d, cmssw  FWCore/Concurrency FWCore/Framework FWCore/MessageLogger FWCore/Utilities SimDataFormats/GeneratorProducts GeneratorInterface/Core boost pythia8 hepmc clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeneratorInterfacePythia8Interface_EX_LIB   := GeneratorInterfacePythia8Interface
ALL_EXTERNAL_PRODS += GeneratorInterfacePythia8Interface
endif
ifeq ($(strip $(Alignment/CocoaDaq)),)
AlignmentCocoaDaq := cmssw/Alignment/CocoaDaq
Alignment/CocoaDaq := AlignmentCocoaDaq
AlignmentCocoaDaq_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AlignmentCocoaDaq_EX_USE := $(foreach d, cmssw  rootcore,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AlignmentCocoaDaq_EX_LIB   := AlignmentCocoaDaq
ALL_EXTERNAL_PRODS += AlignmentCocoaDaq
endif
ifeq ($(strip $(RecoTauTag/TauTagTools)),)
RecoTauTagTauTagTools := cmssw/RecoTauTag/TauTagTools
RecoTauTag/TauTagTools := RecoTauTagTauTagTools
RecoTauTagTauTagTools_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoTauTagTauTagTools_EX_USE := $(foreach d, cmssw  DataFormats/Math DataFormats/TauReco DataFormats/Candidate FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager PhysicsTools/IsolationUtils PhysicsTools/MVAComputer TrackingTools/GeomPropagators TrackingTools/TransientTrack RecoVertex/VertexPrimitives DataFormats/HepMCCandidate root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoTauTagTauTagTools_EX_LIB   := RecoTauTagTauTagTools
ALL_EXTERNAL_PRODS += RecoTauTagTauTagTools
endif
ifeq ($(strip $(DataFormats/METReco)),)
DataFormatsMETReco := cmssw/DataFormats/METReco
DataFormats/METReco := DataFormatsMETReco
DataFormatsMETReco_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsMETReco_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/RecoCandidate FWCore/Utilities boost root rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsMETReco_EX_LIB   := DataFormatsMETReco
ALL_EXTERNAL_PRODS += DataFormatsMETReco
endif
ifeq ($(strip $(FastSimulation/CalorimeterProperties)),)
FastSimulationCalorimeterProperties := cmssw/FastSimulation/CalorimeterProperties
FastSimulation/CalorimeterProperties := FastSimulationCalorimeterProperties
FastSimulationCalorimeterProperties_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FastSimulationCalorimeterProperties_EX_USE := $(foreach d, cmssw  DataFormats/DetId DataFormats/EcalDetId FWCore/MessageLogger FWCore/ParameterSet Geometry/CaloGeometry Geometry/CaloTopology Geometry/EcalAlgo,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FastSimulationCalorimeterProperties_EX_LIB   := FastSimulationCalorimeterProperties
ALL_EXTERNAL_PRODS += FastSimulationCalorimeterProperties
endif
ifeq ($(strip $(Geometry/EcalAlgo)),)
GeometryEcalAlgo := cmssw/Geometry/EcalAlgo
Geometry/EcalAlgo := GeometryEcalAlgo
GeometryEcalAlgo_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeometryEcalAlgo_EX_USE := $(foreach d, cmssw  Geometry/CaloGeometry DataFormats/EcalDetId clhep Utilities/General CondCore/DBOutputService CondFormats/Alignment CondFormats/AlignmentRecord Geometry/Records,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryEcalAlgo_EX_LIB   := GeometryEcalAlgo
ALL_EXTERNAL_PRODS += GeometryEcalAlgo
endif
ifeq ($(strip $(DQM/DTMonitorModule)),)
DQMDTMonitorModule := cmssw/DQM/DTMonitorModule
DQM/DTMonitorModule := DQMDTMonitorModule
DQMDTMonitorModule_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMDTMonitorModule_EX_USE := $(foreach d, cmssw  FWCore/Framework DQMServices/Core DQMServices/Components DataFormats/FEDRawData DataFormats/DTDigi DataFormats/L1DTTrackFinder DataFormats/L1GlobalMuonTrigger L1TriggerConfig/DTTPGConfig CondFormats/DTObjects CondFormats/DataRecord Geometry/Records Geometry/DTGeometry DataFormats/DTRecHit HLTrigger/HLTcore CalibMuon/DTDigiSync RecoMuon/MeasurementDet RecoMuon/TrackingTools TrackPropagation/SteppingHelixPropagator boost rootgraphics,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMDTMonitorModule_EX_LIB   := DQMDTMonitorModule
ALL_EXTERNAL_PRODS += DQMDTMonitorModule
endif
ifeq ($(strip $(RecoTracker/DebugTools)),)
RecoTrackerDebugTools := cmssw/RecoTracker/DebugTools
RecoTracker/DebugTools := RecoTrackerDebugTools
RecoTrackerDebugTools_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoTrackerDebugTools_EX_USE := $(foreach d, cmssw  clhep rootmath boost SimDataFormats/TrackingHit Geometry/CommonDetUnit TrackingTools/TrajectoryParametrization TrackingTools/TrajectoryState TrackingTools/TransientTrack TrackingTools/KalmanUpdators TrackingTools/GeomPropagators RecoTracker/Record MagneticField/Records MagneticField/Engine RecoTracker/TkNavigation RecoTracker/TkDetLayers RecoTracker/MeasurementDet DataFormats/TrackerCommon,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoTrackerDebugTools_EX_LIB   := RecoTrackerDebugTools
ALL_EXTERNAL_PRODS += RecoTrackerDebugTools
endif
ifeq ($(strip $(CondFormats/HcalObjects)),)
CondFormatsHcalObjects := cmssw/CondFormats/HcalObjects
CondFormats/HcalObjects := CondFormatsHcalObjects
CondFormatsHcalObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondFormatsHcalObjects_EX_USE := $(foreach d, cmssw  CondFormats/Common DataFormats/DetId DataFormats/HcalDetId Geometry/CaloTopology FWCore/Utilities FWCore/MessageLogger rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsHcalObjects_EX_LIB   := CondFormatsHcalObjects
ALL_EXTERNAL_PRODS += CondFormatsHcalObjects
endif
ifeq ($(strip $(TopQuarkAnalysis/TopJetCombination)),)
TopQuarkAnalysisTopJetCombination := cmssw/TopQuarkAnalysis/TopJetCombination
TopQuarkAnalysis/TopJetCombination := TopQuarkAnalysisTopJetCombination
TopQuarkAnalysisTopJetCombination_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TopQuarkAnalysisTopJetCombination_EX_USE := $(foreach d, cmssw  AnalysisDataFormats/TopObjects TopQuarkAnalysis/TopTools FWCore/Framework,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TopQuarkAnalysisTopJetCombination_EX_LIB   := TopQuarkAnalysisTopJetCombination
ALL_EXTERNAL_PRODS += TopQuarkAnalysisTopJetCombination
endif
ifeq ($(strip $(DataFormats/L1TrackTrigger)),)
src_DataFormats_L1TrackTrigger := cmssw/DataFormats/L1TrackTrigger
DataFormats/L1TrackTrigger  := src_DataFormats_L1TrackTrigger
src_DataFormats_L1TrackTrigger_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
src_DataFormats_L1TrackTrigger_EX_USE := $(foreach d, cmssw,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_DataFormats_L1TrackTrigger
endif

ifeq ($(strip $(TrackingTools/TrajectoryCleaning)),)
TrackingToolsTrajectoryCleaning := cmssw/TrackingTools/TrajectoryCleaning
TrackingTools/TrajectoryCleaning := TrackingToolsTrajectoryCleaning
TrackingToolsTrajectoryCleaning_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TrackingToolsTrajectoryCleaning_EX_USE := $(foreach d, cmssw  TrackingTools/PatternTools DataFormats/SiPixelDetId DataFormats/SiStripDetId DataFormats/TrackerRecHit2D DataFormats/TrackingRecHit FWCore/PluginManager,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TrackingToolsTrajectoryCleaning_EX_LIB   := TrackingToolsTrajectoryCleaning
ALL_EXTERNAL_PRODS += TrackingToolsTrajectoryCleaning
endif
ifeq ($(strip $(Utilities/LStoreAdaptor)),)
UtilitiesLStoreAdaptor := cmssw/Utilities/LStoreAdaptor
Utilities/LStoreAdaptor := UtilitiesLStoreAdaptor
UtilitiesLStoreAdaptor_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
UtilitiesLStoreAdaptor_EX_USE := $(foreach d, cmssw  Utilities/StorageFactory FWCore/Utilities FWCore/MessageLogger boost boost_filesystem boost_regex,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
UtilitiesLStoreAdaptor_EX_LIB   := UtilitiesLStoreAdaptor
ALL_EXTERNAL_PRODS += UtilitiesLStoreAdaptor
endif
ifeq ($(strip $(RecoVertex/MultiVertexFit)),)
RecoVertexMultiVertexFit := cmssw/RecoVertex/MultiVertexFit
RecoVertex/MultiVertexFit := RecoVertexMultiVertexFit
RecoVertexMultiVertexFit_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoVertexMultiVertexFit_EX_USE := $(foreach d, cmssw  CommonTools/Clustering1D DataFormats/GeometryCommonDetAlgo DataFormats/GeometryVector RecoVertex/KalmanVertexFit RecoVertex/LinearizationPointFinders RecoVertex/VertexPrimitives RecoVertex/VertexTools TrackingTools/PatternTools TrackingTools/TransientTrack,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoVertexMultiVertexFit_EX_LIB   := RecoVertexMultiVertexFit
ALL_EXTERNAL_PRODS += RecoVertexMultiVertexFit
endif
ifeq ($(strip $(FastSimulation/MaterialEffects)),)
FastSimulationMaterialEffects := cmssw/FastSimulation/MaterialEffects
FastSimulation/MaterialEffects := FastSimulationMaterialEffects
FastSimulationMaterialEffects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FastSimulationMaterialEffects_EX_USE := $(foreach d, cmssw  FWCore/ParameterSet FWCore/Utilities FastSimulation/Event FastSimulation/Utilities rootcore,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FastSimulationMaterialEffects_EX_LIB   := FastSimulationMaterialEffects
ALL_EXTERNAL_PRODS += FastSimulationMaterialEffects
endif
ifeq ($(strip $(Calibration/TkAlCaRecoProducers)),)
CalibrationTkAlCaRecoProducers := cmssw/Calibration/TkAlCaRecoProducers
Calibration/TkAlCaRecoProducers := CalibrationTkAlCaRecoProducers
CalibrationTkAlCaRecoProducers_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibrationTkAlCaRecoProducers_EX_USE := $(foreach d, cmssw  DataFormats/DetId DataFormats/MuonDetId DataFormats/MuonReco DataFormats/SiStripDetId DataFormats/SiPixelDetId DataFormats/TrackReco DataFormats/TrackerRecHit2D DataFormats/TrackingRecHit DataFormats/SiStripCluster DataFormats/TrajectorySeed DataFormats/Candidate DataFormats/JetReco DataFormats/METReco DataFormats/RecoCandidate DataFormats/Math DataFormats/BeamSpot FWCore/MessageLogger FWCore/Framework FWCore/Utilities FWCore/ParameterSet PhysicsTools/RecoAlgos rootcore,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibrationTkAlCaRecoProducers_EX_LIB   := CalibrationTkAlCaRecoProducers
ALL_EXTERNAL_PRODS += CalibrationTkAlCaRecoProducers
endif
ifeq ($(strip $(RecoTracker/NuclearSeedGenerator)),)
RecoTrackerNuclearSeedGenerator := cmssw/RecoTracker/NuclearSeedGenerator
RecoTracker/NuclearSeedGenerator := RecoTrackerNuclearSeedGenerator
RecoTrackerNuclearSeedGenerator_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoTrackerNuclearSeedGenerator_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/GeometryVector DataFormats/TrackReco DataFormats/TrajectorySeed FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities Geometry/Records Geometry/TrackerGeometryBuilder MagneticField/Engine RecoTracker/MeasurementDet RecoTracker/Record RecoTracker/TkDetLayers RecoTracker/TkNavigation RecoTracker/TkSeedGenerator TrackingTools/DetLayers TrackingTools/GeomPropagators TrackingTools/KalmanUpdators TrackingTools/MeasurementDet TrackingTools/PatternTools TrackingTools/Records TrackingTools/TrajectoryState TrackingTools/TransientTrackingRecHit boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoTrackerNuclearSeedGenerator_EX_LIB   := RecoTrackerNuclearSeedGenerator
ALL_EXTERNAL_PRODS += RecoTrackerNuclearSeedGenerator
endif
ifeq ($(strip $(IOPool/Output)),)
IOPoolOutput := cmssw/IOPool/Output
IOPool/Output := IOPoolOutput
IOPoolOutput_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
IOPoolOutput_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/Provenance FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities FWCore/Version IOPool/Common boost rootcore,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
IOPoolOutput_EX_LIB   := IOPoolOutput
ALL_EXTERNAL_PRODS += IOPoolOutput
endif
ifeq ($(strip $(Fireworks/Candidates)),)
FireworksCandidates := cmssw/Fireworks/Candidates
Fireworks/Candidates := FireworksCandidates
FireworksCandidates_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FireworksCandidates_EX_USE := $(foreach d, cmssw  DataFormats/Candidate boost_system Fireworks/Core,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FireworksCandidates_EX_LIB   := FireworksCandidates
ALL_EXTERNAL_PRODS += FireworksCandidates
endif
ifeq ($(strip $(L1Trigger/DTTriggerServerTheta)),)
L1TriggerDTTriggerServerTheta := cmssw/L1Trigger/DTTriggerServerTheta
L1Trigger/DTTriggerServerTheta := L1TriggerDTTriggerServerTheta
L1TriggerDTTriggerServerTheta_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
L1TriggerDTTriggerServerTheta_EX_USE := $(foreach d, cmssw  FWCore/PluginManager FWCore/ParameterSet Geometry/DTGeometry L1Trigger/DTBti L1Trigger/DTUtilities L1TriggerConfig/DTTPGConfig clhep root rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
L1TriggerDTTriggerServerTheta_EX_LIB   := L1TriggerDTTriggerServerTheta
ALL_EXTERNAL_PRODS += L1TriggerDTTriggerServerTheta
endif
ifeq ($(strip $(Fireworks/Calo)),)
FireworksCalo := cmssw/Fireworks/Calo
Fireworks/Calo := FireworksCalo
FireworksCalo_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FireworksCalo_EX_USE := $(foreach d, cmssw  DataFormats/CaloRecHit DataFormats/CaloTowers DataFormats/DetId DataFormats/EcalDetId DataFormats/EcalRecHit DataFormats/EgammaReco DataFormats/FWLite DataFormats/JetReco Fireworks/Core Fireworks/Tracks boost_system rootgpad rootphysics,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FireworksCalo_EX_LIB   := FireworksCalo
ALL_EXTERNAL_PRODS += FireworksCalo
endif
ifeq ($(strip $(RecoEgamma/EgammaIsolationAlgos)),)
RecoEgammaEgammaIsolationAlgos := cmssw/RecoEgamma/EgammaIsolationAlgos
RecoEgamma/EgammaIsolationAlgos := RecoEgammaEgammaIsolationAlgos
RecoEgammaEgammaIsolationAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoEgammaEgammaIsolationAlgos_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet Geometry/CaloGeometry Geometry/CaloTopology RecoCaloTools/Selectors DataFormats/Candidate DataFormats/RecoCandidate DataFormats/ParticleFlowReco DataFormats/ParticleFlowCandidate CondFormats/EcalObjects CondFormats/DataRecord RecoLocalCalo/EcalRecAlgos CommonTools/Statistics,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoEgammaEgammaIsolationAlgos_EX_LIB   := RecoEgammaEgammaIsolationAlgos
ALL_EXTERNAL_PRODS += RecoEgammaEgammaIsolationAlgos
endif
ifeq ($(strip $(FastSimulation/Event)),)
FastSimulationEvent := cmssw/FastSimulation/Event
FastSimulation/Event := FastSimulationEvent
FastSimulationEvent_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FastSimulationEvent_EX_USE := $(foreach d, cmssw  DataFormats/HepMCCandidate DataFormats/Candidate DataFormats/Math DataFormats/Provenance FWCore/ParameterSet FastSimulation/BaseParticlePropagator FastSimulation/Particle FastSimulation/Utilities SimDataFormats/Track SimDataFormats/Vertex SimDataFormats/GeneratorProducts FastSimDataFormats/NuclearInteractions SimGeneral/HepPDTRecord hepmc,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FastSimulationEvent_EX_LIB   := FastSimulationEvent
ALL_EXTERNAL_PRODS += FastSimulationEvent
endif
ifeq ($(strip $(CondCore/DBOutputService)),)
CondCoreDBOutputService := cmssw/CondCore/DBOutputService
CondCore/DBOutputService := CondCoreDBOutputService
CondCoreDBOutputService_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondCoreDBOutputService_EX_USE := $(foreach d, cmssw  FWCore/Framework CondCore/CondDB boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondCoreDBOutputService_EX_LIB   := CondCoreDBOutputService
ALL_EXTERNAL_PRODS += CondCoreDBOutputService
endif
ifeq ($(strip $(SimG4CMS/CherenkovAnalysis)),)
SimG4CMSCherenkovAnalysis := cmssw/SimG4CMS/CherenkovAnalysis
SimG4CMS/CherenkovAnalysis := SimG4CMSCherenkovAnalysis
SimG4CMSCherenkovAnalysis_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CMSCherenkovAnalysis_EX_USE := $(foreach d, cmssw  FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry CommonTools/UtilAlgos SimG4Core/SensitiveDetector SimG4Core/Notification SimG4Core/Application SimG4CMS/Calo DataFormats/Math SimDataFormats/SimHitMaker SimDataFormats/CaloHit DetectorDescription/Core boost geant4core root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CMSCherenkovAnalysis_EX_LIB   := SimG4CMSCherenkovAnalysis
ALL_EXTERNAL_PRODS += SimG4CMSCherenkovAnalysis
endif
ifeq ($(strip $(SimDataFormats/EcalTestBeam)),)
SimDataFormatsEcalTestBeam := cmssw/SimDataFormats/EcalTestBeam
SimDataFormats/EcalTestBeam := SimDataFormatsEcalTestBeam
SimDataFormatsEcalTestBeam_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimDataFormatsEcalTestBeam_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/DetId DataFormats/CaloTowers rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimDataFormatsEcalTestBeam_EX_LIB   := SimDataFormatsEcalTestBeam
ALL_EXTERNAL_PRODS += SimDataFormatsEcalTestBeam
endif
ifeq ($(strip $(MagneticField/Records)),)
MagneticFieldRecords := cmssw/MagneticField/Records
MagneticField/Records := MagneticFieldRecords
MagneticFieldRecords_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
MagneticFieldRecords_EX_USE := $(foreach d, cmssw  FWCore/Framework Geometry/Records CondFormats/DataRecord boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
MagneticFieldRecords_EX_LIB   := MagneticFieldRecords
ALL_EXTERNAL_PRODS += MagneticFieldRecords
endif
ifeq ($(strip $(DataFormats/Math)),)
DataFormatsMath := cmssw/DataFormats/Math
DataFormats/Math := DataFormatsMath
DataFormatsMath_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsMath_EX_USE := $(foreach d, cmssw  DataFormats/Common rootmath rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsMath_EX_LIB   := DataFormatsMath
ALL_EXTERNAL_PRODS += DataFormatsMath
endif
ifeq ($(strip $(DQM/SiStripMonitorClient)),)
DQMSiStripMonitorClient := cmssw/DQM/SiStripMonitorClient
DQM/SiStripMonitorClient := DQMSiStripMonitorClient
DQMSiStripMonitorClient_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMSiStripMonitorClient_EX_USE := $(foreach d, cmssw  FWCore/MessageLogger FWCore/Framework EventFilter/Utilities DQMServices/ClientConfig CalibFormats/SiStripObjects CondFormats/SiStripObjects CondFormats/DataRecord CondFormats/RunInfo CommonTools/TrackerMap CalibTracker/Records DQM/TrackerCommon DQM/SiStripCommon DQM/SiStripMonitorSummary DataFormats/SiStripDetId boost root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMSiStripMonitorClient_EX_LIB   := DQMSiStripMonitorClient
ALL_EXTERNAL_PRODS += DQMSiStripMonitorClient
endif
ifeq ($(strip $(PhysicsTools/IsolationUtils)),)
PhysicsToolsIsolationUtils := cmssw/PhysicsTools/IsolationUtils
PhysicsTools/IsolationUtils := PhysicsToolsIsolationUtils
PhysicsToolsIsolationUtils_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
PhysicsToolsIsolationUtils_EX_USE := $(foreach d, cmssw  DataFormats/Math FWCore/MessageLogger rootmath,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsIsolationUtils_EX_LIB   := PhysicsToolsIsolationUtils
ALL_EXTERNAL_PRODS += PhysicsToolsIsolationUtils
endif
ifeq ($(strip $(RecoVertex/AdaptiveVertexFit)),)
RecoVertexAdaptiveVertexFit := cmssw/RecoVertex/AdaptiveVertexFit
RecoVertex/AdaptiveVertexFit := RecoVertexAdaptiveVertexFit
RecoVertexAdaptiveVertexFit_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoVertexAdaptiveVertexFit_EX_USE := $(foreach d, cmssw  FWCore/ParameterSet DataFormats/GeometryCommonDetAlgo DataFormats/GeometryVector TrackingTools/TrajectoryState RecoVertex/VertexPrimitives,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoVertexAdaptiveVertexFit_EX_LIB   := RecoVertexAdaptiveVertexFit
ALL_EXTERNAL_PRODS += RecoVertexAdaptiveVertexFit
endif
ifeq ($(strip $(TopQuarkAnalysis/TopHitFit)),)
TopQuarkAnalysisTopHitFit := cmssw/TopQuarkAnalysis/TopHitFit
TopQuarkAnalysis/TopHitFit := TopQuarkAnalysisTopHitFit
TopQuarkAnalysisTopHitFit_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TopQuarkAnalysisTopHitFit_EX_USE := $(foreach d, cmssw  clhep root DataFormats/PatCandidates FWCore/ParameterSet,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TopQuarkAnalysisTopHitFit_EX_LIB   := TopQuarkAnalysisTopHitFit
ALL_EXTERNAL_PRODS += TopQuarkAnalysisTopHitFit
endif
ifeq ($(strip $(GeneratorInterface/PartonShowerVeto)),)
GeneratorInterfacePartonShowerVeto := cmssw/GeneratorInterface/PartonShowerVeto
GeneratorInterface/PartonShowerVeto := GeneratorInterfacePartonShowerVeto
GeneratorInterfacePartonShowerVeto_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeneratorInterfacePartonShowerVeto_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/ParameterSet SimDataFormats/GeneratorProducts GeneratorInterface/Pythia6Interface GeneratorInterface/AlpgenInterface GeneratorInterface/LHEInterface fastjet f77compiler,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeneratorInterfacePartonShowerVeto_EX_LIB   := GeneratorInterfacePartonShowerVeto
ALL_EXTERNAL_PRODS += GeneratorInterfacePartonShowerVeto
endif
ifeq ($(strip $(GeneratorInterface/PomwigInterface)),)
GeneratorInterfacePomwigInterface := cmssw/GeneratorInterface/PomwigInterface
GeneratorInterface/PomwigInterface := GeneratorInterfacePomwigInterface
GeneratorInterfacePomwigInterface_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeneratorInterfacePomwigInterface_EX_USE := $(foreach d, cmssw  FWCore/Framework GeneratorInterface/Core GeneratorInterface/Herwig6Interface SimDataFormats/GeneratorProducts boost clhep heppdt f77compiler,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeneratorInterfacePomwigInterface_EX_LIB   := GeneratorInterfacePomwigInterface
ALL_EXTERNAL_PRODS += GeneratorInterfacePomwigInterface
endif
ifeq ($(strip $(SimTracker/TrackTriggerAssociation)),)
src_SimTracker_TrackTriggerAssociation := cmssw/SimTracker/TrackTriggerAssociation
SimTracker/TrackTriggerAssociation  := src_SimTracker_TrackTriggerAssociation
src_SimTracker_TrackTriggerAssociation_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
src_SimTracker_TrackTriggerAssociation_EX_USE := $(foreach d, cmssw,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_SimTracker_TrackTriggerAssociation
endif

ifeq ($(strip $(DataFormats/HcalDetId)),)
DataFormatsHcalDetId := cmssw/DataFormats/HcalDetId
DataFormats/HcalDetId := DataFormatsHcalDetId
DataFormatsHcalDetId_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsHcalDetId_EX_USE := $(foreach d, cmssw  FWCore/Utilities boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsHcalDetId_EX_LIB   := DataFormatsHcalDetId
ALL_EXTERNAL_PRODS += DataFormatsHcalDetId
endif
ifeq ($(strip $(RecoMuon/MuonIdentification)),)
RecoMuonMuonIdentification := cmssw/RecoMuon/MuonIdentification
RecoMuon/MuonIdentification := RecoMuonMuonIdentification
RecoMuonMuonIdentification_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoMuonMuonIdentification_EX_USE := $(foreach d, cmssw  DataFormats/GeometrySurface DataFormats/GeometryVector DataFormats/Math DataFormats/TrajectoryState DataFormats/VertexReco FWCore/ServiceRegistry RecoMuon/Navigation RecoMuon/TransientTrackingRecHit RecoMuon/MuonIsolation RecoTracker/TkDetLayers RecoTracker/TkMSParametrization RecoTracker/TransientTrackingRecHit TrackingTools/DetLayers TrackingTools/GeomPropagators TrackingTools/PatternTools TrackingTools/Records TrackingTools/TrackFitters TrackingTools/TrackRefitter TrackingTools/TrajectoryState TrackingTools/TransientTrackingRecHit Geometry/DTGeometry DataFormats/DetId DataFormats/MuonDetId DataFormats/MuonReco DataFormats/TrackReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet Geometry/CommonDetUnit Geometry/CSCGeometry Geometry/Records SimDataFormats/Track SimDataFormats/TrackingHit roothistmatrix RecoMuon/TrackingTools DataFormats/CSCRecHit RecoLocalCalo/HcalRecAlgos,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoMuonMuonIdentification_EX_LIB   := RecoMuonMuonIdentification
ALL_EXTERNAL_PRODS += RecoMuonMuonIdentification
endif
ifeq ($(strip $(RecoVertex/VertexPrimitives)),)
RecoVertexVertexPrimitives := cmssw/RecoVertex/VertexPrimitives
RecoVertex/VertexPrimitives := RecoVertexVertexPrimitives
RecoVertexVertexPrimitives_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoVertexVertexPrimitives_EX_USE := $(foreach d, cmssw  DataFormats/BeamSpot DataFormats/GeometrySurface DataFormats/GeometryVector DataFormats/VertexReco,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoVertexVertexPrimitives_EX_LIB   := RecoVertexVertexPrimitives
ALL_EXTERNAL_PRODS += RecoVertexVertexPrimitives
endif
ifeq ($(strip $(FWCore/PrescaleService)),)
FWCorePrescaleService := cmssw/FWCore/PrescaleService
FWCore/PrescaleService := FWCorePrescaleService
FWCorePrescaleService_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCorePrescaleService_EX_USE := $(foreach d, cmssw  DataFormats/Provenance FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCorePrescaleService_EX_LIB   := FWCorePrescaleService
ALL_EXTERNAL_PRODS += FWCorePrescaleService
endif
ifeq ($(strip $(OnlineDB/EcalCondDB)),)
OnlineDBEcalCondDB := cmssw/OnlineDB/EcalCondDB
OnlineDB/EcalCondDB := OnlineDBEcalCondDB
OnlineDBEcalCondDB_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
OnlineDBEcalCondDB_EX_USE := $(foreach d, cmssw  OnlineDB/Oracle DataFormats/EcalDetId,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
OnlineDBEcalCondDB_EX_LIB   := OnlineDBEcalCondDB
ALL_EXTERNAL_PRODS += OnlineDBEcalCondDB
endif
ifeq ($(strip $(FWCore/ParameterSet)),)
FWCoreParameterSet := cmssw/FWCore/ParameterSet
FWCore/ParameterSet := FWCoreParameterSet
FWCoreParameterSet_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCoreParameterSet_EX_USE := $(foreach d, cmssw  DataFormats/Provenance FWCore/MessageLogger FWCore/PluginManager FWCore/Utilities tbb boost boost_filesystem,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCoreParameterSet_EX_LIB   := FWCoreParameterSet
ALL_EXTERNAL_PRODS += FWCoreParameterSet
endif
ifeq ($(strip $(GeneratorInterface/PyquenInterface)),)
GeneratorInterfacePyquenInterface := cmssw/GeneratorInterface/PyquenInterface
GeneratorInterface/PyquenInterface := GeneratorInterfacePyquenInterface
GeneratorInterfacePyquenInterface_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeneratorInterfacePyquenInterface_EX_USE := $(foreach d, cmssw  boost FWCore/Framework GeneratorInterface/Core GeneratorInterface/HiGenCommon SimDataFormats/GeneratorProducts clhep f77compiler GeneratorInterface/Pythia6Interface GeneratorInterface/ExternalDecays,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeneratorInterfacePyquenInterface_EX_LIB   := GeneratorInterfacePyquenInterface
ALL_EXTERNAL_PRODS += GeneratorInterfacePyquenInterface
endif
ifeq ($(strip $(JetMETCorrections/Objects)),)
JetMETCorrectionsObjects := cmssw/JetMETCorrections/Objects
JetMETCorrections/Objects := JetMETCorrectionsObjects
JetMETCorrectionsObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
JetMETCorrectionsObjects_EX_USE := $(foreach d, cmssw  root FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet DataFormats/Common DataFormats/JetReco,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
JetMETCorrectionsObjects_EX_LIB   := JetMETCorrectionsObjects
ALL_EXTERNAL_PRODS += JetMETCorrectionsObjects
endif
ifeq ($(strip $(Geometry/Records)),)
GeometryRecords := cmssw/Geometry/Records
Geometry/Records := GeometryRecords
GeometryRecords_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeometryRecords_EX_USE := $(foreach d, cmssw  FWCore/Utilities FWCore/Framework CondFormats/AlignmentRecord boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryRecords_EX_LIB   := GeometryRecords
ALL_EXTERNAL_PRODS += GeometryRecords
endif
ifeq ($(strip $(FWCore/RootAutoLibraryLoader)),)
FWCoreRootAutoLibraryLoader := cmssw/FWCore/RootAutoLibraryLoader
FWCore/RootAutoLibraryLoader := FWCoreRootAutoLibraryLoader
FWCoreRootAutoLibraryLoader_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCoreRootAutoLibraryLoader_EX_USE := $(foreach d, cmssw  FWCore/PluginManager rootcintex rootcore boost_regex boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCoreRootAutoLibraryLoader_EX_LIB   := FWCoreRootAutoLibraryLoader
ALL_EXTERNAL_PRODS += FWCoreRootAutoLibraryLoader
endif
ifeq ($(strip $(TopQuarkAnalysis/TopTools)),)
TopQuarkAnalysisTopTools := cmssw/TopQuarkAnalysis/TopTools
TopQuarkAnalysis/TopTools := TopQuarkAnalysisTopTools
TopQuarkAnalysisTopTools_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TopQuarkAnalysisTopTools_EX_USE := $(foreach d, cmssw  rootgpad DataFormats/PatCandidates,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TopQuarkAnalysisTopTools_EX_LIB   := TopQuarkAnalysisTopTools
ALL_EXTERNAL_PRODS += TopQuarkAnalysisTopTools
endif
ifeq ($(strip $(RecoVertex/VertexTools)),)
RecoVertexVertexTools := cmssw/RecoVertex/VertexTools
RecoVertex/VertexTools := RecoVertexVertexTools
RecoVertexVertexTools_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoVertexVertexTools_EX_USE := $(foreach d, cmssw  DataFormats/BeamSpot DataFormats/CLHEP DataFormats/GeometryCommonDetAlgo DataFormats/GeometryVector DataFormats/TrackReco DataFormats/VertexReco FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities RecoVertex/VertexPrimitives TrackingTools/GeomPropagators TrackingTools/PatternTools TrackingTools/TrajectoryParametrization TrackingTools/TrajectoryState TrackingTools/TransientTrack,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoVertexVertexTools_EX_LIB   := RecoVertexVertexTools
ALL_EXTERNAL_PRODS += RecoVertexVertexTools
endif
ifeq ($(strip $(RecoRomanPot/RecoFP420)),)
RecoRomanPotRecoFP420 := cmssw/RecoRomanPot/RecoFP420
RecoRomanPot/RecoFP420 := RecoRomanPotRecoFP420
RecoRomanPotRecoFP420_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoRomanPotRecoFP420_EX_USE := $(foreach d, cmssw  FWCore/PluginManager DataFormats/Math DataFormats/FP420Digi DataFormats/FP420Cluster DataFormats/Common FWCore/ParameterSet FWCore/Framework SimG4CMS/FP420 Mixing/Base DetectorDescription/Core FWCore/MessageLogger hector boost geant4 root clhep hepmc gsl rootmath rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoRomanPotRecoFP420_EX_LIB   := RecoRomanPotRecoFP420
ALL_EXTERNAL_PRODS += RecoRomanPotRecoFP420
endif
ifeq ($(strip $(SimDataFormats/Forward)),)
SimDataFormatsForward := cmssw/SimDataFormats/Forward
SimDataFormats/Forward := SimDataFormatsForward
SimDataFormatsForward_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimDataFormatsForward_EX_USE := $(foreach d, cmssw  DataFormats/Common FWCore/MessageLogger rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimDataFormatsForward_EX_LIB   := SimDataFormatsForward
ALL_EXTERNAL_PRODS += SimDataFormatsForward
endif
ifeq ($(strip $(RecoMET/METAlgorithms)),)
RecoMETMETAlgorithms := cmssw/RecoMET/METAlgorithms
RecoMET/METAlgorithms := RecoMETMETAlgorithms
RecoMETMETAlgorithms_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoMETMETAlgorithms_EX_USE := $(foreach d, cmssw  DataFormats/METReco DataFormats/CaloTowers DataFormats/Common DataFormats/CSCRecHit FWCore/ParameterSet rootphysics MagneticField/Records MagneticField/Engine TrackingTools/GeomPropagators TrackingTools/TrackAssociator Geometry/CaloTopology Geometry/CSCGeometry RecoEcal/EgammaCoreTools DataFormats/ParticleFlowCandidate DataFormats/L1GlobalMuonTrigger DataFormats/MuonReco DataFormats/ParticleFlowReco CondFormats/JetMETObjects RecoMuon/TrackingTools RecoParticleFlow/PFClusterTools,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoMETMETAlgorithms_EX_LIB   := RecoMETMETAlgorithms
ALL_EXTERNAL_PRODS += RecoMETMETAlgorithms
endif
ifeq ($(strip $(Alignment/CocoaToDDL)),)
AlignmentCocoaToDDL := cmssw/Alignment/CocoaToDDL
Alignment/CocoaToDDL := AlignmentCocoaToDDL
AlignmentCocoaToDDL_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AlignmentCocoaToDDL_EX_USE := $(foreach d, cmssw  clhep Alignment/CocoaUtilities Alignment/CocoaModel Alignment/CocoaDDLObjects,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AlignmentCocoaToDDL_EX_LIB   := AlignmentCocoaToDDL
ALL_EXTERNAL_PRODS += AlignmentCocoaToDDL
endif
ifeq ($(strip $(Geometry/EcalMapping)),)
GeometryEcalMapping := cmssw/Geometry/EcalMapping
Geometry/EcalMapping := GeometryEcalMapping
GeometryEcalMapping_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeometryEcalMapping_EX_USE := $(foreach d, cmssw  FWCore/Framework DataFormats/EcalDetId CondFormats/DataRecord boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryEcalMapping_EX_LIB   := GeometryEcalMapping
ALL_EXTERNAL_PRODS += GeometryEcalMapping
endif
ifeq ($(strip $(SimDataFormats/RandomEngine)),)
SimDataFormatsRandomEngine := cmssw/SimDataFormats/RandomEngine
SimDataFormats/RandomEngine := SimDataFormatsRandomEngine
SimDataFormatsRandomEngine_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimDataFormatsRandomEngine_EX_USE := $(foreach d, cmssw  DataFormats/Common FWCore/Utilities boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimDataFormatsRandomEngine_EX_LIB   := SimDataFormatsRandomEngine
ALL_EXTERNAL_PRODS += SimDataFormatsRandomEngine
endif
ifeq ($(strip $(CondFormats/Luminosity)),)
CondFormatsLuminosity := cmssw/CondFormats/Luminosity
CondFormats/Luminosity := CondFormatsLuminosity
CondFormatsLuminosity_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondFormatsLuminosity_EX_USE := $(foreach d, cmssw  FWCore/Utilities rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsLuminosity_EX_LIB   := CondFormatsLuminosity
ALL_EXTERNAL_PRODS += CondFormatsLuminosity
endif
ifeq ($(strip $(Utilities/Timing)),)
UtilitiesTiming := cmssw/Utilities/Timing
Utilities/Timing := UtilitiesTiming
UtilitiesTiming_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
UtilitiesTiming_EX_USE := $(foreach d, cmssw  ,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
UtilitiesTiming_EX_LIB   := UtilitiesTiming
ALL_EXTERNAL_PRODS += UtilitiesTiming
endif
ifeq ($(strip $(SimTracker/TrackerHitAssociation)),)
SimTrackerTrackerHitAssociation := cmssw/SimTracker/TrackerHitAssociation
SimTracker/TrackerHitAssociation := SimTrackerTrackerHitAssociation
SimTrackerTrackerHitAssociation_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimTrackerTrackerHitAssociation_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/ParameterSet DataFormats/Common SimDataFormats/CrossingFrame SimDataFormats/TrackingHit SimDataFormats/TrackerDigiSimLink DataFormats/TrackerRecHit2D TrackingTools/TransientTrackingRecHit DataFormats/SiPixelDetId clhep boost root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimTrackerTrackerHitAssociation_EX_LIB   := SimTrackerTrackerHitAssociation
ALL_EXTERNAL_PRODS += SimTrackerTrackerHitAssociation
endif
ifeq ($(strip $(SimDataFormats/HcalTestBeam)),)
SimDataFormatsHcalTestBeam := cmssw/SimDataFormats/HcalTestBeam
SimDataFormats/HcalTestBeam := SimDataFormatsHcalTestBeam
SimDataFormatsHcalTestBeam_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimDataFormatsHcalTestBeam_EX_USE := $(foreach d, cmssw  DataFormats/Common FWCore/MessageLogger rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimDataFormatsHcalTestBeam_EX_LIB   := SimDataFormatsHcalTestBeam
ALL_EXTERNAL_PRODS += SimDataFormatsHcalTestBeam
endif
ifeq ($(strip $(RecoEcal/EgammaCoreTools)),)
RecoEcalEgammaCoreTools := cmssw/RecoEcal/EgammaCoreTools
RecoEcal/EgammaCoreTools := RecoEcalEgammaCoreTools
RecoEcalEgammaCoreTools_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoEcalEgammaCoreTools_EX_USE := $(foreach d, cmssw  DataFormats/EcalRecHit DataFormats/EgammaReco DataFormats/Math FWCore/Framework FWCore/Utilities FWCore/MessageLogger Geometry/CaloGeometry Geometry/CaloTopology Geometry/EcalAlgo RecoLocalCalo/EcalRecAlgos Geometry/Records CalibCalorimetry/EcalLaserCorrection clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoEcalEgammaCoreTools_EX_LIB   := RecoEcalEgammaCoreTools
ALL_EXTERNAL_PRODS += RecoEcalEgammaCoreTools
endif
ifeq ($(strip $(RecoHI/HiEgammaAlgos)),)
RecoHIHiEgammaAlgos := cmssw/RecoHI/HiEgammaAlgos
RecoHI/HiEgammaAlgos := RecoHIHiEgammaAlgos
RecoHIHiEgammaAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoHIHiEgammaAlgos_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/ParameterSet DataFormats/EgammaReco DataFormats/Candidate DataFormats/HepMCCandidate Geometry/CaloGeometry RecoEcal/EgammaClusterAlgos DataFormats/EgammaCandidates clhep root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoHIHiEgammaAlgos_EX_LIB   := RecoHIHiEgammaAlgos
ALL_EXTERNAL_PRODS += RecoHIHiEgammaAlgos
endif
ifeq ($(strip $(CalibTracker/SiPixelTools)),)
CalibTrackerSiPixelTools := cmssw/CalibTracker/SiPixelTools
CalibTracker/SiPixelTools := CalibTrackerSiPixelTools
CalibTrackerSiPixelTools_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibTrackerSiPixelTools_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet FWCore/MessageLogger FWCore/ServiceRegistry DataFormats/FEDRawData DataFormats/SiPixelDigi CondFormats/DataRecord CondFormats/SiPixelObjects CondCore/DBOutputService Geometry/Records root Geometry/CommonDetUnit Geometry/TrackerGeometryBuilder CalibFormats/SiPixelObjects DQM/SiPixelCommon DQMServices/Core,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibTrackerSiPixelTools_EX_LIB   := CalibTrackerSiPixelTools
ALL_EXTERNAL_PRODS += CalibTrackerSiPixelTools
endif
ifeq ($(strip $(Geometry/GEMGeometry)),)
GeometryGEMGeometry := cmssw/Geometry/GEMGeometry
Geometry/GEMGeometry := GeometryGEMGeometry
GeometryGEMGeometry_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeometryGEMGeometry_EX_USE := $(foreach d, cmssw  Geometry/CommonDetUnit Geometry/CommonTopologies DataFormats/MuonDetId,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryGEMGeometry_EX_LIB   := GeometryGEMGeometry
ALL_EXTERNAL_PRODS += GeometryGEMGeometry
endif
ifeq ($(strip $(CalibFormats/CastorObjects)),)
CalibFormatsCastorObjects := cmssw/CalibFormats/CastorObjects
CalibFormats/CastorObjects := CalibFormatsCastorObjects
CalibFormatsCastorObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibFormatsCastorObjects_EX_USE := $(foreach d, cmssw  FWCore/Framework DataFormats/HcalDetId DataFormats/HcalDigi CalibFormats/CaloObjects CondFormats/CastorObjects CondFormats/DataRecord boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibFormatsCastorObjects_EX_LIB   := CalibFormatsCastorObjects
ALL_EXTERNAL_PRODS += CalibFormatsCastorObjects
endif
ifeq ($(strip $(DataFormats/EgammaCandidates)),)
DataFormatsEgammaCandidates := cmssw/DataFormats/EgammaCandidates
DataFormats/EgammaCandidates := DataFormatsEgammaCandidates
DataFormatsEgammaCandidates_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsEgammaCandidates_EX_USE := $(foreach d, cmssw  DataFormats/Candidate DataFormats/Common DataFormats/EgammaReco DataFormats/CaloRecHit DataFormats/CaloTowers DataFormats/Math DataFormats/RecoCandidate DataFormats/TrackReco DataFormats/TrackerRecHit2D DataFormats/TrackingRecHit DataFormats/VertexReco DataFormats/GeometryCommonDetAlgo FWCore/MessageLogger rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsEgammaCandidates_EX_LIB   := DataFormatsEgammaCandidates
ALL_EXTERNAL_PRODS += DataFormatsEgammaCandidates
endif
ifeq ($(strip $(DataFormats/WrappedStdDictionaries)),)
DataFormatsWrappedStdDictionaries := cmssw/DataFormats/WrappedStdDictionaries
DataFormats/WrappedStdDictionaries := DataFormatsWrappedStdDictionaries
DataFormatsWrappedStdDictionaries_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsWrappedStdDictionaries_EX_USE := $(foreach d, cmssw  DataFormats/Common,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsWrappedStdDictionaries_EX_LIB   := DataFormatsWrappedStdDictionaries
ALL_EXTERNAL_PRODS += DataFormatsWrappedStdDictionaries
endif
ifeq ($(strip $(PhysicsTools/PatUtils)),)
PhysicsToolsPatUtils := cmssw/PhysicsTools/PatUtils
PhysicsTools/PatUtils := PhysicsToolsPatUtils
PhysicsToolsPatUtils_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
PhysicsToolsPatUtils_EX_USE := $(foreach d, cmssw  TrackingTools/Records CommonTools/Utils DataFormats/Math DataFormats/Candidate DataFormats/PatCandidates DataFormats/TrackReco DataFormats/MuonReco DataFormats/GsfTrackReco DataFormats/VertexReco TrackingTools/TransientTrack Utilities/General root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsPatUtils_EX_LIB   := PhysicsToolsPatUtils
ALL_EXTERNAL_PRODS += PhysicsToolsPatUtils
endif
ifeq ($(strip $(CalibTracker/SiStripLorentzAngle)),)
CalibTrackerSiStripLorentzAngle := cmssw/CalibTracker/SiStripLorentzAngle
CalibTracker/SiStripLorentzAngle := CalibTrackerSiStripLorentzAngle
CalibTrackerSiStripLorentzAngle_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibTrackerSiStripLorentzAngle_EX_USE := $(foreach d, cmssw  DataFormats/SiStripDetId root DataFormats/SiStripCluster,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibTrackerSiStripLorentzAngle_EX_LIB   := CalibTrackerSiStripLorentzAngle
ALL_EXTERNAL_PRODS += CalibTrackerSiStripLorentzAngle
endif
ifeq ($(strip $(RecoEgamma/Examples)),)
src_RecoEgamma_Examples := cmssw/RecoEgamma/Examples
RecoEgamma/Examples  := src_RecoEgamma_Examples
src_RecoEgamma_Examples_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
src_RecoEgamma_Examples_EX_USE := $(foreach d, SimDataFormats/GeneratorProducts clhep RecoEcal/EgammaCoreTools FWCore/Framework cmssw DataFormats/JetReco DataFormats/DetId DataFormats/EgammaReco DQMServices/Components root DataFormats/EgammaCandidates MagneticField/Records FWCore/PluginManager RecoEgamma/EgammaMCTools DataFormats/Common hepmc DQMServices/Core RecoEgamma/EgammaElectronAlgos CommonTools/UtilAlgos FWCore/ServiceRegistry DataFormats/TrackingRecHit MagneticField/Engine FWCore/ParameterSet,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_RecoEgamma_Examples
endif

ifeq ($(strip $(DataFormats/CaloTowers)),)
DataFormatsCaloTowers := cmssw/DataFormats/CaloTowers
DataFormats/CaloTowers := DataFormatsCaloTowers
DataFormatsCaloTowers_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsCaloTowers_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/Math FWCore/Utilities DataFormats/Candidate rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsCaloTowers_EX_LIB   := DataFormatsCaloTowers
ALL_EXTERNAL_PRODS += DataFormatsCaloTowers
endif
ifeq ($(strip $(SimCalorimetry/EcalSelectiveReadoutProducers)),)
SimCalorimetryEcalSelectiveReadoutProducers := cmssw/SimCalorimetry/EcalSelectiveReadoutProducers
SimCalorimetry/EcalSelectiveReadoutProducers := SimCalorimetryEcalSelectiveReadoutProducers
SimCalorimetryEcalSelectiveReadoutProducers_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimCalorimetryEcalSelectiveReadoutProducers_EX_USE := $(foreach d, cmssw  SimCalorimetry/EcalSelectiveReadoutAlgos FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger DataFormats/EcalDigi DataFormats/EcalDetId CondFormats/DataRecord CondFormats/EcalObjects CondCore/EcalPlugins CondCore/DBOutputService CondCore/DBCommon,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimCalorimetryEcalSelectiveReadoutProducers_EX_LIB   := SimCalorimetryEcalSelectiveReadoutProducers
ALL_EXTERNAL_PRODS += SimCalorimetryEcalSelectiveReadoutProducers
endif
ifeq ($(strip $(RecoVertex/TrimmedVertexFit)),)
RecoVertexTrimmedVertexFit := cmssw/RecoVertex/TrimmedVertexFit
RecoVertex/TrimmedVertexFit := RecoVertexTrimmedVertexFit
RecoVertexTrimmedVertexFit_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoVertexTrimmedVertexFit_EX_USE := $(foreach d, cmssw  DataFormats/BeamSpot FWCore/MessageLogger FWCore/ParameterSet RecoVertex/TrimmedKalmanVertexFinder RecoVertex/VertexPrimitives RecoVertex/VertexTools,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoVertexTrimmedVertexFit_EX_LIB   := RecoVertexTrimmedVertexFit
ALL_EXTERNAL_PRODS += RecoVertexTrimmedVertexFit
endif
ifeq ($(strip $(FastSimDataFormats/External)),)
FastSimDataFormatsExternal := cmssw/FastSimDataFormats/External
FastSimDataFormats/External := FastSimDataFormatsExternal
FastSimDataFormatsExternal_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FastSimDataFormatsExternal_EX_USE := $(foreach d, cmssw  DataFormats/Common rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FastSimDataFormatsExternal_EX_LIB   := FastSimDataFormatsExternal
ALL_EXTERNAL_PRODS += FastSimDataFormatsExternal
endif
ifeq ($(strip $(CalibFormats/SiPixelObjects)),)
CalibFormatsSiPixelObjects := cmssw/CalibFormats/SiPixelObjects
CalibFormats/SiPixelObjects := CalibFormatsSiPixelObjects
CalibFormatsSiPixelObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibFormatsSiPixelObjects_EX_USE := $(foreach d, cmssw  ,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibFormatsSiPixelObjects_EX_LIB   := CalibFormatsSiPixelObjects
ALL_EXTERNAL_PRODS += CalibFormatsSiPixelObjects
endif
ifeq ($(strip $(CommonTools/Utils)),)
CommonToolsUtils := cmssw/CommonTools/Utils
CommonTools/Utils := CommonToolsUtils
CommonToolsUtils_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CommonToolsUtils_EX_USE := $(foreach d, cmssw  FWCore/Utilities boost roothistmatrix roottmva,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CommonToolsUtils_EX_LIB   := CommonToolsUtils
ALL_EXTERNAL_PRODS += CommonToolsUtils
endif
ifeq ($(strip $(CalibMuon/CSCCalibration)),)
CalibMuonCSCCalibration := cmssw/CalibMuon/CSCCalibration
CalibMuon/CSCCalibration := CalibMuonCSCCalibration
CalibMuonCSCCalibration_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibMuonCSCCalibration_EX_USE := $(foreach d, cmssw  CondFormats/CSCObjects CondFormats/DataRecord DataFormats/MuonDetId FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibMuonCSCCalibration_EX_LIB   := CalibMuonCSCCalibration
ALL_EXTERNAL_PRODS += CalibMuonCSCCalibration
endif
ifeq ($(strip $(DQM/HcalMonitorTasks)),)
DQMHcalMonitorTasks := cmssw/DQM/HcalMonitorTasks
DQM/HcalMonitorTasks := DQMHcalMonitorTasks
DQMHcalMonitorTasks_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMHcalMonitorTasks_EX_USE := $(foreach d, cmssw  DataFormats/HcalRecHit DataFormats/HcalDigi TBDataFormats/HcalTBObjects EventFilter/HcalRawToDigi CalibFormats/HcalObjects CalibCalorimetry/HcalAlgos Geometry/HcalTowerAlgo FWCore/ParameterSet FWCore/Framework FWCore/MessageLogger DQMServices/Core rootmath DataFormats/L1GlobalTrigger DataFormats/L1GlobalMuonTrigger DataFormats/Math DataFormats/Common DataFormats/L1Trigger DataFormats/L1GlobalCaloTrigger DataFormats/Candidate L1Trigger/RegionalCaloTrigger DataFormats/L1CaloTrigger DataFormats/EcalDigi HLTrigger/HLTanalyzers DataFormats/METReco DataFormats/JetReco DataFormats/TrackReco RecoMET/METAlgorithms CondFormats/RunInfo,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMHcalMonitorTasks_EX_LIB   := DQMHcalMonitorTasks
ALL_EXTERNAL_PRODS += DQMHcalMonitorTasks
endif
ifeq ($(strip $(FWCore/Services)),)
FWCoreServices := cmssw/FWCore/Services
FWCore/Services := FWCoreServices
FWCoreServices_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCoreServices_EX_USE := $(foreach d, cmssw  DataFormats/Provenance DataFormats/Common DataFormats/Streamer FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager FWCore/RootAutoLibraryLoader FWCore/ServiceRegistry FWCore/Utilities FWCore/Concurrency FWCore/Framework boost rootcintex rootcore roothistmatrix xerces-c,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCoreServices_EX_LIB   := FWCoreServices
ALL_EXTERNAL_PRODS += FWCoreServices
endif
ifeq ($(strip $(CondTools/DT)),)
CondToolsDT := cmssw/CondTools/DT
CondTools/DT := CondToolsDT
CondToolsDT_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondToolsDT_EX_USE := $(foreach d, cmssw  CondCore/CondDB CondFormats/DTObjects CondFormats/DataRecord CoralBase DataFormats/Provenance FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry CondCore/DBOutputService RelationalAccess rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondToolsDT_EX_LIB   := CondToolsDT
ALL_EXTERNAL_PRODS += CondToolsDT
endif
ifeq ($(strip $(SimDataFormats/TrackingAnalysis)),)
SimDataFormatsTrackingAnalysis := cmssw/SimDataFormats/TrackingAnalysis
SimDataFormats/TrackingAnalysis := SimDataFormatsTrackingAnalysis
SimDataFormatsTrackingAnalysis_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimDataFormatsTrackingAnalysis_EX_USE := $(foreach d, cmssw  DataFormats/Candidate DataFormats/Common DataFormats/Math DataFormats/TrackReco SimDataFormats/EncodedEventId SimDataFormats/GeneratorProducts SimDataFormats/Track SimDataFormats/TrackingHit SimDataFormats/Vertex rootrflx clhepheader,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimDataFormatsTrackingAnalysis_EX_LIB   := SimDataFormatsTrackingAnalysis
ALL_EXTERNAL_PRODS += SimDataFormatsTrackingAnalysis
endif
ifeq ($(strip $(Fireworks/Geometry)),)
FireworksGeometry := cmssw/Fireworks/Geometry
Fireworks/Geometry := FireworksGeometry
FireworksGeometry_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FireworksGeometry_EX_USE := $(foreach d, cmssw  FWCore/PluginManager FWCore/Framework FWCore/MessageLogger Geometry/CommonDetUnit Geometry/MuonNumbering Geometry/EcalCommonData Geometry/CSCGeometryBuilder DetectorDescription/Core Geometry/CaloGeometry Geometry/DTGeometry Geometry/CSCGeometry Geometry/RPCGeometry Geometry/GEMGeometry Geometry/TrackerGeometryBuilder Geometry/Records DataFormats/GeometrySurface Fireworks/Core rootcore,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FireworksGeometry_EX_LIB   := FireworksGeometry
ALL_EXTERNAL_PRODS += FireworksGeometry
endif
ifeq ($(strip $(TrackingTools/PatternTools)),)
TrackingToolsPatternTools := cmssw/TrackingTools/PatternTools
TrackingTools/PatternTools := TrackingToolsPatternTools
TrackingToolsPatternTools_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TrackingToolsPatternTools_EX_USE := $(foreach d, cmssw  DataFormats/BeamSpot DataFormats/Common DataFormats/GeometrySurface DataFormats/GeometryVector DataFormats/TrackReco DataFormats/TrackerRecHit2D FWCore/MessageLogger FWCore/Utilities Geometry/CommonDetUnit TrackingTools/AnalyticalJacobians TrackingTools/GeomPropagators TrackingTools/TrajectoryParametrization TrackingTools/TrajectoryState rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TrackingToolsPatternTools_EX_LIB   := TrackingToolsPatternTools
ALL_EXTERNAL_PRODS += TrackingToolsPatternTools
endif
ifeq ($(strip $(RecoMuon/MeasurementDet)),)
RecoMuonMeasurementDet := cmssw/RecoMuon/MeasurementDet
RecoMuon/MeasurementDet := RecoMuonMeasurementDet
RecoMuonMeasurementDet_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoMuonMeasurementDet_EX_USE := $(foreach d, cmssw  DataFormats/MuonDetId DataFormats/DTRecHit DataFormats/CSCRecHit FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Services RecoMuon/TransientTrackingRecHit,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoMuonMeasurementDet_EX_LIB   := RecoMuonMeasurementDet
ALL_EXTERNAL_PRODS += RecoMuonMeasurementDet
endif
ifeq ($(strip $(CondTools/SiPixel)),)
CondToolsSiPixel := cmssw/CondTools/SiPixel
CondTools/SiPixel := CondToolsSiPixel
CondToolsSiPixel_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondToolsSiPixel_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger CondFormats/DataRecord CondFormats/SiPixelObjects CondCore/PopCon,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondToolsSiPixel_EX_LIB   := CondToolsSiPixel
ALL_EXTERNAL_PRODS += CondToolsSiPixel
endif
ifeq ($(strip $(DataFormats/HLTReco)),)
DataFormatsHLTReco := cmssw/DataFormats/HLTReco
DataFormats/HLTReco := DataFormatsHLTReco
DataFormatsHLTReco_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsHLTReco_EX_USE := $(foreach d, cmssw  FWCore/Utilities DataFormats/Common DataFormats/CLHEP DataFormats/Candidate boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsHLTReco_EX_LIB   := DataFormatsHLTReco
ALL_EXTERNAL_PRODS += DataFormatsHLTReco
endif
ifeq ($(strip $(RecoVertex/TertiaryTracksVertexFinder)),)
RecoVertexTertiaryTracksVertexFinder := cmssw/RecoVertex/TertiaryTracksVertexFinder
RecoVertex/TertiaryTracksVertexFinder := RecoVertexTertiaryTracksVertexFinder
RecoVertexTertiaryTracksVertexFinder_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoVertexTertiaryTracksVertexFinder_EX_USE := $(foreach d, cmssw  DataFormats/GeometryCommonDetAlgo DataFormats/GeometrySurface RecoVertex/KalmanVertexFit RecoVertex/TrimmedKalmanVertexFinder RecoVertex/VertexPrimitives RecoVertex/VertexTools TrackingTools/GeomPropagators TrackingTools/TrajectoryState TrackingTools/TransientTrack clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoVertexTertiaryTracksVertexFinder_EX_LIB   := RecoVertexTertiaryTracksVertexFinder
ALL_EXTERNAL_PRODS += RecoVertexTertiaryTracksVertexFinder
endif
ifeq ($(strip $(RecoJets/JetAssociationAlgorithms)),)
RecoJetsJetAssociationAlgorithms := cmssw/RecoJets/JetAssociationAlgorithms
RecoJets/JetAssociationAlgorithms := RecoJetsJetAssociationAlgorithms
RecoJetsJetAssociationAlgorithms_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoJetsJetAssociationAlgorithms_EX_USE := $(foreach d, cmssw  DataFormats/Math DataFormats/JetReco DataFormats/TrackReco DataFormats/VertexReco DataFormats/GeometrySurface TrackingTools/GeomPropagators TrackingTools/TrajectoryParametrization TrackingTools/TrajectoryState TrackingTools/TransientTrack Geometry/CaloGeometry,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoJetsJetAssociationAlgorithms_EX_LIB   := RecoJetsJetAssociationAlgorithms
ALL_EXTERNAL_PRODS += RecoJetsJetAssociationAlgorithms
endif
ifeq ($(strip $(RecoEgamma/EgammaTools)),)
RecoEgammaEgammaTools := cmssw/RecoEgamma/EgammaTools
RecoEgamma/EgammaTools := RecoEgammaEgammaTools
RecoEgammaEgammaTools_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoEgammaEgammaTools_EX_USE := $(foreach d, cmssw  FWCore/Framework DataFormats/HcalRecHit DataFormats/EgammaReco DataFormats/EgammaCandidates Geometry/CaloGeometry RecoCaloTools/MetaCollections clhep root PhysicsTools/MVAComputer PhysicsTools/MVATrainer CondFormats/DataRecord CondFormats/EgammaObjects RecoEcal/EgammaCoreTools CondCore/DBOutputService DataFormats/ParticleFlowReco roottmva,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoEgammaEgammaTools_EX_LIB   := RecoEgammaEgammaTools
ALL_EXTERNAL_PRODS += RecoEgammaEgammaTools
endif
ifeq ($(strip $(FastSimulation/ParticlePropagator)),)
FastSimulationParticlePropagator := cmssw/FastSimulation/ParticlePropagator
FastSimulation/ParticlePropagator := FastSimulationParticlePropagator
FastSimulationParticlePropagator_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FastSimulationParticlePropagator_EX_USE := $(foreach d, cmssw  DataFormats/GeometrySurface DataFormats/GeometryVector FWCore/Framework FastSimulation/BaseParticlePropagator FastSimulation/Event FastSimulation/TrackerSetup FastSimulation/Utilities MagneticField/Engine MagneticField/Records boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FastSimulationParticlePropagator_EX_LIB   := FastSimulationParticlePropagator
ALL_EXTERNAL_PRODS += FastSimulationParticlePropagator
endif
ifeq ($(strip $(RecoVertex/GaussianSumVertexFit)),)
RecoVertexGaussianSumVertexFit := cmssw/RecoVertex/GaussianSumVertexFit
RecoVertex/GaussianSumVertexFit := RecoVertexGaussianSumVertexFit
RecoVertexGaussianSumVertexFit_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoVertexGaussianSumVertexFit_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/GeometryCommonDetAlgo DataFormats/GeometrySurface FWCore/ParameterSet RecoVertex/AdaptiveVertexFit RecoVertex/KalmanVertexFit RecoVertex/LinearizationPointFinders RecoVertex/VertexPrimitives RecoVertex/VertexTools TrackingTools/GsfTools TrackingTools/PatternTools TrackingTools/TrajectoryState TrackingTools/TransientTrack,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoVertexGaussianSumVertexFit_EX_LIB   := RecoVertexGaussianSumVertexFit
ALL_EXTERNAL_PRODS += RecoVertexGaussianSumVertexFit
endif
ifeq ($(strip $(Geometry/HcalTowerAlgo)),)
GeometryHcalTowerAlgo := cmssw/Geometry/HcalTowerAlgo
Geometry/HcalTowerAlgo := GeometryHcalTowerAlgo
GeometryHcalTowerAlgo_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeometryHcalTowerAlgo_EX_USE := $(foreach d, cmssw  Geometry/CaloGeometry Geometry/CaloTopology Geometry/HcalCommonData DataFormats/HcalDetId DataFormats/CaloTowers FWCore/MessageLogger FWCore/ParameterSet clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryHcalTowerAlgo_EX_LIB   := GeometryHcalTowerAlgo
ALL_EXTERNAL_PRODS += GeometryHcalTowerAlgo
endif
ifeq ($(strip $(RecoParticleFlow/PFRootEvent)),)
RecoParticleFlowPFRootEvent := cmssw/RecoParticleFlow/PFRootEvent
RecoParticleFlow/PFRootEvent := RecoParticleFlowPFRootEvent
RecoParticleFlowPFRootEvent_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoParticleFlowPFRootEvent_EX_USE := $(foreach d, cmssw  DQMServices/Core DataFormats/CaloTowers DataFormats/Candidate DataFormats/Common DataFormats/FWLite DataFormats/HepMCCandidate DataFormats/JetReco DataFormats/METReco DataFormats/Math DataFormats/MuonReco DataFormats/ParticleFlowCandidate DataFormats/ParticleFlowReco DataFormats/Provenance DataFormats/RecoCandidate DataFormats/TrackReco DataFormats/VertexReco FWCore/FWLite FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry Geometry/CaloTopology RecoParticleFlow/Benchmark RecoParticleFlow/PFClusterProducer RecoParticleFlow/PFClusterTools RecoParticleFlow/PFProducer RecoParticleFlow/PFTracking SimDataFormats/GeneratorProducts DQMOffline/PFTau fastjet rootinteractive rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoParticleFlowPFRootEvent_EX_LIB   := RecoParticleFlowPFRootEvent
ALL_EXTERNAL_PRODS += RecoParticleFlowPFRootEvent
endif
ifeq ($(strip $(PhysicsTools/HepMCCandAlgos)),)
PhysicsToolsHepMCCandAlgos := cmssw/PhysicsTools/HepMCCandAlgos
PhysicsTools/HepMCCandAlgos := PhysicsToolsHepMCCandAlgos
PhysicsToolsHepMCCandAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
PhysicsToolsHepMCCandAlgos_EX_USE := $(foreach d, cmssw  SimGeneral/HepPDTRecord DataFormats/Candidate DataFormats/Common DataFormats/HepMCCandidate,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsHepMCCandAlgos_EX_LIB   := PhysicsToolsHepMCCandAlgos
ALL_EXTERNAL_PRODS += PhysicsToolsHepMCCandAlgos
endif
ifeq ($(strip $(RecoHI/HiJetAlgos)),)
RecoHIHiJetAlgos := cmssw/RecoHI/HiJetAlgos
RecoHI/HiJetAlgos := RecoHIHiJetAlgos
RecoHIHiJetAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoHIHiJetAlgos_EX_USE := $(foreach d, cmssw  FWCore/Framework RecoJets/JetProducers DataFormats/HeavyIonEvent,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoHIHiJetAlgos_EX_LIB   := RecoHIHiJetAlgos
ALL_EXTERNAL_PRODS += RecoHIHiJetAlgos
endif
ifeq ($(strip $(GeneratorInterface/Core)),)
GeneratorInterfaceCore := cmssw/GeneratorInterface/Core
GeneratorInterface/Core := GeneratorInterfaceCore
GeneratorInterfaceCore_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeneratorInterfaceCore_EX_USE := $(foreach d, cmssw  FWCore/Concurrency FWCore/ServiceRegistry FWCore/Utilities SimDataFormats/GeneratorProducts GeneratorInterface/LHEInterface boost clhep lhapdf f77compiler,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeneratorInterfaceCore_EX_LIB   := GeneratorInterfaceCore
ALL_EXTERNAL_PRODS += GeneratorInterfaceCore
endif
ifeq ($(strip $(DataFormats/CSCDigi)),)
DataFormatsCSCDigi := cmssw/DataFormats/CSCDigi
DataFormats/CSCDigi := DataFormatsCSCDigi
DataFormatsCSCDigi_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsCSCDigi_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/MuonDetId boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsCSCDigi_EX_LIB   := DataFormatsCSCDigi
ALL_EXTERNAL_PRODS += DataFormatsCSCDigi
endif
ifeq ($(strip $(RecoTracker/TkSeedingLayers)),)
RecoTrackerTkSeedingLayers := cmssw/RecoTracker/TkSeedingLayers
RecoTracker/TkSeedingLayers := RecoTrackerTkSeedingLayers
RecoTrackerTkSeedingLayers_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoTrackerTkSeedingLayers_EX_USE := $(foreach d, cmssw  boost clhep CondFormats/DataRecord DataFormats/SiPixelDetId DataFormats/SiStripDetId DataFormats/TrackerRecHit2D FWCore/Framework FWCore/ParameterSet FWCore/PluginManager Geometry/CommonDetUnit Geometry/Records Geometry/TrackerGeometryBuilder RecoTracker/Record RecoTracker/TkDetLayers RecoTracker/TransientTrackingRecHit TrackingTools/DetLayers TrackingTools/TransientTrackingRecHit,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoTrackerTkSeedingLayers_EX_LIB   := RecoTrackerTkSeedingLayers
ALL_EXTERNAL_PRODS += RecoTrackerTkSeedingLayers
endif
ifeq ($(strip $(CalibCalorimetry/CastorCalib)),)
CalibCalorimetryCastorCalib := cmssw/CalibCalorimetry/CastorCalib
CalibCalorimetry/CastorCalib := CalibCalorimetryCastorCalib
CalibCalorimetryCastorCalib_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibCalorimetryCastorCalib_EX_USE := $(foreach d, cmssw  boost root clhep FWCore/Framework FWCore/MessageLogger DataFormats/HcalDetId CondFormats/HcalObjects DataFormats/HcalDigi CalibFormats/HcalObjects CalibFormats/CastorObjects Geometry/ForwardGeometry,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibCalorimetryCastorCalib_EX_LIB   := CalibCalorimetryCastorCalib
ALL_EXTERNAL_PRODS += CalibCalorimetryCastorCalib
endif
ifeq ($(strip $(Geometry/MuonNumbering)),)
GeometryMuonNumbering := cmssw/Geometry/MuonNumbering
Geometry/MuonNumbering := GeometryMuonNumbering
GeometryMuonNumbering_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeometryMuonNumbering_EX_USE := $(foreach d, cmssw  DataFormats/MuonDetId DetectorDescription/Core,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryMuonNumbering_EX_LIB   := GeometryMuonNumbering
ALL_EXTERNAL_PRODS += GeometryMuonNumbering
endif
ifeq ($(strip $(RecoLocalTracker/SiStripClusterizer)),)
RecoLocalTrackerSiStripClusterizer := cmssw/RecoLocalTracker/SiStripClusterizer
RecoLocalTracker/SiStripClusterizer := RecoLocalTrackerSiStripClusterizer
RecoLocalTrackerSiStripClusterizer_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoLocalTrackerSiStripClusterizer_EX_USE := $(foreach d, cmssw  DataFormats/Common FWCore/Framework FWCore/ParameterSet DataFormats/SiStripDigi DataFormats/SiStripCluster DataFormats/SiStripDetId CondFormats/DataRecord CondFormats/SiStripObjects CalibFormats/SiStripObjects CalibTracker/Records EventFilter/SiStripRawToDigi,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoLocalTrackerSiStripClusterizer_EX_LIB   := RecoLocalTrackerSiStripClusterizer
ALL_EXTERNAL_PRODS += RecoLocalTrackerSiStripClusterizer
endif
ifeq ($(strip $(CalibCalorimetry/EcalTPGTools)),)
CalibCalorimetryEcalTPGTools := cmssw/CalibCalorimetry/EcalTPGTools
CalibCalorimetry/EcalTPGTools := CalibCalorimetryEcalTPGTools
CalibCalorimetryEcalTPGTools_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibCalorimetryEcalTPGTools_EX_USE := $(foreach d, cmssw  DataFormats/EcalDigi DataFormats/EcalDetId CondFormats/DataRecord CondFormats/EcalObjects SimCalorimetry/EcalSimAlgos FWCore/Framework FWCore/Utilities CondCore/DBCommon CondCore/DBOutputService,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibCalorimetryEcalTPGTools_EX_LIB   := CalibCalorimetryEcalTPGTools
ALL_EXTERNAL_PRODS += CalibCalorimetryEcalTPGTools
endif
ifeq ($(strip $(RecoMuon/Records)),)
RecoMuonRecords := cmssw/RecoMuon/Records
RecoMuon/Records := RecoMuonRecords
RecoMuonRecords_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoMuonRecords_EX_USE := $(foreach d, cmssw  FWCore/Framework Geometry/Records boost CondFormats/DataRecord,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoMuonRecords_EX_LIB   := RecoMuonRecords
ALL_EXTERNAL_PRODS += RecoMuonRecords
endif
ifeq ($(strip $(FastSimulation/BaseParticlePropagator)),)
FastSimulationBaseParticlePropagator := cmssw/FastSimulation/BaseParticlePropagator
FastSimulation/BaseParticlePropagator := FastSimulationBaseParticlePropagator
FastSimulationBaseParticlePropagator_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FastSimulationBaseParticlePropagator_EX_USE := $(foreach d, cmssw  FastSimulation/Particle,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FastSimulationBaseParticlePropagator_EX_LIB   := FastSimulationBaseParticlePropagator
ALL_EXTERNAL_PRODS += FastSimulationBaseParticlePropagator
endif
ifeq ($(strip $(JetMETCorrections/JetParton)),)
JetMETCorrectionsJetParton := cmssw/JetMETCorrections/JetParton
JetMETCorrections/JetParton := JetMETCorrectionsJetParton
JetMETCorrectionsJetParton_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
JetMETCorrectionsJetParton_EX_USE := $(foreach d, cmssw  clhep DataFormats/Common JetMETCorrections/Objects FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DataFormats/JetReco DataFormats/RecoCandidate rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
JetMETCorrectionsJetParton_EX_LIB   := JetMETCorrectionsJetParton
ALL_EXTERNAL_PRODS += JetMETCorrectionsJetParton
endif
ifeq ($(strip $(OnlineDB/SiStripESSources)),)
OnlineDBSiStripESSources := cmssw/OnlineDB/SiStripESSources
OnlineDB/SiStripESSources := OnlineDBSiStripESSources
OnlineDBSiStripESSources_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
OnlineDBSiStripESSources_EX_USE := $(foreach d, cmssw  CalibTracker/Records CalibTracker/SiStripESProducers CalibFormats/SiStripObjects CondFormats/SiStripObjects DataFormats/SiStripCommon FWCore/Framework FWCore/MessageLogger FWCore/PluginManager OnlineDB/SiStripConfigDb tkonlineswdb boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
OnlineDBSiStripESSources_EX_LIB   := OnlineDBSiStripESSources
ALL_EXTERNAL_PRODS += OnlineDBSiStripESSources
endif
ifeq ($(strip $(DataFormats/CastorReco)),)
DataFormatsCastorReco := cmssw/DataFormats/CastorReco
DataFormats/CastorReco := DataFormatsCastorReco
DataFormatsCastorReco_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsCastorReco_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/Candidate rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsCastorReco_EX_LIB   := DataFormatsCastorReco
ALL_EXTERNAL_PRODS += DataFormatsCastorReco
endif
ifeq ($(strip $(Fireworks/ParticleFlow)),)
FireworksParticleFlow := cmssw/Fireworks/ParticleFlow
Fireworks/ParticleFlow := FireworksParticleFlow
FireworksParticleFlow_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FireworksParticleFlow_EX_USE := $(foreach d, cmssw  DataFormats/ParticleFlowCandidate Fireworks/Core Fireworks/Candidates Fireworks/Tracks,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FireworksParticleFlow_EX_LIB   := FireworksParticleFlow
ALL_EXTERNAL_PRODS += FireworksParticleFlow
endif
ifeq ($(strip $(DQM/SiStripCommissioningSummary)),)
DQMSiStripCommissioningSummary := cmssw/DQM/SiStripCommissioningSummary
DQM/SiStripCommissioningSummary := DQMSiStripCommissioningSummary
DQMSiStripCommissioningSummary_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMSiStripCommissioningSummary_EX_USE := $(foreach d, cmssw  CondFormats/SiStripObjects DataFormats/SiStripCommon DataFormats/SiStripDetId boost rootgraphics,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMSiStripCommissioningSummary_EX_LIB   := DQMSiStripCommissioningSummary
ALL_EXTERNAL_PRODS += DQMSiStripCommissioningSummary
endif
ifeq ($(strip $(EventFilter/CastorRawToDigi)),)
EventFilterCastorRawToDigi := cmssw/EventFilter/CastorRawToDigi
EventFilter/CastorRawToDigi := EventFilterCastorRawToDigi
EventFilterCastorRawToDigi_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
EventFilterCastorRawToDigi_EX_USE := $(foreach d, cmssw  DataFormats/HcalDetId DataFormats/HcalDigi DataFormats/FEDRawData FWCore/MessageLogger CondFormats/CastorObjects FWCore/Utilities EventFilter/HcalRawToDigi boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
EventFilterCastorRawToDigi_EX_LIB   := EventFilterCastorRawToDigi
ALL_EXTERNAL_PRODS += EventFilterCastorRawToDigi
endif
ifeq ($(strip $(DataFormats/TrajectorySeed)),)
DataFormatsTrajectorySeed := cmssw/DataFormats/TrajectorySeed
DataFormats/TrajectorySeed := DataFormatsTrajectorySeed
DataFormatsTrajectorySeed_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsTrajectorySeed_EX_USE := $(foreach d, cmssw  DataFormats/Common rootrflx clhepheader,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsTrajectorySeed_EX_LIB   := DataFormatsTrajectorySeed
ALL_EXTERNAL_PRODS += DataFormatsTrajectorySeed
endif
ifeq ($(strip $(DataFormats/MuonDetId)),)
DataFormatsMuonDetId := cmssw/DataFormats/MuonDetId
DataFormats/MuonDetId := DataFormatsMuonDetId
DataFormatsMuonDetId_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsMuonDetId_EX_USE := $(foreach d, cmssw  FWCore/Utilities rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsMuonDetId_EX_LIB   := DataFormatsMuonDetId
ALL_EXTERNAL_PRODS += DataFormatsMuonDetId
endif
ifeq ($(strip $(RecoCaloTools/Selectors)),)
RecoCaloToolsSelectors := cmssw/RecoCaloTools/Selectors
RecoCaloTools/Selectors := RecoCaloToolsSelectors
RecoCaloToolsSelectors_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoCaloToolsSelectors_EX_USE := $(foreach d, cmssw  Geometry/CaloGeometry RecoCaloTools/MetaCollections,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoCaloToolsSelectors_EX_LIB   := RecoCaloToolsSelectors
ALL_EXTERNAL_PRODS += RecoCaloToolsSelectors
endif
ifeq ($(strip $(DQM/TrackingMonitorClient)),)
DQMTrackingMonitorClient := cmssw/DQM/TrackingMonitorClient
DQM/TrackingMonitorClient := DQMTrackingMonitorClient
DQMTrackingMonitorClient_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMTrackingMonitorClient_EX_USE := $(foreach d, cmssw  FWCore/MessageLogger FWCore/Framework EventFilter/Utilities DQMServices/ClientConfig CalibFormats/SiStripObjects CondFormats/SiStripObjects CondFormats/DataRecord CondFormats/RunInfo CommonTools/TrackerMap CalibTracker/Records DQM/TrackerCommon DQM/SiStripCommon DQM/SiStripMonitorClient DQM/SiStripMonitorSummary DataFormats/SiStripDetId boost root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMTrackingMonitorClient_EX_LIB   := DQMTrackingMonitorClient
ALL_EXTERNAL_PRODS += DQMTrackingMonitorClient
endif
ifeq ($(strip $(DataFormats/L1CaloTrigger)),)
DataFormatsL1CaloTrigger := cmssw/DataFormats/L1CaloTrigger
DataFormats/L1CaloTrigger := DataFormatsL1CaloTrigger
DataFormatsL1CaloTrigger_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsL1CaloTrigger_EX_USE := $(foreach d, cmssw  DataFormats/Common rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsL1CaloTrigger_EX_LIB   := DataFormatsL1CaloTrigger
ALL_EXTERNAL_PRODS += DataFormatsL1CaloTrigger
endif
ifeq ($(strip $(CondFormats/RunInfo)),)
CondFormatsRunInfo := cmssw/CondFormats/RunInfo
CondFormats/RunInfo := CondFormatsRunInfo
CondFormatsRunInfo_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondFormatsRunInfo_EX_USE := $(foreach d, cmssw  CondFormats/Common FWCore/Utilities CoralBase rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsRunInfo_EX_LIB   := CondFormatsRunInfo
ALL_EXTERNAL_PRODS += CondFormatsRunInfo
endif
ifeq ($(strip $(SimG4Core/Physics)),)
SimG4CorePhysics := cmssw/SimG4Core/Physics
SimG4Core/Physics := SimG4CorePhysics
SimG4CorePhysics_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CorePhysics_EX_USE := $(foreach d, cmssw  DetectorDescription/Core FWCore/ParameterSet geant4core heppdt boost sigcpp expat,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CorePhysics_EX_LIB   := SimG4CorePhysics
ALL_EXTERNAL_PRODS += SimG4CorePhysics
endif
ifeq ($(strip $(DetectorDescription/ExprAlgo)),)
DetectorDescriptionExprAlgo := cmssw/DetectorDescription/ExprAlgo
DetectorDescription/ExprAlgo := DetectorDescriptionExprAlgo
DetectorDescriptionExprAlgo_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DetectorDescriptionExprAlgo_EX_USE := $(foreach d, cmssw  DetectorDescription/Base FWCore/MessageLogger clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DetectorDescriptionExprAlgo_EX_LIB   := DetectorDescriptionExprAlgo
ALL_EXTERNAL_PRODS += DetectorDescriptionExprAlgo
endif
ifeq ($(strip $(AnalysisDataFormats/TrackInfo)),)
AnalysisDataFormatsTrackInfo := cmssw/AnalysisDataFormats/TrackInfo
AnalysisDataFormats/TrackInfo := AnalysisDataFormatsTrackInfo
AnalysisDataFormatsTrackInfo_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AnalysisDataFormatsTrackInfo_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/TrackReco DataFormats/VertexReco DataFormats/TrackingRecHit DataFormats/TrajectorySeed DataFormats/TrajectoryState SimDataFormats/GeneratorProducts SimDataFormats/TrackingAnalysis TrackingTools/PatternTools FWCore/MessageLogger rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AnalysisDataFormatsTrackInfo_EX_LIB   := AnalysisDataFormatsTrackInfo
ALL_EXTERNAL_PRODS += AnalysisDataFormatsTrackInfo
endif
ifeq ($(strip $(JetMETCorrections/InterpolationTables)),)
JetMETCorrectionsInterpolationTables := cmssw/JetMETCorrections/InterpolationTables
JetMETCorrections/InterpolationTables := JetMETCorrectionsInterpolationTables
JetMETCorrectionsInterpolationTables_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
JetMETCorrectionsInterpolationTables_EX_USE := $(foreach d, cmssw  Alignment/Geners,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
JetMETCorrectionsInterpolationTables_EX_LIB   := JetMETCorrectionsInterpolationTables
ALL_EXTERNAL_PRODS += JetMETCorrectionsInterpolationTables
endif
ifeq ($(strip $(Validation/EventGenerator)),)
ValidationEventGenerator := cmssw/Validation/EventGenerator
Validation/EventGenerator := ValidationEventGenerator
ValidationEventGenerator_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
ValidationEventGenerator_EX_USE := $(foreach d, cmssw  hepmc SimDataFormats/GeneratorProducts FWCore/Framework FWCore/ParameterSet DataFormats/Common clhep root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ValidationEventGenerator_EX_LIB   := ValidationEventGenerator
ALL_EXTERNAL_PRODS += ValidationEventGenerator
endif
ifeq ($(strip $(CondCore/RegressionTest)),)
CondCoreRegressionTest := cmssw/CondCore/RegressionTest
CondCore/RegressionTest := CondCoreRegressionTest
CondCoreRegressionTest_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondCoreRegressionTest_EX_USE := $(foreach d, cmssw  CondCore/DBCommon CondCore/MetaDataService CondCore/IOVService,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondCoreRegressionTest_EX_LIB   := CondCoreRegressionTest
ALL_EXTERNAL_PRODS += CondCoreRegressionTest
endif
ifeq ($(strip $(CondFormats/Common)),)
CondFormatsCommon := cmssw/CondFormats/Common
CondFormats/Common := CondFormatsCommon
CondFormatsCommon_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondFormatsCommon_EX_USE := $(foreach d, cmssw  DataFormats/StdDictionaries boost FWCore/MessageLogger FWCore/Utilities rootrflx CondCore/ORA,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsCommon_EX_LIB   := CondFormatsCommon
ALL_EXTERNAL_PRODS += CondFormatsCommon
endif
ifeq ($(strip $(DataFormats/CLHEP)),)
DataFormatsCLHEP := cmssw/DataFormats/CLHEP
DataFormats/CLHEP := DataFormatsCLHEP
DataFormatsCLHEP_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsCLHEP_EX_USE := $(foreach d, cmssw  clhep rootrflx rootmath DataFormats/Math,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsCLHEP_EX_LIB   := DataFormatsCLHEP
ALL_EXTERNAL_PRODS += DataFormatsCLHEP
endif
ifeq ($(strip $(JetMETCorrections/Algorithms)),)
JetMETCorrectionsAlgorithms := cmssw/JetMETCorrections/Algorithms
JetMETCorrections/Algorithms := JetMETCorrectionsAlgorithms
JetMETCorrectionsAlgorithms_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
JetMETCorrectionsAlgorithms_EX_USE := $(foreach d, cmssw  CondFormats/JetMETObjects DataFormats/Common DataFormats/EgammaCandidates DataFormats/JetReco DataFormats/Math DataFormats/MuonReco DataFormats/TrackReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet JetMETCorrections/Objects boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
JetMETCorrectionsAlgorithms_EX_LIB   := JetMETCorrectionsAlgorithms
ALL_EXTERNAL_PRODS += JetMETCorrectionsAlgorithms
endif
ifeq ($(strip $(SimG4CMS/EcalTestBeam)),)
SimG4CMSEcalTestBeam := cmssw/SimG4CMS/EcalTestBeam
SimG4CMS/EcalTestBeam := SimG4CMSEcalTestBeam
SimG4CMSEcalTestBeam_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CMSEcalTestBeam_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/EcalDetId DataFormats/Math DetectorDescription/Core FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet Geometry/EcalCommonData Geometry/EcalTestBeam SimDataFormats/EcalTestBeam SimDataFormats/GeneratorProducts SimG4Core/Notification SimG4Core/Watcher SimG4CMS/Calo TBDataFormats/EcalTBObjects clhep rootmath geant4core,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CMSEcalTestBeam_EX_LIB   := SimG4CMSEcalTestBeam
ALL_EXTERNAL_PRODS += SimG4CMSEcalTestBeam
endif
ifeq ($(strip $(GeneratorInterface/HijingInterface)),)
GeneratorInterfaceHijingInterface := cmssw/GeneratorInterface/HijingInterface
GeneratorInterface/HijingInterface := GeneratorInterfaceHijingInterface
GeneratorInterfaceHijingInterface_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeneratorInterfaceHijingInterface_EX_USE := $(foreach d, cmssw  clhep boost GeneratorInterface/Core FWCore/Framework SimDataFormats/GeneratorProducts GeneratorInterface/ExternalDecays f77compiler,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeneratorInterfaceHijingInterface_EX_LIB   := GeneratorInterfaceHijingInterface
ALL_EXTERNAL_PRODS += GeneratorInterfaceHijingInterface
endif
ifeq ($(strip $(DataFormats/BTauReco)),)
DataFormatsBTauReco := cmssw/DataFormats/BTauReco
DataFormats/BTauReco := DataFormatsBTauReco
DataFormatsBTauReco_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsBTauReco_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/JetReco DataFormats/Math DataFormats/ParticleFlowCandidate DataFormats/TrackReco DataFormats/VertexReco FWCore/Utilities boost clhep rootmath rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsBTauReco_EX_LIB   := DataFormatsBTauReco
ALL_EXTERNAL_PRODS += DataFormatsBTauReco
endif
ifeq ($(strip $(CalibFormats/SiStripObjects)),)
CalibFormatsSiStripObjects := cmssw/CalibFormats/SiStripObjects
CalibFormats/SiStripObjects := CalibFormatsSiStripObjects
CalibFormatsSiStripObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibFormatsSiStripObjects_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/MessageLogger DataFormats/SiStripCommon DataFormats/SiStripDetId CondFormats/SiStripObjects CalibTracker/SiStripCommon boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibFormatsSiStripObjects_EX_LIB   := CalibFormatsSiStripObjects
ALL_EXTERNAL_PRODS += CalibFormatsSiStripObjects
endif
ifeq ($(strip $(CondTools/Hcal)),)
CondToolsHcal := cmssw/CondTools/Hcal
CondTools/Hcal := CondToolsHcal
CondToolsHcal_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondToolsHcal_EX_USE := $(foreach d, cmssw  boost oracle oracleocci FWCore/Framework FWCore/Concurrency DataFormats/HcalDetId CalibCalorimetry/HcalAlgos CalibCalorimetry/CastorCalib CondFormats/HcalObjects CondFormats/CastorObjects CalibFormats/HcalObjects CalibFormats/CastorObjects CondCore/IOVService CondCore/DBCommon RelationalAccess CondCore/MetaDataService CondCore/PopCon xerces-c,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondToolsHcal_EX_LIB   := CondToolsHcal
ALL_EXTERNAL_PRODS += CondToolsHcal
endif
ifeq ($(strip $(SimGeneral/GFlash)),)
SimGeneralGFlash := cmssw/SimGeneral/GFlash
SimGeneral/GFlash := SimGeneralGFlash
SimGeneralGFlash_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimGeneralGFlash_EX_USE := $(foreach d, cmssw  FWCore/ParameterSet FWCore/MessageLogger clhep root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimGeneralGFlash_EX_LIB   := SimGeneralGFlash
ALL_EXTERNAL_PRODS += SimGeneralGFlash
endif
ifeq ($(strip $(Alignment/CommonAlignmentAlgorithm)),)
AlignmentCommonAlignmentAlgorithm := cmssw/Alignment/CommonAlignmentAlgorithm
Alignment/CommonAlignmentAlgorithm := AlignmentCommonAlignmentAlgorithm
AlignmentCommonAlignmentAlgorithm_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AlignmentCommonAlignmentAlgorithm_EX_USE := $(foreach d, cmssw  Alignment/CommonAlignment Alignment/CommonAlignmentParametrization Alignment/MuonAlignment Alignment/TrackerAlignment DataFormats/CLHEP DataFormats/TrackingRecHit CondFormats/Alignment DataFormats/SiStripDetId FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager FWCore/Utilities rootcore,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AlignmentCommonAlignmentAlgorithm_EX_LIB   := AlignmentCommonAlignmentAlgorithm
ALL_EXTERNAL_PRODS += AlignmentCommonAlignmentAlgorithm
endif
ifeq ($(strip $(DetectorDescription/Base)),)
DetectorDescriptionBase := cmssw/DetectorDescription/Base
DetectorDescription/Base := DetectorDescriptionBase
DetectorDescriptionBase_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DetectorDescriptionBase_EX_USE := $(foreach d, cmssw  FWCore/Utilities,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DetectorDescriptionBase_EX_LIB   := DetectorDescriptionBase
ALL_EXTERNAL_PRODS += DetectorDescriptionBase
endif
ifeq ($(strip $(PhysicsTools/IsolationAlgos)),)
PhysicsToolsIsolationAlgos := cmssw/PhysicsTools/IsolationAlgos
PhysicsTools/IsolationAlgos := PhysicsToolsIsolationAlgos
PhysicsToolsIsolationAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
PhysicsToolsIsolationAlgos_EX_USE := $(foreach d, cmssw  DataFormats/GeometryVector DataFormats/GeometrySurface TrackPropagation/SteppingHelixPropagator MagneticField/Records TrackingTools/TrajectoryState TrackingTools/TrajectoryParametrization FWCore/Framework FWCore/ParameterSet DataFormats/RecoCandidate,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsIsolationAlgos_EX_LIB   := PhysicsToolsIsolationAlgos
ALL_EXTERNAL_PRODS += PhysicsToolsIsolationAlgos
endif
ifeq ($(strip $(RecoVertex/KinematicFit)),)
RecoVertexKinematicFit := cmssw/RecoVertex/KinematicFit
RecoVertex/KinematicFit := RecoVertexKinematicFit
RecoVertexKinematicFit_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoVertexKinematicFit_EX_USE := $(foreach d, cmssw  RecoVertex/KalmanVertexFit RecoVertex/KinematicFitPrimitives,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoVertexKinematicFit_EX_LIB   := RecoVertexKinematicFit
ALL_EXTERNAL_PRODS += RecoVertexKinematicFit
endif
ifeq ($(strip $(AnalysisDataFormats/TopObjects)),)
AnalysisDataFormatsTopObjects := cmssw/AnalysisDataFormats/TopObjects
AnalysisDataFormats/TopObjects := AnalysisDataFormatsTopObjects
AnalysisDataFormatsTopObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AnalysisDataFormatsTopObjects_EX_USE := $(foreach d, cmssw  FWCore/Utilities DataFormats/Common DataFormats/TauReco DataFormats/JetReco DataFormats/METReco DataFormats/MuonReco DataFormats/TrackReco DataFormats/PatCandidates DataFormats/HepMCCandidate DataFormats/EgammaCandidates CommonTools/CandUtils root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AnalysisDataFormatsTopObjects_EX_LIB   := AnalysisDataFormatsTopObjects
ALL_EXTERNAL_PRODS += AnalysisDataFormatsTopObjects
endif
ifeq ($(strip $(TBDataFormats/EcalTBObjects)),)
TBDataFormatsEcalTBObjects := cmssw/TBDataFormats/EcalTBObjects
TBDataFormats/EcalTBObjects := TBDataFormatsEcalTBObjects
TBDataFormatsEcalTBObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TBDataFormatsEcalTBObjects_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/EcalDetId boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TBDataFormatsEcalTBObjects_EX_LIB   := TBDataFormatsEcalTBObjects
ALL_EXTERNAL_PRODS += TBDataFormatsEcalTBObjects
endif
ifeq ($(strip $(Alignment/LaserAlignment)),)
AlignmentLaserAlignment := cmssw/Alignment/LaserAlignment
Alignment/LaserAlignment := AlignmentLaserAlignment
AlignmentLaserAlignment_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AlignmentLaserAlignment_EX_USE := $(foreach d, cmssw  FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities DataFormats/GeometrySurface clhepheader rootcore rootminuit,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AlignmentLaserAlignment_EX_LIB   := AlignmentLaserAlignment
ALL_EXTERNAL_PRODS += AlignmentLaserAlignment
endif
ifeq ($(strip $(SimCalorimetry/HcalSimAlgos)),)
SimCalorimetryHcalSimAlgos := cmssw/SimCalorimetry/HcalSimAlgos
SimCalorimetry/HcalSimAlgos := SimCalorimetryHcalSimAlgos
SimCalorimetryHcalSimAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimCalorimetryHcalSimAlgos_EX_USE := $(foreach d, cmssw  SimCalorimetry/CaloSimAlgos CondFormats/HcalObjects CalibCalorimetry/HcalAlgos CalibFormats/HcalObjects DataFormats/HcalDigi clhep rootcore DataFormats/HcalDetId Geometry/CaloTopology,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimCalorimetryHcalSimAlgos_EX_LIB   := SimCalorimetryHcalSimAlgos
ALL_EXTERNAL_PRODS += SimCalorimetryHcalSimAlgos
endif
ifeq ($(strip $(DetectorDescription/Parser)),)
DetectorDescriptionParser := cmssw/DetectorDescription/Parser
DetectorDescription/Parser := DetectorDescriptionParser
DetectorDescriptionParser_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DetectorDescriptionParser_EX_USE := $(foreach d, cmssw  DetectorDescription/Algorithm DetectorDescription/Base DetectorDescription/Core DetectorDescription/ExprAlgo FWCore/ParameterSet FWCore/PluginManager FWCore/Utilities FWCore/Concurrency boost clhepheader rootmath xerces-c,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DetectorDescriptionParser_EX_LIB   := DetectorDescriptionParser
ALL_EXTERNAL_PRODS += DetectorDescriptionParser
endif
ifeq ($(strip $(CondFormats/Calibration)),)
CondFormatsCalibration := cmssw/CondFormats/Calibration
CondFormats/Calibration := CondFormatsCalibration
CondFormatsCalibration_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondFormatsCalibration_EX_USE := $(foreach d, cmssw  CondFormats/Common FWCore/Utilities rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsCalibration_EX_LIB   := CondFormatsCalibration
ALL_EXTERNAL_PRODS += CondFormatsCalibration
endif
ifeq ($(strip $(DataFormats/EcalRawData)),)
DataFormatsEcalRawData := cmssw/DataFormats/EcalRawData
DataFormats/EcalRawData := DataFormatsEcalRawData
DataFormatsEcalRawData_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsEcalRawData_EX_USE := $(foreach d, cmssw  DataFormats/Common boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsEcalRawData_EX_LIB   := DataFormatsEcalRawData
ALL_EXTERNAL_PRODS += DataFormatsEcalRawData
endif
ifeq ($(strip $(DQM/EcalBarrelMonitorClient)),)
DQMEcalBarrelMonitorClient := cmssw/DQM/EcalBarrelMonitorClient
DQM/EcalBarrelMonitorClient := DQMEcalBarrelMonitorClient
DQMEcalBarrelMonitorClient_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMEcalBarrelMonitorClient_EX_USE := $(foreach d, cmssw  DQM/EcalCommon DQMServices/Core DataFormats/EcalDetId FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry DQM/EcalBarrelMonitorTasks rootcore,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMEcalBarrelMonitorClient_EX_LIB   := DQMEcalBarrelMonitorClient
ALL_EXTERNAL_PRODS += DQMEcalBarrelMonitorClient
endif
ifeq ($(strip $(DataFormats/HcalRecHit)),)
DataFormatsHcalRecHit := cmssw/DataFormats/HcalRecHit
DataFormats/HcalRecHit := DataFormatsHcalRecHit
DataFormatsHcalRecHit_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsHcalRecHit_EX_USE := $(foreach d, cmssw  DataFormats/CaloRecHit DataFormats/Common DataFormats/HcalDetId rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsHcalRecHit_EX_LIB   := DataFormatsHcalRecHit
ALL_EXTERNAL_PRODS += DataFormatsHcalRecHit
endif
ifeq ($(strip $(Validation/RecoMET)),)
src_Validation_RecoMET := cmssw/Validation/RecoMET
Validation/RecoMET  := src_Validation_RecoMET
src_Validation_RecoMET_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
src_Validation_RecoMET_EX_USE := $(foreach d, FWCore/Framework cmssw DataFormats/JetReco DataFormats/DetId Geometry/CaloGeometry DataFormats/HcalRecHit DataFormats/METReco Geometry/CaloTopology root DataFormats/EgammaCandidates FWCore/MessageLogger DQMServices/Core DataFormats/EcalDetId DataFormats/RecoCandidate DataFormats/HcalDetId DataFormats/TrackReco DataFormats/CaloTowers FWCore/ParameterSet,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_Validation_RecoMET
endif

ifeq ($(strip $(L1Trigger/DTBti)),)
L1TriggerDTBti := cmssw/L1Trigger/DTBti
L1Trigger/DTBti := L1TriggerDTBti
L1TriggerDTBti_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
L1TriggerDTBti_EX_USE := $(foreach d, cmssw  FWCore/Framework DataFormats/Common FWCore/PluginManager FWCore/ParameterSet CalibMuon/DTDigiSync DataFormats/DTDigi Geometry/DTGeometry L1TriggerConfig/DTTPGConfig L1Trigger/DTUtilities clhep root rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
L1TriggerDTBti_EX_LIB   := L1TriggerDTBti
ALL_EXTERNAL_PRODS += L1TriggerDTBti
endif
ifeq ($(strip $(RecoVertex/BeamSpotProducer)),)
RecoVertexBeamSpotProducer := cmssw/RecoVertex/BeamSpotProducer
RecoVertex/BeamSpotProducer := RecoVertexBeamSpotProducer
RecoVertexBeamSpotProducer_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoVertexBeamSpotProducer_EX_USE := $(foreach d, cmssw  CondCore/DBOutputService DataFormats/BeamSpot DataFormats/Scalers DataFormats/Common DataFormats/SiPixelDetId DataFormats/SiStripDetId DataFormats/TrackReco DataFormats/VertexReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager FWCore/ServiceRegistry FWCore/Utilities clhep rootcore rootminuit2,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoVertexBeamSpotProducer_EX_LIB   := RecoVertexBeamSpotProducer
ALL_EXTERNAL_PRODS += RecoVertexBeamSpotProducer
endif
ifeq ($(strip $(CondFormats/JetMETObjects)),)
CondFormatsJetMETObjects := cmssw/CondFormats/JetMETObjects
CondFormats/JetMETObjects := CondFormatsJetMETObjects
CondFormatsJetMETObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondFormatsJetMETObjects_EX_USE := $(foreach d, cmssw  DataFormats/CaloTowers FWCore/ParameterSet FWCore/Utilities root rootmath rootrflx clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsJetMETObjects_EX_LIB   := CondFormatsJetMETObjects
ALL_EXTERNAL_PRODS += CondFormatsJetMETObjects
endif
ifeq ($(strip $(FastSimulation/PileUpProducer)),)
FastSimulationPileUpProducer := cmssw/FastSimulation/PileUpProducer
FastSimulation/PileUpProducer := FastSimulationPileUpProducer
FastSimulationPileUpProducer_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FastSimulationPileUpProducer_EX_USE := $(foreach d, cmssw  FastSimulation/Event FastSimulation/Particle hepmc,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FastSimulationPileUpProducer_EX_LIB   := FastSimulationPileUpProducer
ALL_EXTERNAL_PRODS += FastSimulationPileUpProducer
endif
ifeq ($(strip $(Fireworks/Core)),)
FireworksCore := cmssw/Fireworks/Core
Fireworks/Core := FireworksCore
FireworksCore_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FireworksCore_EX_USE := $(foreach d, cmssw  CommonTools/Utils DataFormats/Candidate DataFormats/Common DataFormats/DetId DataFormats/EcalDetId DataFormats/EcalRecHit DataFormats/FWLite DataFormats/L1GlobalTrigger DataFormats/Math DataFormats/MuonDetId DataFormats/SiPixelDetId DataFormats/Scalers DataFormats/TrackReco FWCore/Common FWCore/FWLite FWCore/PluginManager FWCore/Utilities Fireworks/TableWidget boost boost_program_options boost_regex boost_system opengl rootcintex rootinteractive rootgraphics sigcpp,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FireworksCore_EX_LIB   := FireworksCore
ALL_EXTERNAL_PRODS += FireworksCore
endif
ifeq ($(strip $(DataFormats/DTRecHit)),)
DataFormatsDTRecHit := cmssw/DataFormats/DTRecHit
DataFormats/DTRecHit := DataFormatsDTRecHit
DataFormatsDTRecHit_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsDTRecHit_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/DTDigi DataFormats/GeometrySurface DataFormats/GeometryVector DataFormats/MuonDetId DataFormats/TrackingRecHit FWCore/Utilities rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsDTRecHit_EX_LIB   := DataFormatsDTRecHit
ALL_EXTERNAL_PRODS += DataFormatsDTRecHit
endif
ifeq ($(strip $(TopQuarkAnalysis/Examples)),)
src_TopQuarkAnalysis_Examples := cmssw/TopQuarkAnalysis/Examples
TopQuarkAnalysis/Examples  := src_TopQuarkAnalysis_Examples
src_TopQuarkAnalysis_Examples_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
src_TopQuarkAnalysis_Examples_EX_USE := $(foreach d, AnalysisDataFormats/TopObjects FWCore/Framework cmssw root DataFormats/PatCandidates DataFormats/Provenance DataFormats/RecoCandidate CommonTools/UtilAlgos DataFormats/Candidate FWCore/ServiceRegistry CommonTools/CandUtils,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_TopQuarkAnalysis_Examples
endif

ifeq ($(strip $(Alignment/CommonAlignmentParametrization)),)
AlignmentCommonAlignmentParametrization := cmssw/Alignment/CommonAlignmentParametrization
Alignment/CommonAlignmentParametrization := AlignmentCommonAlignmentParametrization
AlignmentCommonAlignmentParametrization_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AlignmentCommonAlignmentParametrization_EX_USE := $(foreach d, cmssw  Alignment/CommonAlignment Geometry/CommonTopologies TrackingTools/TrajectoryState FWCore/MessageLogger FWCore/Utilities roothistmatrix,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AlignmentCommonAlignmentParametrization_EX_LIB   := AlignmentCommonAlignmentParametrization
ALL_EXTERNAL_PRODS += AlignmentCommonAlignmentParametrization
endif
ifeq ($(strip $(DQM/EcalBarrelMonitorModule)),)
DQMEcalBarrelMonitorModule := cmssw/DQM/EcalBarrelMonitorModule
DQM/EcalBarrelMonitorModule := DQMEcalBarrelMonitorModule
DQMEcalBarrelMonitorModule_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMEcalBarrelMonitorModule_EX_USE := $(foreach d, cmssw  DQM/EcalCommon DQMServices/Core DataFormats/EcalDetId DataFormats/EcalDigi DataFormats/EcalRawData DataFormats/EcalRecHit FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMEcalBarrelMonitorModule_EX_LIB   := DQMEcalBarrelMonitorModule
ALL_EXTERNAL_PRODS += DQMEcalBarrelMonitorModule
endif
ifeq ($(strip $(RecoTracker/CkfPattern)),)
RecoTrackerCkfPattern := cmssw/RecoTracker/CkfPattern
RecoTracker/CkfPattern := RecoTrackerCkfPattern
RecoTrackerCkfPattern_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoTrackerCkfPattern_EX_USE := $(foreach d, cmssw  RecoTracker/TkDetLayers FWCore/Framework FWCore/PluginManager FWCore/ParameterSet FWCore/MessageLogger DataFormats/Common DataFormats/TrajectorySeed Geometry/TrackerGeometryBuilder TrackingTools/KalmanUpdators MagneticField/Records MagneticField/Engine TrackingTools/MeasurementDet RecoTracker/TkNavigation RecoTracker/MeasurementDet TrackingTools/PatternTools TrackingTools/MaterialEffects TrackingTools/TrajectoryCleaning TrackingTools/TrajectoryFiltering TrackingTools/TrackFitters boost root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoTrackerCkfPattern_EX_LIB   := RecoTrackerCkfPattern
ALL_EXTERNAL_PRODS += RecoTrackerCkfPattern
endif
ifeq ($(strip $(Validation/MuonRPCGeometry)),)
ValidationMuonRPCGeometry := cmssw/Validation/MuonRPCGeometry
Validation/MuonRPCGeometry := ValidationMuonRPCGeometry
ValidationMuonRPCGeometry_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
ValidationMuonRPCGeometry_EX_USE := $(foreach d, cmssw  DataFormats/MuonDetId FWCore/Framework Geometry/CommonDetUnit Geometry/CommonTopologies Geometry/Records Geometry/RPCGeometry,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ValidationMuonRPCGeometry_EX_LIB   := ValidationMuonRPCGeometry
ALL_EXTERNAL_PRODS += ValidationMuonRPCGeometry
endif
ifeq ($(strip $(RecoLocalMuon/DTSegment)),)
RecoLocalMuonDTSegment := cmssw/RecoLocalMuon/DTSegment
RecoLocalMuon/DTSegment := RecoLocalMuonDTSegment
RecoLocalMuonDTSegment_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoLocalMuonDTSegment_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet Geometry/Records Geometry/DTGeometry DataFormats/DTRecHit RecoLocalMuon/DTRecHit clhep root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoLocalMuonDTSegment_EX_LIB   := RecoLocalMuonDTSegment
ALL_EXTERNAL_PRODS += RecoLocalMuonDTSegment
endif
ifeq ($(strip $(RecoPixelVZero/PixelVZeroFinding)),)
src_RecoPixelVZero_PixelVZeroFinding := cmssw/RecoPixelVZero/PixelVZeroFinding
RecoPixelVZero/PixelVZeroFinding  := src_RecoPixelVZero_PixelVZeroFinding
src_RecoPixelVZero_PixelVZeroFinding_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
src_RecoPixelVZero_PixelVZeroFinding_EX_USE := $(foreach d, cmssw,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_RecoPixelVZero_PixelVZeroFinding
endif

ifeq ($(strip $(L1Trigger/CSCCommonTrigger)),)
L1TriggerCSCCommonTrigger := cmssw/L1Trigger/CSCCommonTrigger
L1Trigger/CSCCommonTrigger := L1TriggerCSCCommonTrigger
L1TriggerCSCCommonTrigger_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
L1TriggerCSCCommonTrigger_EX_USE := $(foreach d, cmssw  Geometry/CSCGeometry Geometry/CommonDetUnit Geometry/CommonTopologies DataFormats/MuonDetId DataFormats/CSCDigi boost clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
L1TriggerCSCCommonTrigger_EX_LIB   := L1TriggerCSCCommonTrigger
ALL_EXTERNAL_PRODS += L1TriggerCSCCommonTrigger
endif
ifeq ($(strip $(CondFormats/HIObjects)),)
CondFormatsHIObjects := cmssw/CondFormats/HIObjects
CondFormats/HIObjects := CondFormatsHIObjects
CondFormatsHIObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondFormatsHIObjects_EX_USE := $(foreach d, cmssw  CondFormats/Common FWCore/Framework rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsHIObjects_EX_LIB   := CondFormatsHIObjects
ALL_EXTERNAL_PRODS += CondFormatsHIObjects
endif
ifeq ($(strip $(RecoMuon/DetLayers)),)
RecoMuonDetLayers := cmssw/RecoMuon/DetLayers
RecoMuon/DetLayers := RecoMuonDetLayers
RecoMuonDetLayers_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoMuonDetLayers_EX_USE := $(foreach d, cmssw  DataFormats/GeometrySurface DataFormats/GeometryVector DataFormats/MuonDetId FWCore/Framework FWCore/MessageLogger FWCore/Utilities TrackingTools/DetLayers Utilities/BinningTools,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoMuonDetLayers_EX_LIB   := RecoMuonDetLayers
ALL_EXTERNAL_PRODS += RecoMuonDetLayers
endif
ifeq ($(strip $(SimCalorimetry/EcalZeroSuppressionAlgos)),)
src_SimCalorimetry_EcalZeroSuppressionAlgos := cmssw/SimCalorimetry/EcalZeroSuppressionAlgos
SimCalorimetry/EcalZeroSuppressionAlgos  := src_SimCalorimetry_EcalZeroSuppressionAlgos
src_SimCalorimetry_EcalZeroSuppressionAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
src_SimCalorimetry_EcalZeroSuppressionAlgos_EX_USE := $(foreach d, cmssw DataFormats/EcalDigi FWCore/MessageLogger DataFormats/EcalDetId,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_SimCalorimetry_EcalZeroSuppressionAlgos
endif

ifeq ($(strip $(SimG4CMS/HcalTestBeam)),)
SimG4CMSHcalTestBeam := cmssw/SimG4CMS/HcalTestBeam
SimG4CMS/HcalTestBeam := SimG4CMSHcalTestBeam
SimG4CMSHcalTestBeam_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CMSHcalTestBeam_EX_USE := $(foreach d, cmssw  SimG4Core/Notification SimG4Core/Watcher SimG4CMS/Calo Geometry/EcalCommonData Geometry/HcalCommonData DataFormats/HcalDetId DataFormats/Math SimDataFormats/HcalTestBeam FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/ServiceRegistry CommonTools/UtilAlgos geant4core boost root hepmc rootmath,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CMSHcalTestBeam_EX_LIB   := SimG4CMSHcalTestBeam
ALL_EXTERNAL_PRODS += SimG4CMSHcalTestBeam
endif
ifeq ($(strip $(DataFormats/SiStripDigi)),)
DataFormatsSiStripDigi := cmssw/DataFormats/SiStripDigi
DataFormats/SiStripDigi := DataFormatsSiStripDigi
DataFormatsSiStripDigi_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsSiStripDigi_EX_USE := $(foreach d, cmssw  DataFormats/Common boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsSiStripDigi_EX_LIB   := DataFormatsSiStripDigi
ALL_EXTERNAL_PRODS += DataFormatsSiStripDigi
endif
ifeq ($(strip $(DataFormats/HepMCCandidate)),)
DataFormatsHepMCCandidate := cmssw/DataFormats/HepMCCandidate
DataFormats/HepMCCandidate := DataFormatsHepMCCandidate
DataFormatsHepMCCandidate_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsHepMCCandidate_EX_USE := $(foreach d, cmssw  DataFormats/Candidate DataFormats/Common root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsHepMCCandidate_EX_LIB   := DataFormatsHepMCCandidate
ALL_EXTERNAL_PRODS += DataFormatsHepMCCandidate
endif
ifeq ($(strip $(RecoTracker/TkMSParametrization)),)
RecoTrackerTkMSParametrization := cmssw/RecoTracker/TkMSParametrization
RecoTracker/TkMSParametrization := RecoTrackerTkMSParametrization
RecoTrackerTkMSParametrization_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoTrackerTkMSParametrization_EX_USE := $(foreach d, cmssw  clhep boost root TrackingTools/DetLayers FWCore/Framework RecoTracker/TkDetLayers RecoTracker/Record MagneticField/Records MagneticField/Engine,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoTrackerTkMSParametrization_EX_LIB   := RecoTrackerTkMSParametrization
ALL_EXTERNAL_PRODS += RecoTrackerTkMSParametrization
endif
ifeq ($(strip $(CondCore/TagCollection)),)
CondCoreTagCollection := cmssw/CondCore/TagCollection
CondCore/TagCollection := CondCoreTagCollection
CondCoreTagCollection_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondCoreTagCollection_EX_USE := $(foreach d, cmssw  CondCore/DBCommon,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondCoreTagCollection_EX_LIB   := CondCoreTagCollection
ALL_EXTERNAL_PRODS += CondCoreTagCollection
endif
ifeq ($(strip $(L1Trigger/CSCTriggerPrimitives)),)
L1TriggerCSCTriggerPrimitives := cmssw/L1Trigger/CSCTriggerPrimitives
L1Trigger/CSCTriggerPrimitives := L1TriggerCSCTriggerPrimitives
L1TriggerCSCTriggerPrimitives_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
L1TriggerCSCTriggerPrimitives_EX_USE := $(foreach d, cmssw  CondFormats/CSCObjects DataFormats/CSCDigi DataFormats/L1CSCTrackFinder DataFormats/MuonDetId FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities L1Trigger/CSCCommonTrigger,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
L1TriggerCSCTriggerPrimitives_EX_LIB   := L1TriggerCSCTriggerPrimitives
ALL_EXTERNAL_PRODS += L1TriggerCSCTriggerPrimitives
endif
ifeq ($(strip $(DataFormats/EcalDigi)),)
DataFormatsEcalDigi := cmssw/DataFormats/EcalDigi
DataFormats/EcalDigi := DataFormatsEcalDigi
DataFormatsEcalDigi_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsEcalDigi_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/EcalDetId boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsEcalDigi_EX_LIB   := DataFormatsEcalDigi
ALL_EXTERNAL_PRODS += DataFormatsEcalDigi
endif
ifeq ($(strip $(Fireworks/Vertices)),)
FireworksVertices := cmssw/Fireworks/Vertices
Fireworks/Vertices := FireworksVertices
FireworksVertices_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FireworksVertices_EX_USE := $(foreach d, cmssw  DataFormats/VertexReco Fireworks/Core rootcore opengl,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FireworksVertices_EX_LIB   := FireworksVertices
ALL_EXTERNAL_PRODS += FireworksVertices
endif
ifeq ($(strip $(DataFormats/Scalers)),)
DataFormatsScalers := cmssw/DataFormats/Scalers
DataFormats/Scalers := DataFormatsScalers
DataFormatsScalers_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsScalers_EX_USE := $(foreach d, cmssw  DataFormats/Common boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsScalers_EX_LIB   := DataFormatsScalers
ALL_EXTERNAL_PRODS += DataFormatsScalers
endif
ifeq ($(strip $(RecoBTag/TrackProbability)),)
RecoBTagTrackProbability := cmssw/RecoBTag/TrackProbability
RecoBTag/TrackProbability := RecoBTagTrackProbability
RecoBTagTrackProbability_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoBTagTrackProbability_EX_USE := $(foreach d, cmssw  DataFormats/TrackReco FWCore/MessageLogger xerces-c,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoBTagTrackProbability_EX_LIB   := RecoBTagTrackProbability
ALL_EXTERNAL_PRODS += RecoBTagTrackProbability
endif
ifeq ($(strip $(EventFilter/EcalRawToDigi)),)
EventFilterEcalRawToDigi := cmssw/EventFilter/EcalRawToDigi
EventFilter/EcalRawToDigi := EventFilterEcalRawToDigi
EventFilterEcalRawToDigi_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
EventFilterEcalRawToDigi_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet boost CalibCalorimetry/EcalLaserCorrection CondFormats/DataRecord CondFormats/EcalObjects DataFormats/EcalDetId DataFormats/EcalDigi DataFormats/EcalRawData DataFormats/EcalRecHit DataFormats/FEDRawData DataFormats/Common FWCore/MessageLogger Geometry/EcalMapping Geometry/Records RecoLocalCalo/EcalRecAlgos RecoLocalCalo/EcalRecProducers Utilities/StorageFactory rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
EventFilterEcalRawToDigi_EX_LIB   := EventFilterEcalRawToDigi
ALL_EXTERNAL_PRODS += EventFilterEcalRawToDigi
endif
ifeq ($(strip $(SimCalorimetry/EcalSimProducers)),)
SimCalorimetryEcalSimProducers := cmssw/SimCalorimetry/EcalSimProducers
SimCalorimetry/EcalSimProducers := SimCalorimetryEcalSimProducers
SimCalorimetryEcalSimProducers_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimCalorimetryEcalSimProducers_EX_USE := $(foreach d, cmssw  FWCore/PluginManager FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet SimCalorimetry/EcalSimAlgos SimDataFormats/CrossingFrame SimGeneral/MixingModule SimGeneral/NoiseGenerators CondFormats/DataRecord CondFormats/ESObjects Geometry/EcalAlgo,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimCalorimetryEcalSimProducers_EX_LIB   := SimCalorimetryEcalSimProducers
ALL_EXTERNAL_PRODS += SimCalorimetryEcalSimProducers
endif
ifeq ($(strip $(RecoEgamma/PhotonIdentification)),)
RecoEgammaPhotonIdentification := cmssw/RecoEgamma/PhotonIdentification
RecoEgamma/PhotonIdentification := RecoEgammaPhotonIdentification
RecoEgammaPhotonIdentification_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoEgammaPhotonIdentification_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/PluginManager DataFormats/HcalRecHit DataFormats/EgammaReco DataFormats/ParticleFlowCandidate RecoEcal/EgammaCoreTools DataFormats/BeamSpot Geometry/CaloGeometry RecoEgamma/EgammaIsolationAlgos,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoEgammaPhotonIdentification_EX_LIB   := RecoEgammaPhotonIdentification
ALL_EXTERNAL_PRODS += RecoEgammaPhotonIdentification
endif
ifeq ($(strip $(RecoTBCalo/HcalTBObjectUnpacker)),)
RecoTBCaloHcalTBObjectUnpacker := cmssw/RecoTBCalo/HcalTBObjectUnpacker
RecoTBCalo/HcalTBObjectUnpacker := RecoTBCaloHcalTBObjectUnpacker
RecoTBCaloHcalTBObjectUnpacker_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoTBCaloHcalTBObjectUnpacker_EX_USE := $(foreach d, cmssw  TBDataFormats/HcalTBObjects DataFormats/FEDRawData DataFormats/HcalRecHit FWCore/Framework DataFormats/Common boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoTBCaloHcalTBObjectUnpacker_EX_LIB   := RecoTBCaloHcalTBObjectUnpacker
ALL_EXTERNAL_PRODS += RecoTBCaloHcalTBObjectUnpacker
endif
ifeq ($(strip $(FastSimulation/ParticleDecay)),)
FastSimulationParticleDecay := cmssw/FastSimulation/ParticleDecay
FastSimulation/ParticleDecay := FastSimulationParticleDecay
FastSimulationParticleDecay_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FastSimulationParticleDecay_EX_USE := $(foreach d, cmssw  hepmc FastSimulation/ParticlePropagator GeneratorInterface/Pythia6Interface SimDataFormats/GeneratorProducts GeneratorInterface/Core GeneratorInterface/ExternalDecays GeneratorInterface/Pythia8Interface FWCore/ServiceRegistry boost clhep pythia8 f77compiler pydata,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FastSimulationParticleDecay_EX_LIB   := FastSimulationParticleDecay
ALL_EXTERNAL_PRODS += FastSimulationParticleDecay
endif
ifeq ($(strip $(RecoTauTag/RecoTau)),)
RecoTauTagRecoTau := cmssw/RecoTauTag/RecoTau
RecoTauTag/RecoTau := RecoTauTagRecoTau
RecoTauTagRecoTau_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoTauTagRecoTau_EX_USE := $(foreach d, cmssw  MagneticField/Engine MagneticField/Records DataFormats/Math DataFormats/TauReco DataFormats/VertexReco DataFormats/ParticleFlowCandidate DataFormats/TrackReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager Geometry/CaloGeometry Geometry/CaloTopology Geometry/Records Geometry/CommonDetUnit TrackingTools/TransientTrack TrackingTools/IPTools RecoTauTag/TauTagTools RecoVertex/KalmanVertexFit RecoVertex/AdaptiveVertexFit RecoParticleFlow/PFClusterTools TrackingTools/TrackAssociator PhysicsTools/JetMCUtils CommonTools/Utils roottmva,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoTauTagRecoTau_EX_LIB   := RecoTauTagRecoTau
ALL_EXTERNAL_PRODS += RecoTauTagRecoTau
endif
ifeq ($(strip $(RecoLocalCalo/CastorReco)),)
RecoLocalCaloCastorReco := cmssw/RecoLocalCalo/CastorReco
RecoLocalCalo/CastorReco := RecoLocalCaloCastorReco
RecoLocalCaloCastorReco_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoLocalCaloCastorReco_EX_USE := $(foreach d, cmssw  CalibCalorimetry/CastorCalib CalibFormats/CastorObjects DataFormats/HcalDigi DataFormats/HcalRecHit FWCore/MessageLogger,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoLocalCaloCastorReco_EX_LIB   := RecoLocalCaloCastorReco
ALL_EXTERNAL_PRODS += RecoLocalCaloCastorReco
endif
ifeq ($(strip $(SimCalorimetry/CastorSim)),)
SimCalorimetryCastorSim := cmssw/SimCalorimetry/CastorSim
SimCalorimetry/CastorSim := SimCalorimetryCastorSim
SimCalorimetryCastorSim_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimCalorimetryCastorSim_EX_USE := $(foreach d, cmssw  SimCalorimetry/CaloSimAlgos CondFormats/CastorObjects CalibCalorimetry/CastorCalib CalibFormats/CastorObjects CalibCalorimetry/HcalAlgos DataFormats/HcalDigi Geometry/HcalTowerAlgo clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimCalorimetryCastorSim_EX_LIB   := SimCalorimetryCastorSim
ALL_EXTERNAL_PRODS += SimCalorimetryCastorSim
endif
ifeq ($(strip $(RecoLocalTracker/Records)),)
RecoLocalTrackerRecords := cmssw/RecoLocalTracker/Records
RecoLocalTracker/Records := RecoLocalTrackerRecords
RecoLocalTrackerRecords_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoLocalTrackerRecords_EX_USE := $(foreach d, cmssw  FWCore/Utilities FWCore/Framework Geometry/Records MagneticField/Records clhep boost CondFormats/DataRecord CalibTracker/Records,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoLocalTrackerRecords_EX_LIB   := RecoLocalTrackerRecords
ALL_EXTERNAL_PRODS += RecoLocalTrackerRecords
endif
ifeq ($(strip $(DataFormats/LTCDigi)),)
DataFormatsLTCDigi := cmssw/DataFormats/LTCDigi
DataFormats/LTCDigi := DataFormatsLTCDigi
DataFormatsLTCDigi_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsLTCDigi_EX_USE := $(foreach d, cmssw  DataFormats/Common rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsLTCDigi_EX_LIB   := DataFormatsLTCDigi
ALL_EXTERNAL_PRODS += DataFormatsLTCDigi
endif
ifeq ($(strip $(Alignment/CocoaUtilities)),)
AlignmentCocoaUtilities := cmssw/Alignment/CocoaUtilities
Alignment/CocoaUtilities := AlignmentCocoaUtilities
AlignmentCocoaUtilities_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AlignmentCocoaUtilities_EX_USE := $(foreach d, cmssw  clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AlignmentCocoaUtilities_EX_LIB   := AlignmentCocoaUtilities
ALL_EXTERNAL_PRODS += AlignmentCocoaUtilities
endif
ifeq ($(strip $(FastSimulation/CaloHitMakers)),)
FastSimulationCaloHitMakers := cmssw/FastSimulation/CaloHitMakers
FastSimulation/CaloHitMakers := FastSimulationCaloHitMakers
FastSimulationCaloHitMakers_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FastSimulationCaloHitMakers_EX_USE := $(foreach d, cmssw  DataFormats/DetId DataFormats/EcalDetId DataFormats/HcalDetId DataFormats/Math SimG4CMS/Calo FastSimulation/CaloGeometryTools FastSimulation/CalorimeterProperties FastSimulation/Event FastSimulation/Utilities Geometry/CaloTopology Geometry/EcalAlgo FWCore/MessageLogger rootmath,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FastSimulationCaloHitMakers_EX_LIB   := FastSimulationCaloHitMakers
ALL_EXTERNAL_PRODS += FastSimulationCaloHitMakers
endif
ifeq ($(strip $(CondFormats/DTObjects)),)
CondFormatsDTObjects := cmssw/CondFormats/DTObjects
CondFormats/DTObjects := CondFormatsDTObjects
CondFormatsDTObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondFormatsDTObjects_EX_USE := $(foreach d, cmssw  CondFormats/Common DataFormats/MuonDetId FWCore/Utilities CondCore/DBCommon rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsDTObjects_EX_LIB   := CondFormatsDTObjects
ALL_EXTERNAL_PRODS += CondFormatsDTObjects
endif
ifeq ($(strip $(DataFormats/Alignment)),)
DataFormatsAlignment := cmssw/DataFormats/Alignment
DataFormats/Alignment := DataFormatsAlignment
DataFormatsAlignment_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsAlignment_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/TrackingRecHit DataFormats/SiStripDetId FWCore/Utilities rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsAlignment_EX_LIB   := DataFormatsAlignment
ALL_EXTERNAL_PRODS += DataFormatsAlignment
endif
ifeq ($(strip $(DataFormats/VZero)),)
DataFormatsVZero := cmssw/DataFormats/VZero
DataFormats/VZero := DataFormatsVZero
DataFormatsVZero_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsVZero_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/TrackReco DataFormats/VertexReco rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsVZero_EX_LIB   := DataFormatsVZero
ALL_EXTERNAL_PRODS += DataFormatsVZero
endif
ifeq ($(strip $(DataFormats/EcalDetId)),)
DataFormatsEcalDetId := cmssw/DataFormats/EcalDetId
DataFormats/EcalDetId := DataFormatsEcalDetId
DataFormatsEcalDetId_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsEcalDetId_EX_USE := $(foreach d, cmssw  DataFormats/Common FWCore/Utilities boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsEcalDetId_EX_LIB   := DataFormatsEcalDetId
ALL_EXTERNAL_PRODS += DataFormatsEcalDetId
endif
ifeq ($(strip $(DataFormats/CaloRecHit)),)
DataFormatsCaloRecHit := cmssw/DataFormats/CaloRecHit
DataFormats/CaloRecHit := DataFormatsCaloRecHit
DataFormatsCaloRecHit_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsCaloRecHit_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/DetId rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsCaloRecHit_EX_LIB   := DataFormatsCaloRecHit
ALL_EXTERNAL_PRODS += DataFormatsCaloRecHit
endif
ifeq ($(strip $(ElectroWeakAnalysis/ZMuMu)),)
ElectroWeakAnalysisZMuMu := cmssw/ElectroWeakAnalysis/ZMuMu
ElectroWeakAnalysis/ZMuMu := ElectroWeakAnalysisZMuMu
ElectroWeakAnalysisZMuMu_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
ElectroWeakAnalysisZMuMu_EX_USE := $(foreach d, cmssw  PhysicsTools/Utilities,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ElectroWeakAnalysisZMuMu_EX_LIB   := ElectroWeakAnalysisZMuMu
ALL_EXTERNAL_PRODS += ElectroWeakAnalysisZMuMu
endif
ifeq ($(strip $(CalibMuon/DTCalibration)),)
CalibMuonDTCalibration := cmssw/CalibMuon/DTCalibration
CalibMuon/DTCalibration := CalibMuonDTCalibration
CalibMuonDTCalibration_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibMuonDTCalibration_EX_USE := $(foreach d, cmssw  FWCore/Framework DataFormats/DTDigi DataFormats/DTRecHit DataFormats/CSCRecHit DataFormats/TrackReco Geometry/DTGeometry Geometry/Records CondFormats/DTObjects CondFormats/DataRecord CondCore/DBOutputService CalibMuon/DTDigiSync root rootmath rootcore roofit,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibMuonDTCalibration_EX_LIB   := CalibMuonDTCalibration
ALL_EXTERNAL_PRODS += CalibMuonDTCalibration
endif
ifeq ($(strip $(Validation/DTRecHits)),)
ValidationDTRecHits := cmssw/Validation/DTRecHits
Validation/DTRecHits := ValidationDTRecHits
ValidationDTRecHits_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
ValidationDTRecHits_EX_USE := $(foreach d, cmssw  FWCore/Framework DQMServices/Core DataFormats/DTRecHit Geometry/Records Geometry/DTGeometry root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ValidationDTRecHits_EX_LIB   := ValidationDTRecHits
ALL_EXTERNAL_PRODS += ValidationDTRecHits
endif
ifeq ($(strip $(RecoLocalCalo/EcalRecAlgos)),)
RecoLocalCaloEcalRecAlgos := cmssw/RecoLocalCalo/EcalRecAlgos
RecoLocalCalo/EcalRecAlgos := RecoLocalCaloEcalRecAlgos
RecoLocalCaloEcalRecAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoLocalCaloEcalRecAlgos_EX_USE := $(foreach d, cmssw  clhep DataFormats/EcalRecHit FWCore/MessageLogger FWCore/ParameterSet FWCore/Framework CondFormats/ESObjects CondFormats/EcalObjects CondFormats/DataRecord vdt root rootminuit,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoLocalCaloEcalRecAlgos_EX_LIB   := RecoLocalCaloEcalRecAlgos
ALL_EXTERNAL_PRODS += RecoLocalCaloEcalRecAlgos
endif
ifeq ($(strip $(DataFormats/L1GlobalTrigger)),)
DataFormatsL1GlobalTrigger := cmssw/DataFormats/L1GlobalTrigger
DataFormats/L1GlobalTrigger := DataFormatsL1GlobalTrigger
DataFormatsL1GlobalTrigger_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsL1GlobalTrigger_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/Provenance DataFormats/StdDictionaries FWCore/MessageLogger FWCore/Utilities boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsL1GlobalTrigger_EX_LIB   := DataFormatsL1GlobalTrigger
ALL_EXTERNAL_PRODS += DataFormatsL1GlobalTrigger
endif
ifeq ($(strip $(Validation/RecoParticleFlow)),)
ValidationRecoParticleFlow := cmssw/Validation/RecoParticleFlow
Validation/RecoParticleFlow := ValidationRecoParticleFlow
ValidationRecoParticleFlow_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
ValidationRecoParticleFlow_EX_USE := $(foreach d, cmssw  root rootgpad rootcore rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ValidationRecoParticleFlow_EX_LIB   := ValidationRecoParticleFlow
ALL_EXTERNAL_PRODS += ValidationRecoParticleFlow
endif
ifeq ($(strip $(JetMETCorrections/Modules)),)
JetMETCorrectionsModules := cmssw/JetMETCorrections/Modules
JetMETCorrections/Modules := JetMETCorrectionsModules
JetMETCorrectionsModules_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
JetMETCorrectionsModules_EX_USE := $(foreach d, cmssw  CondCore/PluginSystem CondFormats/DataRecord CondCore/DBCommon CondCore/DBOutputService CommonTools/Utils DataFormats/Common DataFormats/JetReco DataFormats/BTauReco FWCore/Framework FWCore/ParameterSet JetMETCorrections/Objects JetMETCorrections/Algorithms boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
JetMETCorrectionsModules_EX_LIB   := JetMETCorrectionsModules
ALL_EXTERNAL_PRODS += JetMETCorrectionsModules
endif
ifeq ($(strip $(CondCore/ESSources)),)
CondCoreESSources := cmssw/CondCore/ESSources
CondCore/ESSources := CondCoreESSources
CondCoreESSources_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondCoreESSources_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet CondCore/CondDB,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondCoreESSources_EX_LIB   := CondCoreESSources
ALL_EXTERNAL_PRODS += CondCoreESSources
endif
ifeq ($(strip $(DataFormats/SiPixelDetId)),)
DataFormatsSiPixelDetId := cmssw/DataFormats/SiPixelDetId
DataFormats/SiPixelDetId := DataFormatsSiPixelDetId
DataFormatsSiPixelDetId_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsSiPixelDetId_EX_USE := $(foreach d, cmssw  FWCore/MessageLogger rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsSiPixelDetId_EX_LIB   := DataFormatsSiPixelDetId
ALL_EXTERNAL_PRODS += DataFormatsSiPixelDetId
endif
ifeq ($(strip $(DataFormats/CSCRecHit)),)
DataFormatsCSCRecHit := cmssw/DataFormats/CSCRecHit
DataFormats/CSCRecHit := DataFormatsCSCRecHit
DataFormatsCSCRecHit_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsCSCRecHit_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/MuonDetId DataFormats/GeometryVector DataFormats/TrackingRecHit rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsCSCRecHit_EX_LIB   := DataFormatsCSCRecHit
ALL_EXTERNAL_PRODS += DataFormatsCSCRecHit
endif
ifeq ($(strip $(SimG4Core/GFlash)),)
SimG4CoreGFlash := cmssw/SimG4Core/GFlash
SimG4Core/GFlash := SimG4CoreGFlash
SimG4CoreGFlash_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CoreGFlash_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/PluginManager SimG4Core/Physics SimG4Core/PhysicsLists SimGeneral/GFlash geant4core clhep boost root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CoreGFlash_EX_LIB   := SimG4CoreGFlash
ALL_EXTERNAL_PRODS += SimG4CoreGFlash
endif
ifeq ($(strip $(Geometry/TrackerNumberingBuilder)),)
GeometryTrackerNumberingBuilder := cmssw/Geometry/TrackerNumberingBuilder
Geometry/TrackerNumberingBuilder := GeometryTrackerNumberingBuilder
GeometryTrackerNumberingBuilder_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeometryTrackerNumberingBuilder_EX_USE := $(foreach d, cmssw  DataFormats/GeometrySurface DetectorDescription/Core DetectorDescription/Base,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryTrackerNumberingBuilder_EX_LIB   := GeometryTrackerNumberingBuilder
ALL_EXTERNAL_PRODS += GeometryTrackerNumberingBuilder
endif
ifeq ($(strip $(RecoLuminosity/TCPReceiver)),)
RecoLuminosityTCPReceiver := cmssw/RecoLuminosity/TCPReceiver
RecoLuminosity/TCPReceiver := RecoLuminosityTCPReceiver
RecoLuminosityTCPReceiver_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoLuminosityTCPReceiver_EX_USE := $(foreach d, cmssw  ,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoLuminosityTCPReceiver_EX_LIB   := RecoLuminosityTCPReceiver
ALL_EXTERNAL_PRODS += RecoLuminosityTCPReceiver
endif
ifeq ($(strip $(Geometry/CSCGeometryBuilder)),)
GeometryCSCGeometryBuilder := cmssw/Geometry/CSCGeometryBuilder
Geometry/CSCGeometryBuilder := GeometryCSCGeometryBuilder
GeometryCSCGeometryBuilder_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeometryCSCGeometryBuilder_EX_USE := $(foreach d, cmssw  DataFormats/GeometrySurface DataFormats/GeometryVector DataFormats/MuonDetId DetectorDescription/Core FWCore/MessageLogger Geometry/CSCGeometry Geometry/CommonDetUnit Geometry/MuonNumbering,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryCSCGeometryBuilder_EX_LIB   := GeometryCSCGeometryBuilder
ALL_EXTERNAL_PRODS += GeometryCSCGeometryBuilder
endif
ifeq ($(strip $(Alignment/CommonAlignmentProducer)),)
AlignmentCommonAlignmentProducer := cmssw/Alignment/CommonAlignmentProducer
Alignment/CommonAlignmentProducer := AlignmentCommonAlignmentProducer
AlignmentCommonAlignmentProducer_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AlignmentCommonAlignmentProducer_EX_USE := $(foreach d, cmssw  DataFormats/MuonDetId DataFormats/SiStripDetId DataFormats/SiPixelDetId DataFormats/TrackReco DataFormats/TrackerRecHit2D DataFormats/TrackingRecHit DataFormats/CSCRecHit DataFormats/DTRecHit DataFormats/RPCRecHit DataFormats/Candidate DataFormats/RecoCandidate DataFormats/Math FWCore/MessageLogger FWCore/Framework FWCore/Utilities FWCore/ParameterSet DataFormats/Alignment Geometry/Records Geometry/TrackerGeometryBuilder rootcore root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AlignmentCommonAlignmentProducer_EX_LIB   := AlignmentCommonAlignmentProducer
ALL_EXTERNAL_PRODS += AlignmentCommonAlignmentProducer
endif
ifeq ($(strip $(CalibFormats/CaloTPG)),)
CalibFormatsCaloTPG := cmssw/CalibFormats/CaloTPG
CalibFormats/CaloTPG := CalibFormatsCaloTPG
CalibFormatsCaloTPG_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibFormatsCaloTPG_EX_USE := $(foreach d, cmssw  DataFormats/HcalDetId DataFormats/HcalDigi DataFormats/EcalDetId DataFormats/EcalDigi CalibFormats/CaloObjects FWCore/Framework boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibFormatsCaloTPG_EX_LIB   := CalibFormatsCaloTPG
ALL_EXTERNAL_PRODS += CalibFormatsCaloTPG
endif
ifeq ($(strip $(DQM/EcalEndcapMonitorClient)),)
DQMEcalEndcapMonitorClient := cmssw/DQM/EcalEndcapMonitorClient
DQM/EcalEndcapMonitorClient := DQMEcalEndcapMonitorClient
DQMEcalEndcapMonitorClient_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMEcalEndcapMonitorClient_EX_USE := $(foreach d, cmssw  DQM/EcalCommon DQMServices/Core DataFormats/EcalDetId FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry rootcore,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMEcalEndcapMonitorClient_EX_LIB   := DQMEcalEndcapMonitorClient
ALL_EXTERNAL_PRODS += DQMEcalEndcapMonitorClient
endif
ifeq ($(strip $(CondTools/RPC)),)
CondToolsRPC := cmssw/CondTools/RPC
CondTools/RPC := CondToolsRPC
CondToolsRPC_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondToolsRPC_EX_USE := $(foreach d, cmssw  CondFormats/RPCObjects CondFormats/L1TObjects CondFormats/DataRecord CondCore/PopCon CondCore/IOVService CondCore/DBOutputService CondCore/DBCommon CondCore/MetaDataService L1Trigger/RPCTrigger FWCore/Framework FWCore/PluginManager FWCore/ParameterSet FWCore/ServiceRegistry boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondToolsRPC_EX_LIB   := CondToolsRPC
ALL_EXTERNAL_PRODS += CondToolsRPC
endif
ifeq ($(strip $(TrackingTools/TrackRefitter)),)
TrackingToolsTrackRefitter := cmssw/TrackingTools/TrackRefitter
TrackingTools/TrackRefitter := TrackingToolsTrackRefitter
TrackingToolsTrackRefitter_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TrackingToolsTrackRefitter_EX_USE := $(foreach d, cmssw  FWCore/Framework TrackingTools/TransientTrackingRecHit TrackingTools/TransientTrack TrackingTools/TrackFitters RecoMuon/TransientTrackingRecHit MagneticField/Engine DataFormats/TrackerCommon Geometry/Records Geometry/TrackerNumberingBuilder clhep root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TrackingToolsTrackRefitter_EX_LIB   := TrackingToolsTrackRefitter
ALL_EXTERNAL_PRODS += TrackingToolsTrackRefitter
endif
ifeq ($(strip $(RecoVertex/ConfigurableVertexReco)),)
RecoVertexConfigurableVertexReco := cmssw/RecoVertex/ConfigurableVertexReco
RecoVertex/ConfigurableVertexReco := RecoVertexConfigurableVertexReco
RecoVertexConfigurableVertexReco_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoVertexConfigurableVertexReco_EX_USE := $(foreach d, cmssw  FWCore/ParameterSet RecoVertex/AdaptiveVertexFit RecoVertex/TrimmedKalmanVertexFinder RecoVertex/AdaptiveVertexFinder RecoVertex/MultiVertexFit DataFormats/Math,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoVertexConfigurableVertexReco_EX_LIB   := RecoVertexConfigurableVertexReco
ALL_EXTERNAL_PRODS += RecoVertexConfigurableVertexReco
endif
ifeq ($(strip $(RecoJets/JetProducers)),)
RecoJetsJetProducers := cmssw/RecoJets/JetProducers
RecoJets/JetProducers := RecoJetsJetProducers
RecoJetsJetProducers_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoJetsJetProducers_EX_USE := $(foreach d, cmssw  boost FWCore/Framework DataFormats/JetReco Geometry/CaloGeometry Geometry/CaloTopology Geometry/Records Geometry/CommonDetUnit SimDataFormats/CaloHit RecoJets/JetAlgorithms DataFormats/CastorReco CommonTools/Utils fastjet roottmva vdt,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoJetsJetProducers_EX_LIB   := RecoJetsJetProducers
ALL_EXTERNAL_PRODS += RecoJetsJetProducers
endif
ifeq ($(strip $(CommonTools/Clustering1D)),)
CommonToolsClustering1D := cmssw/CommonTools/Clustering1D
CommonTools/Clustering1D := CommonToolsClustering1D
CommonToolsClustering1D_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CommonToolsClustering1D_EX_USE := $(foreach d, cmssw  DataFormats/GeometryCommonDetAlgo FWCore/Utilities,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CommonToolsClustering1D_EX_LIB   := CommonToolsClustering1D
ALL_EXTERNAL_PRODS += CommonToolsClustering1D
endif
ifeq ($(strip $(RecoMuon/MuonIsolationProducers)),)
src_RecoMuon_MuonIsolationProducers := cmssw/RecoMuon/MuonIsolationProducers
RecoMuon/MuonIsolationProducers  := src_RecoMuon_MuonIsolationProducers
src_RecoMuon_MuonIsolationProducers_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
src_RecoMuon_MuonIsolationProducers_EX_USE := $(foreach d, FWCore/Framework cmssw Geometry/CaloGeometry RecoMuon/MuonIsolation FWCore/PluginManager MagneticField/Records FWCore/MessageLogger Geometry/CaloEventSetup Geometry/Records DataFormats/TrackReco DataFormats/MuonReco DataFormats/CaloTowers MagneticField/Engine FWCore/ParameterSet,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_RecoMuon_MuonIsolationProducers
endif

ifeq ($(strip $(SimDataFormats/DigiSimLinks)),)
SimDataFormatsDigiSimLinks := cmssw/SimDataFormats/DigiSimLinks
SimDataFormats/DigiSimLinks := SimDataFormatsDigiSimLinks
SimDataFormatsDigiSimLinks_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimDataFormatsDigiSimLinks_EX_USE := $(foreach d, cmssw  DataFormats/Common SimDataFormats/EncodedEventId DataFormats/MuonDetId boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimDataFormatsDigiSimLinks_EX_LIB   := SimDataFormatsDigiSimLinks
ALL_EXTERNAL_PRODS += SimDataFormatsDigiSimLinks
endif
ifeq ($(strip $(DataFormats/Streamer)),)
DataFormatsStreamer := cmssw/DataFormats/Streamer
DataFormats/Streamer := DataFormatsStreamer
DataFormatsStreamer_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsStreamer_EX_USE := $(foreach d, cmssw  DataFormats/Provenance DataFormats/StdDictionaries,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsStreamer_EX_LIB   := DataFormatsStreamer
ALL_EXTERNAL_PRODS += DataFormatsStreamer
endif
ifeq ($(strip $(DataFormats/L1GlobalMuonTrigger)),)
DataFormatsL1GlobalMuonTrigger := cmssw/DataFormats/L1GlobalMuonTrigger
DataFormats/L1GlobalMuonTrigger := DataFormatsL1GlobalMuonTrigger
DataFormatsL1GlobalMuonTrigger_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsL1GlobalMuonTrigger_EX_USE := $(foreach d, cmssw  DataFormats/Common FWCore/MessageLogger rootrflx tbb,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsL1GlobalMuonTrigger_EX_LIB   := DataFormatsL1GlobalMuonTrigger
ALL_EXTERNAL_PRODS += DataFormatsL1GlobalMuonTrigger
endif
ifeq ($(strip $(RecoPixelVertexing/PixelTrackFitting)),)
RecoPixelVertexingPixelTrackFitting := cmssw/RecoPixelVertexing/PixelTrackFitting
RecoPixelVertexing/PixelTrackFitting := RecoPixelVertexingPixelTrackFitting
RecoPixelVertexingPixelTrackFitting_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoPixelVertexingPixelTrackFitting_EX_USE := $(foreach d, cmssw  CommonTools/Statistics DataFormats/GeometrySurface DataFormats/GeometryVector DataFormats/SiPixelDetId DataFormats/TrackerRecHit2D DataFormats/TrackingRecHit DataFormats/TrackReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager Geometry/CommonDetUnit Geometry/Records Geometry/TrackerGeometryBuilder MagneticField/Engine MagneticField/Records RecoTracker/TkMSParametrization RecoTracker/TkTrackingRegions TrackingTools/DetLayers TrackingTools/PatternTools TrackingTools/KalmanUpdators TrackingTools/Records TrackingTools/TrajectoryParametrization TrackingTools/TrajectoryState TrackingTools/TransientTrackingRecHit RecoTracker/TransientTrackingRecHit RecoPixelVertexing/PixelTriplets,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoPixelVertexingPixelTrackFitting_EX_LIB   := RecoPixelVertexingPixelTrackFitting
ALL_EXTERNAL_PRODS += RecoPixelVertexingPixelTrackFitting
endif
ifeq ($(strip $(IOMC/RandomEngine)),)
IOMCRandomEngine := cmssw/IOMC/RandomEngine
IOMC/RandomEngine := IOMCRandomEngine
IOMCRandomEngine_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
IOMCRandomEngine_EX_USE := $(foreach d, cmssw  DataFormats/Provenance FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities FWCore/MessageLogger SimDataFormats/RandomEngine boost clhep rootcore rootmath,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
IOMCRandomEngine_EX_LIB   := IOMCRandomEngine
ALL_EXTERNAL_PRODS += IOMCRandomEngine
endif
ifeq ($(strip $(SimCalorimetry/HcalSimProducers)),)
SimCalorimetryHcalSimProducers := cmssw/SimCalorimetry/HcalSimProducers
SimCalorimetry/HcalSimProducers := SimCalorimetryHcalSimProducers
SimCalorimetryHcalSimProducers_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimCalorimetryHcalSimProducers_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/ParameterSet FWCore/Utilities SimCalorimetry/HcalSimAlgos SimGeneral/MixingModule SimDataFormats/CaloTest DataFormats/HcalCalibObjects,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimCalorimetryHcalSimProducers_EX_LIB   := SimCalorimetryHcalSimProducers
ALL_EXTERNAL_PRODS += SimCalorimetryHcalSimProducers
endif
ifeq ($(strip $(CalibCalorimetry/EcalLaserAnalyzer)),)
CalibCalorimetryEcalLaserAnalyzer := cmssw/CalibCalorimetry/EcalLaserAnalyzer
CalibCalorimetry/EcalLaserAnalyzer := CalibCalorimetryEcalLaserAnalyzer
CalibCalorimetryEcalLaserAnalyzer_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibCalorimetryEcalLaserAnalyzer_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/ParameterSet root rootgraphics DataFormats/EcalDigi DataFormats/EcalRecHit Geometry/EcalMapping,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibCalorimetryEcalLaserAnalyzer_EX_LIB   := CalibCalorimetryEcalLaserAnalyzer
ALL_EXTERNAL_PRODS += CalibCalorimetryEcalLaserAnalyzer
endif
ifeq ($(strip $(SimDataFormats/PileupSummaryInfo)),)
SimDataFormatsPileupSummaryInfo := cmssw/SimDataFormats/PileupSummaryInfo
SimDataFormats/PileupSummaryInfo := SimDataFormatsPileupSummaryInfo
SimDataFormatsPileupSummaryInfo_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimDataFormatsPileupSummaryInfo_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/Provenance rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimDataFormatsPileupSummaryInfo_EX_LIB   := SimDataFormatsPileupSummaryInfo
ALL_EXTERNAL_PRODS += SimDataFormatsPileupSummaryInfo
endif
ifeq ($(strip $(CondCore/MetaDataService)),)
CondCoreMetaDataService := cmssw/CondCore/MetaDataService
CondCore/MetaDataService := CondCoreMetaDataService
CondCoreMetaDataService_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondCoreMetaDataService_EX_USE := $(foreach d, cmssw  RelationalAccess CondCore/DBCommon CondCore/ORA,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondCoreMetaDataService_EX_LIB   := CondCoreMetaDataService
ALL_EXTERNAL_PRODS += CondCoreMetaDataService
endif
ifeq ($(strip $(SimGeneral/NoiseGenerators)),)
SimGeneralNoiseGenerators := cmssw/SimGeneral/NoiseGenerators
SimGeneral/NoiseGenerators := SimGeneralNoiseGenerators
SimGeneralNoiseGenerators_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimGeneralNoiseGenerators_EX_USE := $(foreach d, cmssw  clhep gsl,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimGeneralNoiseGenerators_EX_LIB   := SimGeneralNoiseGenerators
ALL_EXTERNAL_PRODS += SimGeneralNoiseGenerators
endif
ifeq ($(strip $(DataFormats/GsfTrackReco)),)
DataFormatsGsfTrackReco := cmssw/DataFormats/GsfTrackReco
DataFormats/GsfTrackReco := DataFormatsGsfTrackReco
DataFormatsGsfTrackReco_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsGsfTrackReco_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/TrackReco rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsGsfTrackReco_EX_LIB   := DataFormatsGsfTrackReco
ALL_EXTERNAL_PRODS += DataFormatsGsfTrackReco
endif
ifeq ($(strip $(FWCore/MessageService)),)
FWCoreMessageService := cmssw/FWCore/MessageService
FWCore/MessageService := FWCoreMessageService
FWCoreMessageService_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCoreMessageService_EX_USE := $(foreach d, cmssw  DataFormats/Provenance FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities boost tbb,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCoreMessageService_EX_LIB   := FWCoreMessageService
ALL_EXTERNAL_PRODS += FWCoreMessageService
endif
ifeq ($(strip $(CommonTools/CandAlgos)),)
CommonToolsCandAlgos := cmssw/CommonTools/CandAlgos
CommonTools/CandAlgos := CommonToolsCandAlgos
CommonToolsCandAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CommonToolsCandAlgos_EX_USE := $(foreach d, cmssw  SimGeneral/HepPDTRecord FWCore/Framework FWCore/ParameterSet,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CommonToolsCandAlgos_EX_LIB   := CommonToolsCandAlgos
ALL_EXTERNAL_PRODS += CommonToolsCandAlgos
endif
ifeq ($(strip $(SimCalorimetry/EcalTrigPrimProducers)),)
src_SimCalorimetry_EcalTrigPrimProducers := cmssw/SimCalorimetry/EcalTrigPrimProducers
SimCalorimetry/EcalTrigPrimProducers  := src_SimCalorimetry_EcalTrigPrimProducers
src_SimCalorimetry_EcalTrigPrimProducers_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
src_SimCalorimetry_EcalTrigPrimProducers_EX_USE := $(foreach d, boost CalibCalorimetry/EcalTPGTools FWCore/Framework cmssw DataFormats/EcalDigi CondFormats/DataRecord SimCalorimetry/EcalTrigPrimAlgos root FWCore/PluginManager hepmc DataFormats/EcalDetId CondFormats/L1TObjects DataFormats/FEDRawData FWCore/Utilities FWCore/ParameterSet,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_SimCalorimetry_EcalTrigPrimProducers
endif

ifeq ($(strip $(RecoMuon/Navigation)),)
RecoMuonNavigation := cmssw/RecoMuon/Navigation
RecoMuon/Navigation := RecoMuonNavigation
RecoMuonNavigation_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoMuonNavigation_EX_USE := $(foreach d, cmssw  DataFormats/GeometrySurface FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet RecoMuon/DetLayers TrackingTools/DetLayers TrackingTools/TrajectoryState Utilities/General,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoMuonNavigation_EX_LIB   := RecoMuonNavigation
ALL_EXTERNAL_PRODS += RecoMuonNavigation
endif
ifeq ($(strip $(FastSimulation/Utilities)),)
FastSimulationUtilities := cmssw/FastSimulation/Utilities
FastSimulation/Utilities := FastSimulationUtilities
FastSimulationUtilities_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FastSimulationUtilities_EX_USE := $(foreach d, cmssw  FWCore/ServiceRegistry FWCore/Utilities clhep root rootmath,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FastSimulationUtilities_EX_LIB   := FastSimulationUtilities
ALL_EXTERNAL_PRODS += FastSimulationUtilities
endif
ifeq ($(strip $(CondTools/RunInfo)),)
CondToolsRunInfo := cmssw/CondTools/RunInfo
CondTools/RunInfo := CondToolsRunInfo
CondToolsRunInfo_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondToolsRunInfo_EX_USE := $(foreach d, cmssw  CondCore/DBCommon CondCore/DBOutputService CondCore/IOVService CondCore/MetaDataService CondCore/PopCon CondFormats/RunInfo CoralBase DataFormats/Provenance FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry RelationalAccess rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondToolsRunInfo_EX_LIB   := CondToolsRunInfo
ALL_EXTERNAL_PRODS += CondToolsRunInfo
endif
ifeq ($(strip $(SimDataFormats/SimHitMaker)),)
SimDataFormatsSimHitMaker := cmssw/SimDataFormats/SimHitMaker
SimDataFormats/SimHitMaker := SimDataFormatsSimHitMaker
SimDataFormatsSimHitMaker_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimDataFormatsSimHitMaker_EX_USE := $(foreach d, cmssw  FWCore/MessageLogger SimDataFormats/CaloHit SimDataFormats/TrackingHit,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimDataFormatsSimHitMaker_EX_LIB   := SimDataFormatsSimHitMaker
ALL_EXTERNAL_PRODS += SimDataFormatsSimHitMaker
endif
ifeq ($(strip $(CalibFormats/HcalObjects)),)
CalibFormatsHcalObjects := cmssw/CalibFormats/HcalObjects
CalibFormats/HcalObjects := CalibFormatsHcalObjects
CalibFormatsHcalObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibFormatsHcalObjects_EX_USE := $(foreach d, cmssw  FWCore/Framework DataFormats/HcalDetId DataFormats/HcalDigi CalibFormats/CaloObjects CondFormats/HcalObjects CondFormats/DataRecord boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibFormatsHcalObjects_EX_LIB   := CalibFormatsHcalObjects
ALL_EXTERNAL_PRODS += CalibFormatsHcalObjects
endif
ifeq ($(strip $(RecoTauTag/ImpactParameter)),)
RecoTauTagImpactParameter := cmssw/RecoTauTag/ImpactParameter
RecoTauTag/ImpactParameter := RecoTauTagImpactParameter
RecoTauTagImpactParameter_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoTauTagImpactParameter_EX_USE := $(foreach d, cmssw  TrackingTools/Records FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DataFormats/Common DataFormats/BTauReco DataFormats/VertexReco rootrflx DataFormats/Math boost root RecoBTag/BTagTools TrackingTools/TransientTrack rootcore rootminuit2,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoTauTagImpactParameter_EX_LIB   := RecoTauTagImpactParameter
ALL_EXTERNAL_PRODS += RecoTauTagImpactParameter
endif
ifeq ($(strip $(DataFormats/SiPixelCluster)),)
DataFormatsSiPixelCluster := cmssw/DataFormats/SiPixelCluster
DataFormats/SiPixelCluster := DataFormatsSiPixelCluster
DataFormatsSiPixelCluster_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsSiPixelCluster_EX_USE := $(foreach d, cmssw  DataFormats/Common rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsSiPixelCluster_EX_LIB   := DataFormatsSiPixelCluster
ALL_EXTERNAL_PRODS += DataFormatsSiPixelCluster
endif
ifeq ($(strip $(DQM/SiStripCommissioningClients)),)
DQMSiStripCommissioningClients := cmssw/DQM/SiStripCommissioningClients
DQM/SiStripCommissioningClients := DQMSiStripCommissioningClients
DQMSiStripCommissioningClients_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMSiStripCommissioningClients_EX_USE := $(foreach d, cmssw  CondFormats/SiStripObjects DataFormats/SiStripCommon DQM/SiStripCommissioningAnalysis DQM/SiStripCommissioningSummary DQM/SiStripCommon DQMServices/Core DQMServices/ClientConfig FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager FWCore/ServiceRegistry FWCore/Utilities boost rootcore,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMSiStripCommissioningClients_EX_LIB   := DQMSiStripCommissioningClients
ALL_EXTERNAL_PRODS += DQMSiStripCommissioningClients
endif
ifeq ($(strip $(SimGeneral/MixingModule)),)
SimGeneralMixingModule := cmssw/SimGeneral/MixingModule
SimGeneral/MixingModule := SimGeneralMixingModule
SimGeneralMixingModule_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimGeneralMixingModule_EX_USE := $(foreach d, cmssw  FWCore/PluginManager FWCore/ParameterSet,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimGeneralMixingModule_EX_LIB   := SimGeneralMixingModule
ALL_EXTERNAL_PRODS += SimGeneralMixingModule
endif
ifeq ($(strip $(Geometry/DTGeometryBuilder)),)
GeometryDTGeometryBuilder := cmssw/Geometry/DTGeometryBuilder
Geometry/DTGeometryBuilder := GeometryDTGeometryBuilder
GeometryDTGeometryBuilder_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeometryDTGeometryBuilder_EX_USE := $(foreach d, cmssw  DataFormats/GeometrySurface DataFormats/MuonDetId DetectorDescription/Core Geometry/DTGeometry Geometry/MuonNumbering clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryDTGeometryBuilder_EX_LIB   := GeometryDTGeometryBuilder
ALL_EXTERNAL_PRODS += GeometryDTGeometryBuilder
endif
ifeq ($(strip $(RecoVertex/KinematicFitPrimitives)),)
RecoVertexKinematicFitPrimitives := cmssw/RecoVertex/KinematicFitPrimitives
RecoVertex/KinematicFitPrimitives := RecoVertexKinematicFitPrimitives
RecoVertexKinematicFitPrimitives_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoVertexKinematicFitPrimitives_EX_USE := $(foreach d, cmssw  TrackingTools/TransientTrack TrackingTools/GeomPropagators RecoVertex/VertexPrimitives,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoVertexKinematicFitPrimitives_EX_LIB   := RecoVertexKinematicFitPrimitives
ALL_EXTERNAL_PRODS += RecoVertexKinematicFitPrimitives
endif
ifeq ($(strip $(RecoBTau/JetTagComputer)),)
RecoBTauJetTagComputer := cmssw/RecoBTau/JetTagComputer
RecoBTau/JetTagComputer := RecoBTauJetTagComputer
RecoBTauJetTagComputer_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoBTauJetTagComputer_EX_USE := $(foreach d, cmssw  CondFormats/DataRecord CondFormats/PhysicsToolsObjects DataFormats/BTauReco DataFormats/Common DataFormats/JetReco FWCore/Framework FWCore/ParameterSet FWCore/Utilities PhysicsTools/MVAComputer boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoBTauJetTagComputer_EX_LIB   := RecoBTauJetTagComputer
ALL_EXTERNAL_PRODS += RecoBTauJetTagComputer
endif
ifeq ($(strip $(TrackingTools/MeasurementDet)),)
TrackingToolsMeasurementDet := cmssw/TrackingTools/MeasurementDet
TrackingTools/MeasurementDet := TrackingToolsMeasurementDet
TrackingToolsMeasurementDet_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TrackingToolsMeasurementDet_EX_USE := $(foreach d, cmssw  TrackingTools/TransientTrackingRecHit TrackingTools/PatternTools,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TrackingToolsMeasurementDet_EX_LIB   := TrackingToolsMeasurementDet
ALL_EXTERNAL_PRODS += TrackingToolsMeasurementDet
endif
ifeq ($(strip $(DQM/SiStripHistoricInfoClient)),)
DQMSiStripHistoricInfoClient := cmssw/DQM/SiStripHistoricInfoClient
DQM/SiStripHistoricInfoClient := DQMSiStripHistoricInfoClient
DQMSiStripHistoricInfoClient_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMSiStripHistoricInfoClient_EX_USE := $(foreach d, cmssw  DataFormats/SiStripDetId FWCore/MessageLogger rootcore,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMSiStripHistoricInfoClient_EX_LIB   := DQMSiStripHistoricInfoClient
ALL_EXTERNAL_PRODS += DQMSiStripHistoricInfoClient
endif
ifeq ($(strip $(CommonTools/RecoUtils)),)
CommonToolsRecoUtils := cmssw/CommonTools/RecoUtils
CommonTools/RecoUtils := CommonToolsRecoUtils
CommonToolsRecoUtils_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CommonToolsRecoUtils_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/EgammaCandidates DataFormats/L1GlobalTrigger DataFormats/RecoCandidate DataFormats/Scalers DataFormats/TrackReco DataFormats/VertexReco DataFormats/ParticleFlowReco DataFormats/ParticleFlowCandidate L1Trigger/GlobalTriggerAnalyzer MagneticField/Records MagneticField/Engine HLTrigger/HLTcore RecoEgamma/EgammaTools RecoVertex/KinematicFit RecoVertex/KinematicFitPrimitives rootrflx TrackingTools/TransientTrack TrackingTools/IPTools TrackingTools/Records FWCore/Framework,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CommonToolsRecoUtils_EX_LIB   := CommonToolsRecoUtils
ALL_EXTERNAL_PRODS += CommonToolsRecoUtils
endif
ifeq ($(strip $(TrackingTools/MaterialEffects)),)
TrackingToolsMaterialEffects := cmssw/TrackingTools/MaterialEffects
TrackingTools/MaterialEffects := TrackingToolsMaterialEffects
TrackingToolsMaterialEffects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TrackingToolsMaterialEffects_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/ParameterSet FWCore/Utilities MagneticField/Engine TrackingTools/GeomPropagators TrackingTools/TrajectoryState TrackPropagation/RungeKutta DataFormats/GeometryCommonDetAlgo boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TrackingToolsMaterialEffects_EX_LIB   := TrackingToolsMaterialEffects
ALL_EXTERNAL_PRODS += TrackingToolsMaterialEffects
endif
ifeq ($(strip $(TrackPropagation/NavGeometry)),)
TrackPropagationNavGeometry := cmssw/TrackPropagation/NavGeometry
TrackPropagation/NavGeometry := TrackPropagationNavGeometry
TrackPropagationNavGeometry_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TrackPropagationNavGeometry_EX_USE := $(foreach d, cmssw  MagneticField/VolumeGeometry TrackingTools/GeomPropagators FWCore/MessageLogger,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TrackPropagationNavGeometry_EX_LIB   := TrackPropagationNavGeometry
ALL_EXTERNAL_PRODS += TrackPropagationNavGeometry
endif
ifeq ($(strip $(FastSimulation/Tracking)),)
FastSimulationTracking := cmssw/FastSimulation/Tracking
FastSimulation/Tracking := FastSimulationTracking
FastSimulationTracking_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FastSimulationTracking_EX_USE := $(foreach d, cmssw  DataFormats/GeometryVector DataFormats/SiPixelDetId DataFormats/SiStripDetId DataFormats/TrackerCommon DataFormats/TrackingRecHit DataFormats/TrackerRecHit2D Geometry/CommonDetUnit,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FastSimulationTracking_EX_LIB   := FastSimulationTracking
ALL_EXTERNAL_PRODS += FastSimulationTracking
endif
ifeq ($(strip $(RecoMuon/GlobalTrackingTools)),)
RecoMuonGlobalTrackingTools := cmssw/RecoMuon/GlobalTrackingTools
RecoMuon/GlobalTrackingTools := RecoMuonGlobalTrackingTools
RecoMuonGlobalTrackingTools_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoMuonGlobalTrackingTools_EX_USE := $(foreach d, cmssw  CommonTools/Statistics DataFormats/BeamSpot DataFormats/Common DataFormats/DetId DataFormats/GeometrySurface DataFormats/GeometryVector DataFormats/Math DataFormats/MuonDetId DataFormats/TrackReco DataFormats/TrajectoryState DataFormats/VertexReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry Geometry/CommonDetUnit Geometry/CSCGeometry Geometry/DTGeometry PhysicsTools/UtilAlgos RecoMuon/Navigation RecoMuon/TrackingTools RecoMuon/TransientTrackingRecHit RecoTracker/TkDetLayers RecoTracker/TkMSParametrization RecoTracker/TkTrackingRegions RecoTracker/TransientTrackingRecHit TrackingTools/DetLayers TrackingTools/GeomPropagators TrackingTools/PatternTools TrackingTools/Records TrackingTools/TrackFitters TrackingTools/TrackRefitter TrackingTools/TrajectoryState TrackingTools/TransientTrack TrackingTools/TransientTrackingRecHit Utilities/General Utilities/Timing CondFormats/Alignment root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoMuonGlobalTrackingTools_EX_LIB   := RecoMuonGlobalTrackingTools
ALL_EXTERNAL_PRODS += RecoMuonGlobalTrackingTools
endif
ifeq ($(strip $(DataFormats/Histograms)),)
DataFormatsHistograms := cmssw/DataFormats/Histograms
DataFormats/Histograms := DataFormatsHistograms
DataFormatsHistograms_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsHistograms_EX_USE := $(foreach d, cmssw  boost rootrflx roothistmatrix DataFormats/Common,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsHistograms_EX_LIB   := DataFormatsHistograms
ALL_EXTERNAL_PRODS += DataFormatsHistograms
endif
ifeq ($(strip $(DataFormats/GeometryCommonDetAlgo)),)
DataFormatsGeometryCommonDetAlgo := cmssw/DataFormats/GeometryCommonDetAlgo
DataFormats/GeometryCommonDetAlgo := DataFormatsGeometryCommonDetAlgo
DataFormatsGeometryCommonDetAlgo_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsGeometryCommonDetAlgo_EX_USE := $(foreach d, cmssw  DataFormats/Math DataFormats/GeometrySurface DataFormats/GeometryVector DataFormats/Common FWCore/Utilities rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsGeometryCommonDetAlgo_EX_LIB   := DataFormatsGeometryCommonDetAlgo
ALL_EXTERNAL_PRODS += DataFormatsGeometryCommonDetAlgo
endif
ifeq ($(strip $(GeneratorInterface/HydjetInterface)),)
GeneratorInterfaceHydjetInterface := cmssw/GeneratorInterface/HydjetInterface
GeneratorInterface/HydjetInterface := GeneratorInterfaceHydjetInterface
GeneratorInterfaceHydjetInterface_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeneratorInterfaceHydjetInterface_EX_USE := $(foreach d, cmssw  boost GeneratorInterface/Core FWCore/Framework SimDataFormats/GeneratorProducts GeneratorInterface/Pythia6Interface GeneratorInterface/PyquenInterface GeneratorInterface/ExternalDecays f77compiler,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeneratorInterfaceHydjetInterface_EX_LIB   := GeneratorInterfaceHydjetInterface
ALL_EXTERNAL_PRODS += GeneratorInterfaceHydjetInterface
endif
ifeq ($(strip $(Fireworks/Electrons)),)
FireworksElectrons := cmssw/Fireworks/Electrons
Fireworks/Electrons := FireworksElectrons
FireworksElectrons_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FireworksElectrons_EX_USE := $(foreach d, cmssw  DataFormats/EgammaReco Fireworks/Core rootcore,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FireworksElectrons_EX_LIB   := FireworksElectrons
ALL_EXTERNAL_PRODS += FireworksElectrons
endif
ifeq ($(strip $(TopQuarkAnalysis/TopKinFitter)),)
TopQuarkAnalysisTopKinFitter := cmssw/TopQuarkAnalysis/TopKinFitter
TopQuarkAnalysis/TopKinFitter := TopQuarkAnalysisTopKinFitter
TopQuarkAnalysisTopKinFitter_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TopQuarkAnalysisTopKinFitter_EX_USE := $(foreach d, cmssw  CommonTools/Utils FWCore/ParameterSet PhysicsTools/KinFitter AnalysisDataFormats/TopObjects,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TopQuarkAnalysisTopKinFitter_EX_LIB   := TopQuarkAnalysisTopKinFitter
ALL_EXTERNAL_PRODS += TopQuarkAnalysisTopKinFitter
endif
ifeq ($(strip $(AnalysisDataFormats/SUSYBSMObjects)),)
AnalysisDataFormatsSUSYBSMObjects := cmssw/AnalysisDataFormats/SUSYBSMObjects
AnalysisDataFormats/SUSYBSMObjects := AnalysisDataFormatsSUSYBSMObjects
AnalysisDataFormatsSUSYBSMObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AnalysisDataFormatsSUSYBSMObjects_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/MuonReco DataFormats/CSCRecHit DataFormats/DTRecHit FWCore/Utilities rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AnalysisDataFormatsSUSYBSMObjects_EX_LIB   := AnalysisDataFormatsSUSYBSMObjects
ALL_EXTERNAL_PRODS += AnalysisDataFormatsSUSYBSMObjects
endif
ifeq ($(strip $(DataFormats/GEMDigi)),)
DataFormatsGEMDigi := cmssw/DataFormats/GEMDigi
DataFormats/GEMDigi := DataFormatsGEMDigi
DataFormatsGEMDigi_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsGEMDigi_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/MuonDetId boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsGEMDigi_EX_LIB   := DataFormatsGEMDigi
ALL_EXTERNAL_PRODS += DataFormatsGEMDigi
endif
ifeq ($(strip $(Utilities/StaticAnalyzers)),)
UtilitiesStaticAnalyzers := cmssw/Utilities/StaticAnalyzers
Utilities/StaticAnalyzers := UtilitiesStaticAnalyzers
UtilitiesStaticAnalyzers_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
UtilitiesStaticAnalyzers_EX_USE := $(foreach d, cmssw  llvm boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += UtilitiesStaticAnalyzers
endif
ifeq ($(strip $(CaloOnlineTools/HcalOnlineDb)),)
CaloOnlineToolsHcalOnlineDb := cmssw/CaloOnlineTools/HcalOnlineDb
CaloOnlineTools/HcalOnlineDb := CaloOnlineToolsHcalOnlineDb
CaloOnlineToolsHcalOnlineDb_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CaloOnlineToolsHcalOnlineDb_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/Utilities FWCore/PluginManager FWCore/ParameterSet FWCore/ServiceRegistry boost oracle DataFormats/Common rootrflx xerces-c zlib DataFormats/HcalDetId CalibCalorimetry/CaloTPG CalibCalorimetry/HcalAlgos CalibCalorimetry/HcalTPGAlgos CondTools/Hcal OnlineDB/Oracle,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CaloOnlineToolsHcalOnlineDb_EX_LIB   := CaloOnlineToolsHcalOnlineDb
ALL_EXTERNAL_PRODS += CaloOnlineToolsHcalOnlineDb
endif
ifeq ($(strip $(SimG4CMS/ShowerLibraryProducer)),)
SimG4CMSShowerLibraryProducer := cmssw/SimG4CMS/ShowerLibraryProducer
SimG4CMS/ShowerLibraryProducer := SimG4CMSShowerLibraryProducer
SimG4CMSShowerLibraryProducer_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CMSShowerLibraryProducer_EX_USE := $(foreach d, cmssw  SimG4Core/Watcher SimG4Core/SensitiveDetector SimG4Core/Notification SimG4Core/Application SimG4CMS/Calo SimG4CMS/Forward DataFormats/Math SimDataFormats/SimHitMaker SimDataFormats/HcalTestBeam SimDataFormats/CaloHit SimDataFormats/Forward DetectorDescription/Core FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/ServiceRegistry CommonTools/UtilAlgos boost geant4core root rootmath,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CMSShowerLibraryProducer_EX_LIB   := SimG4CMSShowerLibraryProducer
ALL_EXTERNAL_PRODS += SimG4CMSShowerLibraryProducer
endif
ifeq ($(strip $(DataFormats/GeometrySurface)),)
DataFormatsGeometrySurface := cmssw/DataFormats/GeometrySurface
DataFormats/GeometrySurface := DataFormatsGeometrySurface
DataFormatsGeometrySurface_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsGeometrySurface_EX_USE := $(foreach d, cmssw  DataFormats/GeometryVector boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsGeometrySurface_EX_LIB   := DataFormatsGeometrySurface
ALL_EXTERNAL_PRODS += DataFormatsGeometrySurface
endif
ifeq ($(strip $(RecoLocalCalo/EcalRecProducers)),)
RecoLocalCaloEcalRecProducers := cmssw/RecoLocalCalo/EcalRecProducers
RecoLocalCalo/EcalRecProducers := RecoLocalCaloEcalRecProducers
RecoLocalCaloEcalRecProducers_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoLocalCaloEcalRecProducers_EX_USE := $(foreach d, cmssw  FWCore/MessageLogger FWCore/Framework clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoLocalCaloEcalRecProducers_EX_LIB   := RecoLocalCaloEcalRecProducers
ALL_EXTERNAL_PRODS += RecoLocalCaloEcalRecProducers
endif
ifeq ($(strip $(DataFormats/TrackerRecHit2D)),)
DataFormatsTrackerRecHit2D := cmssw/DataFormats/TrackerRecHit2D
DataFormats/TrackerRecHit2D := DataFormatsTrackerRecHit2D
DataFormatsTrackerRecHit2D_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsTrackerRecHit2D_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/TrackingRecHit FWCore/MessageLogger rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsTrackerRecHit2D_EX_LIB   := DataFormatsTrackerRecHit2D
ALL_EXTERNAL_PRODS += DataFormatsTrackerRecHit2D
endif
ifeq ($(strip $(RecoBTag/XMLCalibration)),)
RecoBTagXMLCalibration := cmssw/RecoBTag/XMLCalibration
RecoBTag/XMLCalibration := RecoBTagXMLCalibration
RecoBTagXMLCalibration_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoBTagXMLCalibration_EX_USE := $(foreach d, cmssw  FWCore/MessageLogger FWCore/Concurrency xerces-c,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoBTagXMLCalibration_EX_LIB   := RecoBTagXMLCalibration
ALL_EXTERNAL_PRODS += RecoBTagXMLCalibration
endif
ifeq ($(strip $(MagneticField/VolumeGeometry)),)
MagneticFieldVolumeGeometry := cmssw/MagneticField/VolumeGeometry
MagneticField/VolumeGeometry := MagneticFieldVolumeGeometry
MagneticFieldVolumeGeometry_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
MagneticFieldVolumeGeometry_EX_USE := $(foreach d, cmssw  DataFormats/GeometrySurface DataFormats/GeometryVector MagneticField/Engine,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
MagneticFieldVolumeGeometry_EX_LIB   := MagneticFieldVolumeGeometry
ALL_EXTERNAL_PRODS += MagneticFieldVolumeGeometry
endif
ifeq ($(strip $(OnlineDB/SiStripConfigDb)),)
OnlineDBSiStripConfigDb := cmssw/OnlineDB/SiStripConfigDb
OnlineDB/SiStripConfigDb := OnlineDBSiStripConfigDb
OnlineDBSiStripConfigDb_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
OnlineDBSiStripConfigDb_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/SiStripCommon FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager FWCore/Utilities tkonlineswdb boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
OnlineDBSiStripConfigDb_EX_LIB   := OnlineDBSiStripConfigDb
ALL_EXTERNAL_PRODS += OnlineDBSiStripConfigDb
endif
ifeq ($(strip $(CondFormats/L1TObjects)),)
CondFormatsL1TObjects := cmssw/CondFormats/L1TObjects
CondFormats/L1TObjects := CondFormatsL1TObjects
CondFormatsL1TObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondFormatsL1TObjects_EX_USE := $(foreach d, cmssw  boost DataFormats/MuonDetId FWCore/ParameterSet FWCore/Utilities rootrflx DataFormats/L1GlobalMuonTrigger DataFormats/L1GlobalCaloTrigger DataFormats/L1GlobalTrigger DataFormats/StdDictionaries,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsL1TObjects_EX_LIB   := CondFormatsL1TObjects
ALL_EXTERNAL_PRODS += CondFormatsL1TObjects
endif
ifeq ($(strip $(DataFormats/TrajectoryState)),)
DataFormatsTrajectoryState := cmssw/DataFormats/TrajectoryState
DataFormats/TrajectoryState := DataFormatsTrajectoryState
DataFormatsTrajectoryState_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsTrajectoryState_EX_USE := $(foreach d, cmssw  rootrflx boost_header,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsTrajectoryState_EX_LIB   := DataFormatsTrajectoryState
ALL_EXTERNAL_PRODS += DataFormatsTrajectoryState
endif
ifeq ($(strip $(DataFormats/BeamSpot)),)
DataFormatsBeamSpot := cmssw/DataFormats/BeamSpot
DataFormats/BeamSpot := DataFormatsBeamSpot
DataFormatsBeamSpot_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsBeamSpot_EX_USE := $(foreach d, cmssw  DataFormats/Common rootcore rootrflx clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsBeamSpot_EX_LIB   := DataFormatsBeamSpot
ALL_EXTERNAL_PRODS += DataFormatsBeamSpot
endif
ifeq ($(strip $(DataFormats/ParticleFlowCandidate)),)
DataFormatsParticleFlowCandidate := cmssw/DataFormats/ParticleFlowCandidate
DataFormats/ParticleFlowCandidate := DataFormatsParticleFlowCandidate
DataFormatsParticleFlowCandidate_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsParticleFlowCandidate_EX_USE := $(foreach d, cmssw  DataFormats/EgammaCandidates DataFormats/Candidate DataFormats/Common DataFormats/Math DataFormats/TrackReco DataFormats/GsfTrackReco DataFormats/DTRecHit DataFormats/CSCRecHit FWCore/Utilities rootcore rootmath rootrflx clhepheader,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsParticleFlowCandidate_EX_LIB   := DataFormatsParticleFlowCandidate
ALL_EXTERNAL_PRODS += DataFormatsParticleFlowCandidate
endif
ifeq ($(strip $(TrackPropagation/RungeKutta)),)
TrackPropagationRungeKutta := cmssw/TrackPropagation/RungeKutta
TrackPropagation/RungeKutta := TrackPropagationRungeKutta
TrackPropagationRungeKutta_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TrackPropagationRungeKutta_EX_USE := $(foreach d, cmssw  TrackingTools/TrajectoryState TrackingTools/GeomPropagators MagneticField/VolumeGeometry FWCore/MessageLogger FWCore/Utilities FWCore/Framework MagneticField/Engine,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TrackPropagationRungeKutta_EX_LIB   := TrackPropagationRungeKutta
ALL_EXTERNAL_PRODS += TrackPropagationRungeKutta
endif
ifeq ($(strip $(RecoMuon/TrackingTools)),)
RecoMuonTrackingTools := cmssw/RecoMuon/TrackingTools
RecoMuon/TrackingTools := RecoMuonTrackingTools
RecoMuonTrackingTools_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoMuonTrackingTools_EX_USE := $(foreach d, cmssw  DataFormats/BeamSpot DataFormats/Common DataFormats/DetId DataFormats/GeometrySurface DataFormats/GeometryVector DataFormats/Math DataFormats/TrackReco DataFormats/TrajectorySeed FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities Geometry/CommonDetUnit Geometry/Records MagneticField/Engine MagneticField/Records RecoMuon/DetLayers RecoMuon/Navigation RecoMuon/Records RecoMuon/TransientTrackingRecHit RecoVertex/KalmanVertexFit TrackingTools/DetLayers TrackingTools/GeomPropagators TrackingTools/KalmanUpdators TrackingTools/PatternTools TrackingTools/Records TrackingTools/TrackFitters TrackingTools/TrajectoryState TrackingTools/TransientTrack TrackingTools/TransientTrackingRecHit DataFormats/CSCRecHit DataFormats/DTRecHit TrackingTools/TrackRefitter roothistmatrix,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoMuonTrackingTools_EX_LIB   := RecoMuonTrackingTools
ALL_EXTERNAL_PRODS += RecoMuonTrackingTools
endif
ifeq ($(strip $(DataFormats/TauReco)),)
DataFormatsTauReco := cmssw/DataFormats/TauReco
DataFormats/TauReco := DataFormatsTauReco
DataFormatsTauReco_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsTauReco_EX_USE := $(foreach d, cmssw  FWCore/Common DataFormats/Common DataFormats/RecoCandidate DataFormats/Candidate DataFormats/Math DataFormats/TrackReco DataFormats/JetReco DataFormats/ParticleFlowCandidate rootrflx rootcore,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsTauReco_EX_LIB   := DataFormatsTauReco
ALL_EXTERNAL_PRODS += DataFormatsTauReco
endif
ifeq ($(strip $(Geometry/EcalCommonData)),)
GeometryEcalCommonData := cmssw/Geometry/EcalCommonData
Geometry/EcalCommonData := GeometryEcalCommonData
GeometryEcalCommonData_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeometryEcalCommonData_EX_USE := $(foreach d, cmssw  DetectorDescription/Core DetectorDescription/Algorithm DataFormats/EcalDetId Geometry/CaloGeometry,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryEcalCommonData_EX_LIB   := GeometryEcalCommonData
ALL_EXTERNAL_PRODS += GeometryEcalCommonData
endif
ifeq ($(strip $(MagneticField/Interpolation)),)
MagneticFieldInterpolation := cmssw/MagneticField/Interpolation
MagneticField/Interpolation := MagneticFieldInterpolation
MagneticFieldInterpolation_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
MagneticFieldInterpolation_EX_USE := $(foreach d, cmssw  DataFormats/GeometrySurface DataFormats/GeometryVector MagneticField/VolumeGeometry,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
MagneticFieldInterpolation_EX_LIB   := MagneticFieldInterpolation
ALL_EXTERNAL_PRODS += MagneticFieldInterpolation
endif
ifeq ($(strip $(FWCore/Sources)),)
FWCoreSources := cmssw/FWCore/Sources
FWCore/Sources := FWCoreSources
FWCoreSources_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCoreSources_EX_USE := $(foreach d, cmssw  DataFormats/Provenance FWCore/Catalog FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager FWCore/Utilities boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCoreSources_EX_LIB   := FWCoreSources
ALL_EXTERNAL_PRODS += FWCoreSources
endif
ifeq ($(strip $(DataFormats/V0Candidate)),)
DataFormatsV0Candidate := cmssw/DataFormats/V0Candidate
DataFormats/V0Candidate := DataFormatsV0Candidate
DataFormatsV0Candidate_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsV0Candidate_EX_USE := $(foreach d, cmssw  DataFormats/CaloRecHit DataFormats/Common DataFormats/Math DataFormats/Candidate DataFormats/VertexReco FWCore/Utilities rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsV0Candidate_EX_LIB   := DataFormatsV0Candidate
ALL_EXTERNAL_PRODS += DataFormatsV0Candidate
endif
ifeq ($(strip $(Alignment/ReferenceTrajectories)),)
AlignmentReferenceTrajectories := cmssw/Alignment/ReferenceTrajectories
Alignment/ReferenceTrajectories := AlignmentReferenceTrajectories
AlignmentReferenceTrajectories_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AlignmentReferenceTrajectories_EX_USE := $(foreach d, cmssw  Alignment/TwoBodyDecay DataFormats/CLHEP DataFormats/GeometrySurface DataFormats/GeometryVector DataFormats/TrackingRecHit DataFormats/TrajectoryState FWCore/MessageLogger FWCore/PluginManager Geometry/CommonDetUnit TrackingTools/AnalyticalJacobians TrackingTools/GeomPropagators TrackingTools/MaterialEffects TrackingTools/PatternTools TrackingTools/TrajectoryState TrackingTools/TrackFitters TrackingTools/TransientTrackingRecHit RecoTracker/TransientTrackingRecHit TrackPropagation/RungeKutta,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AlignmentReferenceTrajectories_EX_LIB   := AlignmentReferenceTrajectories
ALL_EXTERNAL_PRODS += AlignmentReferenceTrajectories
endif
ifeq ($(strip $(RecoTracker/TkSeedGenerator)),)
RecoTrackerTkSeedGenerator := cmssw/RecoTracker/TkSeedGenerator
RecoTracker/TkSeedGenerator := RecoTrackerTkSeedGenerator
RecoTrackerTkSeedGenerator_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoTrackerTkSeedGenerator_EX_USE := $(foreach d, cmssw  root FWCore/Framework FWCore/PluginManager DataFormats/Common FWCore/ParameterSet Geometry/Records Geometry/CommonDetUnit DataFormats/TrajectorySeed DataFormats/TrackerRecHit2D Geometry/CommonTopologies Geometry/TrackerGeometryBuilder DataFormats/DetId DataFormats/SiStripDetId TrackingTools/PatternTools MagneticField/Records MagneticField/Engine TrackingTools/KalmanUpdators TrackingTools/MaterialEffects TrackingTools/Records CommonTools/Utils rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoTrackerTkSeedGenerator_EX_LIB   := RecoTrackerTkSeedGenerator
ALL_EXTERNAL_PRODS += RecoTrackerTkSeedGenerator
endif
ifeq ($(strip $(FastSimulation/TrackerSetup)),)
FastSimulationTrackerSetup := cmssw/FastSimulation/TrackerSetup
FastSimulation/TrackerSetup := FastSimulationTrackerSetup
FastSimulationTrackerSetup_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FastSimulationTrackerSetup_EX_USE := $(foreach d, cmssw  DataFormats/GeometrySurface FWCore/Framework FWCore/ParameterSet FWCore/Utilities RecoTracker/Record boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FastSimulationTrackerSetup_EX_LIB   := FastSimulationTrackerSetup
ALL_EXTERNAL_PRODS += FastSimulationTrackerSetup
endif
ifeq ($(strip $(TrackingTools/TrajectoryParametrization)),)
TrackingToolsTrajectoryParametrization := cmssw/TrackingTools/TrajectoryParametrization
TrackingTools/TrajectoryParametrization := TrackingToolsTrajectoryParametrization
TrackingToolsTrajectoryParametrization_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TrackingToolsTrajectoryParametrization_EX_USE := $(foreach d, cmssw  boost rootmath FWCore/Utilities,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TrackingToolsTrajectoryParametrization_EX_LIB   := TrackingToolsTrajectoryParametrization
ALL_EXTERNAL_PRODS += TrackingToolsTrajectoryParametrization
endif
ifeq ($(strip $(SimTracker/Common)),)
SimTrackerCommon := cmssw/SimTracker/Common
SimTracker/Common := SimTrackerCommon
SimTrackerCommon_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimTrackerCommon_EX_USE := $(foreach d, cmssw  clhep vdt DataFormats/HepMCCandidate SimDataFormats/TrackingAnalysis SimDataFormats/TrackingHit SimDataFormats/CrossingFrame,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimTrackerCommon_EX_LIB   := SimTrackerCommon
ALL_EXTERNAL_PRODS += SimTrackerCommon
endif
ifeq ($(strip $(RecoTracker/TkNavigation)),)
RecoTrackerTkNavigation := cmssw/RecoTracker/TkNavigation
RecoTracker/TkNavigation := RecoTrackerTkNavigation
RecoTrackerTkNavigation_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoTrackerTkNavigation_EX_USE := $(foreach d, cmssw  TrackingTools/PatternTools Utilities/General TrackingTools/GeomPropagators TrackingTools/DetLayers DataFormats/TrackingRecHit DataFormats/DetId FWCore/PluginManager FWCore/ParameterSet,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoTrackerTkNavigation_EX_LIB   := RecoTrackerTkNavigation
ALL_EXTERNAL_PRODS += RecoTrackerTkNavigation
endif
ifeq ($(strip $(RecoPixelVertexing/PixelTriplets)),)
RecoPixelVertexingPixelTriplets := cmssw/RecoPixelVertexing/PixelTriplets
RecoPixelVertexing/PixelTriplets := RecoPixelVertexingPixelTriplets
RecoPixelVertexingPixelTriplets_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoPixelVertexingPixelTriplets_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/ParameterSet FWCore/PluginManager Geometry/Records Geometry/TrackerGeometryBuilder Geometry/CommonDetUnit Geometry/CommonTopologies RecoTracker/TkHitPairs MagneticField/Records MagneticField/Engine RecoTracker/TkSeedingLayers TrackingTools/TransientTrackingRecHit RecoTracker/TkSeedGenerator,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoPixelVertexingPixelTriplets_EX_LIB   := RecoPixelVertexingPixelTriplets
ALL_EXTERNAL_PRODS += RecoPixelVertexingPixelTriplets
endif
ifeq ($(strip $(L1Trigger/CSCTrackFinder)),)
L1TriggerCSCTrackFinder := cmssw/L1Trigger/CSCTrackFinder
L1Trigger/CSCTrackFinder := L1TriggerCSCTrackFinder
L1TriggerCSCTrackFinder_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
L1TriggerCSCTrackFinder_EX_USE := $(foreach d, cmssw  L1Trigger/CSCCommonTrigger L1Trigger/DTUtilities L1Trigger/DTTrackFinder Geometry/CSCGeometry Geometry/Records DataFormats/MuonDetId DataFormats/CSCDigi DataFormats/L1CSCTrackFinder DataFormats/L1DTTrackFinder DataFormats/L1GlobalMuonTrigger boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
L1TriggerCSCTrackFinder_EX_LIB   := L1TriggerCSCTrackFinder
ALL_EXTERNAL_PRODS += L1TriggerCSCTrackFinder
endif
ifeq ($(strip $(DataFormats/StdDictionaries)),)
DataFormatsStdDictionaries := cmssw/DataFormats/StdDictionaries
DataFormats/StdDictionaries := DataFormatsStdDictionaries
DataFormatsStdDictionaries_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsStdDictionaries_EX_USE := $(foreach d, cmssw  rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsStdDictionaries_EX_LIB   := DataFormatsStdDictionaries
ALL_EXTERNAL_PRODS += DataFormatsStdDictionaries
endif
ifeq ($(strip $(Alignment/CommonAlignment)),)
AlignmentCommonAlignment := cmssw/Alignment/CommonAlignment
Alignment/CommonAlignment := AlignmentCommonAlignment
AlignmentCommonAlignment_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AlignmentCommonAlignment_EX_USE := $(foreach d, cmssw  DataFormats/GeometrySurface DataFormats/GeometryVector DataFormats/TrackingRecHit DataFormats/CSCRecHit DataFormats/DTRecHit FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities Geometry/CommonDetUnit Geometry/CommonTopologies clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AlignmentCommonAlignment_EX_LIB   := AlignmentCommonAlignment
ALL_EXTERNAL_PRODS += AlignmentCommonAlignment
endif
ifeq ($(strip $(DQM/SiPixelCommon)),)
DQMSiPixelCommon := cmssw/DQM/SiPixelCommon
DQM/SiPixelCommon := DQMSiPixelCommon
DQMSiPixelCommon_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMSiPixelCommon_EX_USE := $(foreach d, cmssw  boost FWCore/Framework DQMServices/Core DataFormats/SiPixelDetId rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMSiPixelCommon_EX_LIB   := DQMSiPixelCommon
ALL_EXTERNAL_PRODS += DQMSiPixelCommon
endif
ifeq ($(strip $(GeneratorInterface/Herwig6Interface)),)
GeneratorInterfaceHerwig6Interface := cmssw/GeneratorInterface/Herwig6Interface
GeneratorInterface/Herwig6Interface := GeneratorInterfaceHerwig6Interface
GeneratorInterfaceHerwig6Interface_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeneratorInterfaceHerwig6Interface_EX_USE := $(foreach d, cmssw  SimDataFormats/GeneratorProducts GeneratorInterface/Core GeneratorInterface/ExternalDecays boost clhep herwig fastjet jimmy f77compiler,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeneratorInterfaceHerwig6Interface_EX_LIB   := GeneratorInterfaceHerwig6Interface
ALL_EXTERNAL_PRODS += GeneratorInterfaceHerwig6Interface
endif
ifeq ($(strip $(SimGeneral/TrackingAnalysis)),)
SimGeneralTrackingAnalysis := cmssw/SimGeneral/TrackingAnalysis
SimGeneral/TrackingAnalysis := SimGeneralTrackingAnalysis
SimGeneralTrackingAnalysis_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimGeneralTrackingAnalysis_EX_USE := $(foreach d, cmssw  clhep CalibFormats/SiStripObjects CalibTracker/Records CalibTracker/SiPixelESProducers CondFormats/CSCObjects CondFormats/SiPixelObjects DataFormats/DetId DataFormats/SiStripDetId DataFormats/SiPixelDetId FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet SimDataFormats/GeneratorProducts SimDataFormats/Track SimDataFormats/TrackingAnalysis SimDataFormats/Vertex SimDataFormats/TrackingHit SimTracker/Common,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimGeneralTrackingAnalysis_EX_LIB   := SimGeneralTrackingAnalysis
ALL_EXTERNAL_PRODS += SimGeneralTrackingAnalysis
endif
ifeq ($(strip $(RecoLocalTracker/SiPixelRecHits)),)
RecoLocalTrackerSiPixelRecHits := cmssw/RecoLocalTracker/SiPixelRecHits
RecoLocalTracker/SiPixelRecHits := RecoLocalTrackerSiPixelRecHits
RecoLocalTrackerSiPixelRecHits_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoLocalTrackerSiPixelRecHits_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/ParameterSet CondFormats/SiPixelObjects CalibTracker/SiPixelESProducers DataFormats/SiPixelCluster DataFormats/TrackerRecHit2D TrackingTools/TrajectoryState boost vdt,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoLocalTrackerSiPixelRecHits_EX_LIB   := RecoLocalTrackerSiPixelRecHits
ALL_EXTERNAL_PRODS += RecoLocalTrackerSiPixelRecHits
endif
ifeq ($(strip $(RecoCaloTools/MetaCollections)),)
RecoCaloToolsMetaCollections := cmssw/RecoCaloTools/MetaCollections
RecoCaloTools/MetaCollections := RecoCaloToolsMetaCollections
RecoCaloToolsMetaCollections_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoCaloToolsMetaCollections_EX_USE := $(foreach d, cmssw  DataFormats/HcalDetId,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoCaloToolsMetaCollections_EX_LIB   := RecoCaloToolsMetaCollections
ALL_EXTERNAL_PRODS += RecoCaloToolsMetaCollections
endif
ifeq ($(strip $(DQMServices/Components)),)
DQMServicesComponents := cmssw/DQMServices/Components
DQMServices/Components := DQMServicesComponents
DQMServicesComponents_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMServicesComponents_EX_USE := $(foreach d, cmssw  CondFormats/DataRecord CondFormats/RunInfo DataFormats/Scalers DataFormats/L1GlobalTrigger DQMServices/ClientConfig DQMServices/Core FWCore/Catalog FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Version HLTrigger/HLTcore roothistmatrix,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMServicesComponents_EX_LIB   := DQMServicesComponents
ALL_EXTERNAL_PRODS += DQMServicesComponents
endif
ifeq ($(strip $(SimCalorimetry/HcalTrigPrimAlgos)),)
SimCalorimetryHcalTrigPrimAlgos := cmssw/SimCalorimetry/HcalTrigPrimAlgos
SimCalorimetry/HcalTrigPrimAlgos := SimCalorimetryHcalTrigPrimAlgos
SimCalorimetryHcalTrigPrimAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimCalorimetryHcalTrigPrimAlgos_EX_USE := $(foreach d, cmssw  CondFormats/HcalObjects CalibCalorimetry/HcalAlgos CalibCalorimetry/HcalTPGAlgos CalibFormats/HcalObjects DataFormats/HcalDigi CalibFormats/CaloTPG Geometry/HcalTowerAlgo EventFilter/HcalRawToDigi clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimCalorimetryHcalTrigPrimAlgos_EX_LIB   := SimCalorimetryHcalTrigPrimAlgos
ALL_EXTERNAL_PRODS += SimCalorimetryHcalTrigPrimAlgos
endif
ifeq ($(strip $(FWCore/Utilities)),)
FWCoreUtilities := cmssw/FWCore/Utilities
FWCore/Utilities := FWCoreUtilities
FWCoreUtilities_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCoreUtilities_EX_USE := $(foreach d, cmssw  boost boost_filesystem boost_regex rootcintex rootcore rootrflx libuuid,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCoreUtilities_EX_LIB   := FWCoreUtilities
ALL_EXTERNAL_PRODS += FWCoreUtilities
endif
ifeq ($(strip $(FWCore/Catalog)),)
FWCoreCatalog := cmssw/FWCore/Catalog
FWCore/Catalog := FWCoreCatalog
FWCoreCatalog_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCoreCatalog_EX_USE := $(foreach d, cmssw  FWCore/ServiceRegistry FWCore/Utilities FWCore/Concurrency xerces-c boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCoreCatalog_EX_LIB   := FWCoreCatalog
ALL_EXTERNAL_PRODS += FWCoreCatalog
endif
ifeq ($(strip $(PhysicsTools/Utilities)),)
PhysicsToolsUtilities := cmssw/PhysicsTools/Utilities
PhysicsTools/Utilities := PhysicsToolsUtilities
PhysicsToolsUtilities_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
PhysicsToolsUtilities_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/Provenance FWCore/Utilities SimDataFormats/PileupSummaryInfo rootrflx roofit rootcore root boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsUtilities_EX_LIB   := PhysicsToolsUtilities
ALL_EXTERNAL_PRODS += PhysicsToolsUtilities
endif
ifeq ($(strip $(FastSimDataFormats/L1GlobalMuonTrigger)),)
FastSimDataFormatsL1GlobalMuonTrigger := cmssw/FastSimDataFormats/L1GlobalMuonTrigger
FastSimDataFormats/L1GlobalMuonTrigger := FastSimDataFormatsL1GlobalMuonTrigger
FastSimDataFormatsL1GlobalMuonTrigger_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FastSimDataFormatsL1GlobalMuonTrigger_EX_USE := $(foreach d, cmssw  DataFormats/L1GlobalMuonTrigger DataFormats/Math SimDataFormats/Track,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FastSimDataFormatsL1GlobalMuonTrigger_EX_LIB   := FastSimDataFormatsL1GlobalMuonTrigger
ALL_EXTERNAL_PRODS += FastSimDataFormatsL1GlobalMuonTrigger
endif
ifeq ($(strip $(CalibCalorimetry/HcalTPGAlgos)),)
CalibCalorimetryHcalTPGAlgos := cmssw/CalibCalorimetry/HcalTPGAlgos
CalibCalorimetry/HcalTPGAlgos := CalibCalorimetryHcalTPGAlgos
CalibCalorimetryHcalTPGAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibCalorimetryHcalTPGAlgos_EX_USE := $(foreach d, cmssw  DataFormats/HcalDigi CalibFormats/HcalObjects Geometry/HcalTowerAlgo CalibCalorimetry/HcalAlgos DataFormats/DetId DataFormats/HcalDetId FWCore/Concurrency CondFormats/HcalObjects CalibFormats/CaloObjects CondFormats/DataRecord xerces-c,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibCalorimetryHcalTPGAlgos_EX_LIB   := CalibCalorimetryHcalTPGAlgos
ALL_EXTERNAL_PRODS += CalibCalorimetryHcalTPGAlgos
endif
ifeq ($(strip $(Geometry/ForwardGeometry)),)
GeometryForwardGeometry := cmssw/Geometry/ForwardGeometry
Geometry/ForwardGeometry := GeometryForwardGeometry
GeometryForwardGeometry_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeometryForwardGeometry_EX_USE := $(foreach d, cmssw  Geometry/CaloGeometry Geometry/CaloTopology DataFormats/HcalDetId DataFormats/CaloTowers FWCore/MessageLogger clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryForwardGeometry_EX_LIB   := GeometryForwardGeometry
ALL_EXTERNAL_PRODS += GeometryForwardGeometry
endif
ifeq ($(strip $(SimDataFormats/CrossingFrame)),)
SimDataFormatsCrossingFrame := cmssw/SimDataFormats/CrossingFrame
SimDataFormats/CrossingFrame := SimDataFormatsCrossingFrame
SimDataFormatsCrossingFrame_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimDataFormatsCrossingFrame_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/HcalDetId DataFormats/Provenance FWCore/MessageLogger FWCore/Utilities SimDataFormats/CaloHit SimDataFormats/EncodedEventId SimDataFormats/Track SimDataFormats/TrackingHit SimDataFormats/Vertex SimDataFormats/GeneratorProducts rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimDataFormatsCrossingFrame_EX_LIB   := SimDataFormatsCrossingFrame
ALL_EXTERNAL_PRODS += SimDataFormatsCrossingFrame
endif
ifeq ($(strip $(PhysicsTools/FWLite)),)
PhysicsToolsFWLite := cmssw/PhysicsTools/FWLite
PhysicsTools/FWLite := PhysicsToolsFWLite
PhysicsToolsFWLite_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
PhysicsToolsFWLite_EX_USE := $(foreach d, cmssw  boost rootcore rootcintex roothistmatrix CommonTools/Utils DataFormats/FWLite DataFormats/MuonReco,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsFWLite_EX_LIB   := PhysicsToolsFWLite
ALL_EXTERNAL_PRODS += PhysicsToolsFWLite
endif
ifeq ($(strip $(Alignment/OfflineValidation)),)
AlignmentOfflineValidation := cmssw/Alignment/OfflineValidation
Alignment/OfflineValidation := AlignmentOfflineValidation
AlignmentOfflineValidation_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AlignmentOfflineValidation_EX_USE := $(foreach d, cmssw  DataFormats/TrackReco FWCore/PluginManager FWCore/Framework FWCore/Utilities FWCore/ParameterSet FWCore/ServiceRegistry Geometry/TrackerGeometryBuilder TrackingTools/TrackFitters MagneticField/Engine rootrflx clhep rootmath,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AlignmentOfflineValidation_EX_LIB   := AlignmentOfflineValidation
ALL_EXTERNAL_PRODS += AlignmentOfflineValidation
endif
ifeq ($(strip $(Geometry/CSCGeometry)),)
GeometryCSCGeometry := cmssw/Geometry/CSCGeometry
Geometry/CSCGeometry := GeometryCSCGeometry
GeometryCSCGeometry_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeometryCSCGeometry_EX_USE := $(foreach d, cmssw  DataFormats/GeometrySurface DataFormats/GeometryVector DataFormats/MuonDetId FWCore/MessageLogger FWCore/Utilities Geometry/CommonDetUnit Geometry/CommonTopologies clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryCSCGeometry_EX_LIB   := GeometryCSCGeometry
ALL_EXTERNAL_PRODS += GeometryCSCGeometry
endif
ifeq ($(strip $(PerfTools/Callgrind)),)
PerfToolsCallgrind := cmssw/PerfTools/Callgrind
PerfTools/Callgrind := PerfToolsCallgrind
PerfToolsCallgrind_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
PerfToolsCallgrind_EX_USE := $(foreach d, cmssw  FWCore/ServiceRegistry FWCore/MessageLogger FWCore/ParameterSet valgrind,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PerfToolsCallgrind_EX_LIB   := PerfToolsCallgrind
ALL_EXTERNAL_PRODS += PerfToolsCallgrind
endif
ifeq ($(strip $(Alignment/TrackerAlignment)),)
AlignmentTrackerAlignment := cmssw/Alignment/TrackerAlignment
Alignment/TrackerAlignment := AlignmentTrackerAlignment
AlignmentTrackerAlignment_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AlignmentTrackerAlignment_EX_USE := $(foreach d, cmssw  Alignment/CommonAlignment CondCore/DBOutputService DataFormats/GeometrySurface DataFormats/SiPixelDetId DataFormats/SiStripDetId DataFormats/TrackingRecHit FWCore/Framework FWCore/MessageLogger FWCore/ServiceRegistry FWCore/Utilities Geometry/CommonDetUnit Geometry/Records Geometry/TrackerGeometryBuilder,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AlignmentTrackerAlignment_EX_LIB   := AlignmentTrackerAlignment
ALL_EXTERNAL_PRODS += AlignmentTrackerAlignment
endif
ifeq ($(strip $(RecoEgamma/EgammaPhotonAlgos)),)
RecoEgammaEgammaPhotonAlgos := cmssw/RecoEgamma/EgammaPhotonAlgos
RecoEgamma/EgammaPhotonAlgos := RecoEgammaEgammaPhotonAlgos
RecoEgammaEgammaPhotonAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoEgammaEgammaPhotonAlgos_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/ParameterSet Geometry/CaloGeometry Geometry/CaloTopology DataFormats/CaloRecHit DataFormats/DetId RecoEgamma/EgammaTools DataFormats/Math DataFormats/EgammaCandidates DataFormats/Common DataFormats/TrajectorySeed TrackingTools/MaterialEffects TrackingTools/GeomPropagators TrackingTools/KalmanUpdators TrackingTools/TrajectoryState TrackingTools/PatternTools TrackingTools/DetLayers TrackingTools/TransientTrack RecoTracker/TkDetLayers RecoTracker/TkNavigation RecoTracker/TkTrackingRegions RecoTracker/CkfPattern RecoTracker/TkSeedGenerator RecoVertex/VertexPrimitives RecoVertex/KalmanVertexFit RecoVertex/KinematicFitPrimitives RecoVertex/KinematicFit MagneticField/Engine Utilities/General clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoEgammaEgammaPhotonAlgos_EX_LIB   := RecoEgammaEgammaPhotonAlgos
ALL_EXTERNAL_PRODS += RecoEgammaEgammaPhotonAlgos
endif
ifeq ($(strip $(SimDataFormats/Vertex)),)
SimDataFormatsVertex := cmssw/SimDataFormats/Vertex
SimDataFormats/Vertex := SimDataFormatsVertex
SimDataFormatsVertex_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimDataFormatsVertex_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/Math SimDataFormats/EncodedEventId rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimDataFormatsVertex_EX_LIB   := SimDataFormatsVertex
ALL_EXTERNAL_PRODS += SimDataFormatsVertex
endif
ifeq ($(strip $(DQM/TrackerCommon)),)
DQMTrackerCommon := cmssw/DQM/TrackerCommon
DQM/TrackerCommon := DQMTrackerCommon
DQMTrackerCommon_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMTrackerCommon_EX_USE := $(foreach d, cmssw  DQMServices/Core FWCore/Framework CondFormats/DataRecord DataFormats/Common DataFormats/Scalers DataFormats/L1GlobalTrigger L1Trigger/GlobalTriggerAnalyzer HLTrigger/HLTcore rootgraphics,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMTrackerCommon_EX_LIB   := DQMTrackerCommon
ALL_EXTERNAL_PRODS += DQMTrackerCommon
endif
ifeq ($(strip $(DataFormats/L1GlobalCaloTrigger)),)
DataFormatsL1GlobalCaloTrigger := cmssw/DataFormats/L1GlobalCaloTrigger
DataFormats/L1GlobalCaloTrigger := DataFormatsL1GlobalCaloTrigger
DataFormatsL1GlobalCaloTrigger_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsL1GlobalCaloTrigger_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/L1CaloTrigger boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsL1GlobalCaloTrigger_EX_LIB   := DataFormatsL1GlobalCaloTrigger
ALL_EXTERNAL_PRODS += DataFormatsL1GlobalCaloTrigger
endif
ifeq ($(strip $(FastSimDataFormats/NuclearInteractions)),)
FastSimDataFormatsNuclearInteractions := cmssw/FastSimDataFormats/NuclearInteractions
FastSimDataFormats/NuclearInteractions := FastSimDataFormatsNuclearInteractions
FastSimDataFormatsNuclearInteractions_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FastSimDataFormatsNuclearInteractions_EX_USE := $(foreach d, cmssw  rootrflx rootcore DataFormats/Common SimDataFormats/Vertex,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FastSimDataFormatsNuclearInteractions_EX_LIB   := FastSimDataFormatsNuclearInteractions
ALL_EXTERNAL_PRODS += FastSimDataFormatsNuclearInteractions
endif
ifeq ($(strip $(CalibCalorimetry/CaloTPG)),)
CalibCalorimetryCaloTPG := cmssw/CalibCalorimetry/CaloTPG
CalibCalorimetry/CaloTPG := CalibCalorimetryCaloTPG
CalibCalorimetryCaloTPG_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibCalorimetryCaloTPG_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet CalibFormats/CaloTPG CalibFormats/HcalObjects Geometry/CaloTopology Geometry/HcalTowerAlgo,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibCalorimetryCaloTPG_EX_LIB   := CalibCalorimetryCaloTPG
ALL_EXTERNAL_PRODS += CalibCalorimetryCaloTPG
endif
ifeq ($(strip $(CondFormats/EgammaObjects)),)
CondFormatsEgammaObjects := cmssw/CondFormats/EgammaObjects
CondFormats/EgammaObjects := CondFormatsEgammaObjects
CondFormatsEgammaObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondFormatsEgammaObjects_EX_USE := $(foreach d, cmssw  FWCore/Utilities CondFormats/Common CondFormats/PhysicsToolsObjects rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsEgammaObjects_EX_LIB   := CondFormatsEgammaObjects
ALL_EXTERNAL_PRODS += CondFormatsEgammaObjects
endif
ifeq ($(strip $(CalibFormats/CaloObjects)),)
CalibFormatsCaloObjects := cmssw/CalibFormats/CaloObjects
CalibFormats/CaloObjects := CalibFormatsCaloObjects
CalibFormatsCaloObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibFormatsCaloObjects_EX_USE := $(foreach d, cmssw  DataFormats/DetId boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibFormatsCaloObjects_EX_LIB   := CalibFormatsCaloObjects
ALL_EXTERNAL_PRODS += CalibFormatsCaloObjects
endif
ifeq ($(strip $(RecoLocalTracker/SiStripRecHitConverter)),)
RecoLocalTrackerSiStripRecHitConverter := cmssw/RecoLocalTracker/SiStripRecHitConverter
RecoLocalTracker/SiStripRecHitConverter := RecoLocalTrackerSiStripRecHitConverter
RecoLocalTrackerSiStripRecHitConverter_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoLocalTrackerSiStripRecHitConverter_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/ParameterSet DataFormats/Common DataFormats/TrackerRecHit2D DataFormats/SiStripCluster DataFormats/SiStripDetId DataFormats/GeometrySurface RecoLocalTracker/Records RecoLocalTracker/ClusterParameterEstimator Geometry/CommonDetUnit Geometry/Records Geometry/TrackerGeometryBuilder MagneticField/Records CondFormats/SiStripObjects CalibFormats/SiStripObjects CalibTracker/Records TrackingTools/TransientTrackingRecHit vdt,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoLocalTrackerSiStripRecHitConverter_EX_LIB   := RecoLocalTrackerSiStripRecHitConverter
ALL_EXTERNAL_PRODS += RecoLocalTrackerSiStripRecHitConverter
endif
ifeq ($(strip $(SimDataFormats/CaloTest)),)
SimDataFormatsCaloTest := cmssw/SimDataFormats/CaloTest
SimDataFormats/CaloTest := SimDataFormatsCaloTest
SimDataFormatsCaloTest_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimDataFormatsCaloTest_EX_USE := $(foreach d, cmssw  DataFormats/Common FWCore/MessageLogger SimDataFormats/CaloHit boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimDataFormatsCaloTest_EX_LIB   := SimDataFormatsCaloTest
ALL_EXTERNAL_PRODS += SimDataFormatsCaloTest
endif
ifeq ($(strip $(MagneticField/VolumeBasedEngine)),)
MagneticFieldVolumeBasedEngine := cmssw/MagneticField/VolumeBasedEngine
MagneticField/VolumeBasedEngine := MagneticFieldVolumeBasedEngine
MagneticFieldVolumeBasedEngine_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
MagneticFieldVolumeBasedEngine_EX_USE := $(foreach d, cmssw  DataFormats/GeometrySurface DataFormats/GeometryVector FWCore/ParameterSet MagneticField/Engine MagneticField/Layers MagneticField/VolumeGeometry,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
MagneticFieldVolumeBasedEngine_EX_LIB   := MagneticFieldVolumeBasedEngine
ALL_EXTERNAL_PRODS += MagneticFieldVolumeBasedEngine
endif
ifeq ($(strip $(Geometry/RPCGeometryBuilder)),)
GeometryRPCGeometryBuilder := cmssw/Geometry/RPCGeometryBuilder
Geometry/RPCGeometryBuilder := GeometryRPCGeometryBuilder
GeometryRPCGeometryBuilder_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeometryRPCGeometryBuilder_EX_USE := $(foreach d, cmssw  Geometry/MuonNumbering Geometry/RPCGeometry DetectorDescription/Core,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryRPCGeometryBuilder_EX_LIB   := GeometryRPCGeometryBuilder
ALL_EXTERNAL_PRODS += GeometryRPCGeometryBuilder
endif
ifeq ($(strip $(Fireworks/Muons)),)
FireworksMuons := cmssw/Fireworks/Muons
Fireworks/Muons := FireworksMuons
FireworksMuons_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FireworksMuons_EX_USE := $(foreach d, cmssw  DataFormats/MuonDetId DataFormats/MuonReco DataFormats/TrackReco Fireworks/Candidates Fireworks/Core Fireworks/Tracks,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FireworksMuons_EX_LIB   := FireworksMuons
ALL_EXTERNAL_PRODS += FireworksMuons
endif
ifeq ($(strip $(DataFormats/TrackingRecHit)),)
DataFormatsTrackingRecHit := cmssw/DataFormats/TrackingRecHit
DataFormats/TrackingRecHit := DataFormatsTrackingRecHit
DataFormatsTrackingRecHit_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsTrackingRecHit_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/GeometrySurface FWCore/Utilities clhep rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsTrackingRecHit_EX_LIB   := DataFormatsTrackingRecHit
ALL_EXTERNAL_PRODS += DataFormatsTrackingRecHit
endif
ifeq ($(strip $(SimTracker/TrackAssociation)),)
SimTrackerTrackAssociation := cmssw/SimTracker/TrackAssociation
SimTracker/TrackAssociation := SimTrackerTrackAssociation
SimTrackerTrackAssociation_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimTrackerTrackAssociation_EX_USE := $(foreach d, cmssw  MagneticField/Engine FWCore/Framework FWCore/ParameterSet DataFormats/Common SimDataFormats/TrackingHit SimDataFormats/TrackerDigiSimLink SimTracker/TrackerHitAssociation SimDataFormats/Track DataFormats/TrackingRecHit DataFormats/TrackReco TrackingTools/GeomPropagators TrackingTools/PatternTools SimDataFormats/TrackingAnalysis DataFormats/RecoCandidate Geometry/Records Geometry/TrackerGeometryBuilder MagneticField/Records DataFormats/HepMCCandidate DataFormats/TrackerCommon Geometry/TrackerNumberingBuilder clhep boost root rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimTrackerTrackAssociation_EX_LIB   := SimTrackerTrackAssociation
ALL_EXTERNAL_PRODS += SimTrackerTrackAssociation
endif
ifeq ($(strip $(SimG4CMS/FP420)),)
SimG4CMSFP420 := cmssw/SimG4CMS/FP420
SimG4CMS/FP420 := SimG4CMSFP420
SimG4CMSFP420_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CMSFP420_EX_USE := $(foreach d, cmssw  FWCore/PluginManager SimG4Core/Watcher SimG4Core/SensitiveDetector SimG4Core/Notification SimG4Core/Application SimG4CMS/Calo SimDataFormats/SimHitMaker DataFormats/GeometryVector SimDataFormats/CaloHit DetectorDescription/Core FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger SimGeneral/HepPDTRecord boost geant4core root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CMSFP420_EX_LIB   := SimG4CMSFP420
ALL_EXTERNAL_PRODS += SimG4CMSFP420
endif
ifeq ($(strip $(RecoEgamma/EgammaHLTAlgos)),)
RecoEgammaEgammaHLTAlgos := cmssw/RecoEgamma/EgammaHLTAlgos
RecoEgamma/EgammaHLTAlgos := RecoEgammaEgammaHLTAlgos
RecoEgammaEgammaHLTAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoEgammaEgammaHLTAlgos_EX_USE := $(foreach d, cmssw  clhep MagneticField/Engine DataFormats/DetId DataFormats/TrackerRecHit2D DataFormats/TrackingRecHit DataFormats/EgammaReco DataFormats/EgammaCandidates Geometry/CommonDetUnit Geometry/TrackerGeometryBuilder RecoTracker/MeasurementDet RecoTracker/TkSeedGenerator RecoTracker/TkDetLayers RecoTracker/TkNavigation RecoTracker/CkfPattern TrackingTools/DetLayers RecoTracker/TrackProducer Geometry/CaloGeometry CondFormats/HcalObjects RecoLocalCalo/HcalRecAlgos,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoEgammaEgammaHLTAlgos_EX_LIB   := RecoEgammaEgammaHLTAlgos
ALL_EXTERNAL_PRODS += RecoEgammaEgammaHLTAlgos
endif
ifeq ($(strip $(PhysicsTools/RecoUtils)),)
PhysicsToolsRecoUtils := cmssw/PhysicsTools/RecoUtils
PhysicsTools/RecoUtils := PhysicsToolsRecoUtils
PhysicsToolsRecoUtils_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
PhysicsToolsRecoUtils_EX_USE := $(foreach d, cmssw  RecoVertex/VertexPrimitives RecoVertex/KinematicFit TrackingTools/TransientTrack MagneticField/Records DataFormats/RecoCandidate heppdt PhysicsTools/KinFitter FWCore/ParameterSet boost RecoTracker/DebugTools DataFormats/VertexReco,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsRecoUtils_EX_LIB   := PhysicsToolsRecoUtils
ALL_EXTERNAL_PRODS += PhysicsToolsRecoUtils
endif
ifeq ($(strip $(DataFormats/TestObjects)),)
DataFormatsTestObjects := cmssw/DataFormats/TestObjects
DataFormats/TestObjects := DataFormatsTestObjects
DataFormatsTestObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsTestObjects_EX_USE := $(foreach d, cmssw  DataFormats/Common,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsTestObjects_EX_LIB   := DataFormatsTestObjects
ALL_EXTERNAL_PRODS += DataFormatsTestObjects
endif
ifeq ($(strip $(TrackingTools/TrajectoryFiltering)),)
TrackingToolsTrajectoryFiltering := cmssw/TrackingTools/TrajectoryFiltering
TrackingTools/TrajectoryFiltering := TrackingToolsTrajectoryFiltering
TrackingToolsTrajectoryFiltering_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TrackingToolsTrajectoryFiltering_EX_USE := $(foreach d, cmssw  FWCore/MessageLogger FWCore/PluginManager TrackingTools/PatternTools TrackingTools/TrajectoryParametrization TrackingTools/TrajectoryState,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TrackingToolsTrajectoryFiltering_EX_LIB   := TrackingToolsTrajectoryFiltering
ALL_EXTERNAL_PRODS += TrackingToolsTrajectoryFiltering
endif
ifeq ($(strip $(RecoJets/FFTJetAlgorithms)),)
RecoJetsFFTJetAlgorithms := cmssw/RecoJets/FFTJetAlgorithms
RecoJets/FFTJetAlgorithms := RecoJetsFFTJetAlgorithms
RecoJetsFFTJetAlgorithms_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoJetsFFTJetAlgorithms_EX_USE := $(foreach d, cmssw  DataFormats/JetReco DataFormats/Common rootrflx fftjet fftw3,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoJetsFFTJetAlgorithms_EX_LIB   := RecoJetsFFTJetAlgorithms
ALL_EXTERNAL_PRODS += RecoJetsFFTJetAlgorithms
endif
ifeq ($(strip $(TrackingTools/TrackFitters)),)
TrackingToolsTrackFitters := cmssw/TrackingTools/TrackFitters
TrackingTools/TrackFitters := TrackingToolsTrackFitters
TrackingToolsTrackFitters_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TrackingToolsTrackFitters_EX_USE := $(foreach d, cmssw  boost clhep TrackingTools/PatternTools TrackingTools/TransientTrackingRecHit TrackingTools/RecoGeometry TrackingTools/GeomPropagators FWCore/MessageLogger FWCore/Utilities FWCore/Framework TrackingTools/Records DataFormats/DetId DataFormats/SiStripDetId,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TrackingToolsTrackFitters_EX_LIB   := TrackingToolsTrackFitters
ALL_EXTERNAL_PRODS += TrackingToolsTrackFitters
endif
ifeq ($(strip $(FWCore/PluginManager)),)
FWCorePluginManager := cmssw/FWCore/PluginManager
FWCore/PluginManager := FWCorePluginManager
FWCorePluginManager_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCorePluginManager_EX_USE := $(foreach d, cmssw  boost tbb boost_filesystem FWCore/Utilities,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCorePluginManager_EX_LIB   := FWCorePluginManager
ALL_EXTERNAL_PRODS += FWCorePluginManager
endif
ifeq ($(strip $(DataFormats/GEMRecHit)),)
DataFormatsGEMRecHit := cmssw/DataFormats/GEMRecHit
DataFormats/GEMRecHit := DataFormatsGEMRecHit
DataFormatsGEMRecHit_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsGEMRecHit_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/MuonDetId DataFormats/TrackingRecHit rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsGEMRecHit_EX_LIB   := DataFormatsGEMRecHit
ALL_EXTERNAL_PRODS += DataFormatsGEMRecHit
endif
ifeq ($(strip $(DQMOffline/PFTau)),)
DQMOfflinePFTau := cmssw/DQMOffline/PFTau
DQMOffline/PFTau := DQMOfflinePFTau
DQMOfflinePFTau_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMOfflinePFTau_EX_USE := $(foreach d, cmssw  DQMServices/Core DataFormats/Candidate DataFormats/Common DataFormats/ParticleFlowCandidate DataFormats/TauReco DataFormats/METReco DataFormats/Math FWCore/Utilities SimDataFormats/GeneratorProducts,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMOfflinePFTau_EX_LIB   := DQMOfflinePFTau
ALL_EXTERNAL_PRODS += DQMOfflinePFTau
endif
ifeq ($(strip $(TrackingTools/TransientTrack)),)
TrackingToolsTransientTrack := cmssw/TrackingTools/TransientTrack
TrackingTools/TransientTrack := TrackingToolsTransientTrack
TrackingToolsTransientTrack_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TrackingToolsTransientTrack_EX_USE := $(foreach d, cmssw  DataFormats/BeamSpot DataFormats/Common DataFormats/GeometrySurface DataFormats/GsfTrackReco DataFormats/TrackReco DataFormats/TrackingRecHit FWCore/Framework FWCore/MessageLogger Geometry/CommonDetUnit Geometry/Records TrackingTools/GeomPropagators TrackingTools/GsfTools TrackingTools/PatternTools TrackingTools/TrajectoryState,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TrackingToolsTransientTrack_EX_LIB   := TrackingToolsTransientTrack
ALL_EXTERNAL_PRODS += TrackingToolsTransientTrack
endif
ifeq ($(strip $(CondFormats/Alignment)),)
CondFormatsAlignment := cmssw/CondFormats/Alignment
CondFormats/Alignment := CondFormatsAlignment
CondFormatsAlignment_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondFormatsAlignment_EX_USE := $(foreach d, cmssw  CondFormats/Common DataFormats/CLHEP DataFormats/Math boost clhep rootrflx DataFormats/DetId FWCore/Utilities,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsAlignment_EX_LIB   := CondFormatsAlignment
ALL_EXTERNAL_PRODS += CondFormatsAlignment
endif
ifeq ($(strip $(EventFilter/RPCRawToDigi)),)
EventFilterRPCRawToDigi := cmssw/EventFilter/RPCRawToDigi
EventFilter/RPCRawToDigi := EventFilterRPCRawToDigi
EventFilterRPCRawToDigi_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
EventFilterRPCRawToDigi_EX_USE := $(foreach d, cmssw  FWCore/Framework DataFormats/FEDRawData FWCore/PluginManager FWCore/ParameterSet DataFormats/RPCDigi CondFormats/DataRecord CondFormats/RPCObjects FWCore/MessageLogger rootrflx boost root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
EventFilterRPCRawToDigi_EX_LIB   := EventFilterRPCRawToDigi
ALL_EXTERNAL_PRODS += EventFilterRPCRawToDigi
endif
ifeq ($(strip $(Geometry/TrackingGeometryAligner)),)
src_Geometry_TrackingGeometryAligner := cmssw/Geometry/TrackingGeometryAligner
Geometry/TrackingGeometryAligner  := src_Geometry_TrackingGeometryAligner
src_Geometry_TrackingGeometryAligner_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
src_Geometry_TrackingGeometryAligner_EX_USE := $(foreach d, cmssw,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_Geometry_TrackingGeometryAligner
endif

ifeq ($(strip $(CondTools/Ecal)),)
CondToolsEcal := cmssw/CondTools/Ecal
CondTools/Ecal := CondToolsEcal
CondToolsEcal_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondToolsEcal_EX_USE := $(foreach d, cmssw  CondCore/DBCommon CondCore/DBOutputService CondCore/PopCon CondFormats/DataRecord CondFormats/EcalObjects CondFormats/ESObjects DataFormats/Common DataFormats/EcalDetId DataFormats/Provenance FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager FWCore/ServiceRegistry FWCore/Concurrency OnlineDB/EcalCondDB OnlineDB/Oracle SimCalorimetry/EcalSelectiveReadoutProducers Geometry/EcalMapping root rootcore rootphysics rootgraphics boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondToolsEcal_EX_LIB   := CondToolsEcal
ALL_EXTERNAL_PRODS += CondToolsEcal
endif
ifeq ($(strip $(CondFormats/SiPixelObjects)),)
CondFormatsSiPixelObjects := cmssw/CondFormats/SiPixelObjects
CondFormats/SiPixelObjects := CondFormatsSiPixelObjects
CondFormatsSiPixelObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondFormatsSiPixelObjects_EX_USE := $(foreach d, cmssw  DataFormats/DetId DataFormats/SiPixelDetId CalibFormats/SiPixelObjects FWCore/Utilities DataFormats/FEDRawData DataFormats/SiPixelDigi CondFormats/DataRecord CondFormats/SiStripObjects root Geometry/TrackerGeometryBuilder boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsSiPixelObjects_EX_LIB   := CondFormatsSiPixelObjects
ALL_EXTERNAL_PRODS += CondFormatsSiPixelObjects
endif
ifeq ($(strip $(DataFormats/FEDRawData)),)
DataFormatsFEDRawData := cmssw/DataFormats/FEDRawData
DataFormats/FEDRawData := DataFormatsFEDRawData
DataFormatsFEDRawData_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsFEDRawData_EX_USE := $(foreach d, cmssw  DataFormats/Common FWCore/Utilities rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsFEDRawData_EX_LIB   := DataFormatsFEDRawData
ALL_EXTERNAL_PRODS += DataFormatsFEDRawData
endif
ifeq ($(strip $(CondFormats/RPCObjects)),)
CondFormatsRPCObjects := cmssw/CondFormats/RPCObjects
CondFormats/RPCObjects := CondFormatsRPCObjects
CondFormatsRPCObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondFormatsRPCObjects_EX_USE := $(foreach d, cmssw  DataFormats/DetId DataFormats/MuonDetId FWCore/MessageLogger FWCore/Utilities boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsRPCObjects_EX_LIB   := CondFormatsRPCObjects
ALL_EXTERNAL_PRODS += CondFormatsRPCObjects
endif
ifeq ($(strip $(TrackingTools/TransientTrackingRecHit)),)
TrackingToolsTransientTrackingRecHit := cmssw/TrackingTools/TransientTrackingRecHit
TrackingTools/TransientTrackingRecHit := TrackingToolsTransientTrackingRecHit
TrackingToolsTransientTrackingRecHit_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TrackingToolsTransientTrackingRecHit_EX_USE := $(foreach d, cmssw  boost clhep FWCore/Utilities FWCore/Framework FWCore/MessageLogger DataFormats/Common DataFormats/TrackingRecHit DataFormats/TrackerRecHit2D FWCore/ServiceRegistry Geometry/CommonDetUnit DataFormats/GeometrySurface,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TrackingToolsTransientTrackingRecHit_EX_LIB   := TrackingToolsTransientTrackingRecHit
ALL_EXTERNAL_PRODS += TrackingToolsTransientTrackingRecHit
endif
ifeq ($(strip $(RecoEcal/EgammaClusterAlgos)),)
RecoEcalEgammaClusterAlgos := cmssw/RecoEcal/EgammaClusterAlgos
RecoEcal/EgammaClusterAlgos := RecoEcalEgammaClusterAlgos
RecoEcalEgammaClusterAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoEcalEgammaClusterAlgos_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/ParameterSet DataFormats/EcalRecHit DataFormats/EgammaReco DataFormats/Math RecoEcal/EgammaCoreTools Geometry/CaloGeometry Geometry/CaloTopology RecoParticleFlow/PFClusterTools RecoEgamma/EgammaTools clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoEcalEgammaClusterAlgos_EX_LIB   := RecoEcalEgammaClusterAlgos
ALL_EXTERNAL_PRODS += RecoEcalEgammaClusterAlgos
endif
ifeq ($(strip $(DQM/SiStripCommissioningDbClients)),)
DQMSiStripCommissioningDbClients := cmssw/DQM/SiStripCommissioningDbClients
DQM/SiStripCommissioningDbClients := DQMSiStripCommissioningDbClients
DQMSiStripCommissioningDbClients_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMSiStripCommissioningDbClients_EX_USE := $(foreach d, cmssw  CalibFormats/SiStripObjects CondFormats/SiStripObjects DataFormats/DetId DataFormats/GeometryVector DataFormats/SiStripCommon CondFormats/DataRecord DQM/SiStripCommissioningClients DQMServices/Core FWCore/MessageLogger FWCore/PluginManager FWCore/ServiceRegistry Geometry/CommonDetUnit Geometry/CommonTopologies Geometry/Records Geometry/TrackerGeometryBuilder OnlineDB/SiStripConfigDb OnlineDB/SiStripESSources boost rootcore,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMSiStripCommissioningDbClients_EX_LIB   := DQMSiStripCommissioningDbClients
ALL_EXTERNAL_PRODS += DQMSiStripCommissioningDbClients
endif
ifeq ($(strip $(DQM/SiStripMonitorSummary)),)
DQMSiStripMonitorSummary := cmssw/DQM/SiStripMonitorSummary
DQM/SiStripMonitorSummary := DQMSiStripMonitorSummary
DQMSiStripMonitorSummary_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMSiStripMonitorSummary_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/PluginManager DataFormats/Common DataFormats/FEDRawData DataFormats/SiStripDetId DataFormats/SiStripDigi CondFormats/DataRecord CondFormats/SiStripObjects DQM/SiStripCommon DQMServices/Core CalibFormats/SiStripObjects CalibTracker/Records CalibTracker/SiStripAPVAnalysis CondCore/DBOutputService CommonTools/TrackerMap CommonTools/UtilAlgos Geometry/TrackerGeometryBuilder,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMSiStripMonitorSummary_EX_LIB   := DQMSiStripMonitorSummary
ALL_EXTERNAL_PRODS += DQMSiStripMonitorSummary
endif
ifeq ($(strip $(SimG4Core/PhysicsLists)),)
SimG4CorePhysicsLists := cmssw/SimG4Core/PhysicsLists
SimG4Core/PhysicsLists := SimG4CorePhysicsLists
SimG4CorePhysicsLists_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CorePhysicsLists_EX_USE := $(foreach d, cmssw  FWCore/MessageLogger SimG4Core/Physics SimG4Core/MagneticField geant4core clhep heppdt boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CorePhysicsLists_EX_LIB   := SimG4CorePhysicsLists
ALL_EXTERNAL_PRODS += SimG4CorePhysicsLists
endif
ifeq ($(strip $(RecoBTag/PerformanceDB)),)
RecoBTagPerformanceDB := cmssw/RecoBTag/PerformanceDB
RecoBTag/PerformanceDB := RecoBTagPerformanceDB
RecoBTagPerformanceDB_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoBTagPerformanceDB_EX_USE := $(foreach d, cmssw  FWCore/PluginManager FWCore/ParameterSet FWCore/Utilities FWCore/MessageLogger,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoBTagPerformanceDB_EX_LIB   := RecoBTagPerformanceDB
ALL_EXTERNAL_PRODS += RecoBTagPerformanceDB
endif
ifeq ($(strip $(Fireworks/Eve)),)
FireworksEve := cmssw/Fireworks/Eve
Fireworks/Eve := FireworksEve
FireworksEve_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FireworksEve_EX_USE := $(foreach d, cmssw  FWCore/PluginManager FWCore/Framework CondFormats/DataRecord CondFormats/RunInfo rootcore rootinteractive,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FireworksEve_EX_LIB   := FireworksEve
ALL_EXTERNAL_PRODS += FireworksEve
endif
ifeq ($(strip $(CondFormats/EcalCorrections)),)
CondFormatsEcalCorrections := cmssw/CondFormats/EcalCorrections
CondFormats/EcalCorrections := CondFormatsEcalCorrections
CondFormatsEcalCorrections_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondFormatsEcalCorrections_EX_USE := $(foreach d, cmssw  CondFormats/Common DataFormats/EcalDetId FWCore/Utilities rootrflx boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsEcalCorrections_EX_LIB   := CondFormatsEcalCorrections
ALL_EXTERNAL_PRODS += CondFormatsEcalCorrections
endif
ifeq ($(strip $(RecoJets/JetAlgorithms)),)
RecoJetsJetAlgorithms := cmssw/RecoJets/JetAlgorithms
RecoJets/JetAlgorithms := RecoJetsJetAlgorithms
RecoJetsJetAlgorithms_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoJetsJetAlgorithms_EX_USE := $(foreach d, cmssw  fastjet ktjet DataFormats/JetReco DataFormats/Candidate FWCore/Framework SimDataFormats/Vertex SimDataFormats/Track DataFormats/HepMCCandidate,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoJetsJetAlgorithms_EX_LIB   := RecoJetsJetAlgorithms
ALL_EXTERNAL_PRODS += RecoJetsJetAlgorithms
endif
ifeq ($(strip $(DataFormats/TrackCandidate)),)
DataFormatsTrackCandidate := cmssw/DataFormats/TrackCandidate
DataFormats/TrackCandidate := DataFormatsTrackCandidate
DataFormatsTrackCandidate_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsTrackCandidate_EX_USE := $(foreach d, cmssw  DataFormats/Common rootrflx clhepheader,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsTrackCandidate_EX_LIB   := DataFormatsTrackCandidate
ALL_EXTERNAL_PRODS += DataFormatsTrackCandidate
endif
ifeq ($(strip $(RecoTracker/DeDx)),)
RecoTrackerDeDx := cmssw/RecoTracker/DeDx
RecoTracker/DeDx := RecoTrackerDeDx
RecoTrackerDeDx_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoTrackerDeDx_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet FWCore/ServiceRegistry DataFormats/TrackReco DataFormats/DetId DataFormats/TrackerRecHit2D Geometry/Records Geometry/TrackerGeometryBuilder CondCore/DBOutputService CondFormats/PhysicsToolsObjects CondFormats/DataRecord TrackingTools/TrajectoryState PhysicsTools/UtilAlgos HLTrigger/HLTcore rootcore root clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoTrackerDeDx_EX_LIB   := RecoTrackerDeDx
ALL_EXTERNAL_PRODS += RecoTrackerDeDx
endif
ifeq ($(strip $(RecoLocalCalo/EcalDeadChannelRecoveryAlgos)),)
RecoLocalCaloEcalDeadChannelRecoveryAlgos := cmssw/RecoLocalCalo/EcalDeadChannelRecoveryAlgos
RecoLocalCalo/EcalDeadChannelRecoveryAlgos := RecoLocalCaloEcalDeadChannelRecoveryAlgos
RecoLocalCaloEcalDeadChannelRecoveryAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoLocalCaloEcalDeadChannelRecoveryAlgos_EX_USE := $(foreach d, cmssw  DataFormats/EcalDetId DataFormats/EcalRecHit Geometry/CaloGeometry Geometry/CaloTopology Geometry/Records rootcore,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoLocalCaloEcalDeadChannelRecoveryAlgos_EX_LIB   := RecoLocalCaloEcalDeadChannelRecoveryAlgos
ALL_EXTERNAL_PRODS += RecoLocalCaloEcalDeadChannelRecoveryAlgos
endif
ifeq ($(strip $(EventFilter/HcalRawToDigi)),)
EventFilterHcalRawToDigi := cmssw/EventFilter/HcalRawToDigi
EventFilter/HcalRawToDigi := EventFilterHcalRawToDigi
EventFilterHcalRawToDigi_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
EventFilterHcalRawToDigi_EX_USE := $(foreach d, cmssw  DataFormats/HcalDetId DataFormats/HcalDigi DataFormats/FEDRawData FWCore/MessageLogger CondFormats/HcalObjects FWCore/Utilities boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
EventFilterHcalRawToDigi_EX_LIB   := EventFilterHcalRawToDigi
ALL_EXTERNAL_PRODS += EventFilterHcalRawToDigi
endif
ifeq ($(strip $(CalibTracker/SiStripQuality)),)
CalibTrackerSiStripQuality := cmssw/CalibTracker/SiStripQuality
CalibTracker/SiStripQuality := CalibTrackerSiStripQuality
CalibTrackerSiStripQuality_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibTrackerSiStripQuality_EX_USE := $(foreach d, cmssw  boost root DQMServices/Core FWCore/MessageLogger CondFormats/DataRecord CondFormats/SiStripObjects CalibFormats/SiStripObjects Geometry/TrackerGeometryBuilder Geometry/Records,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibTrackerSiStripQuality_EX_LIB   := CalibTrackerSiStripQuality
ALL_EXTERNAL_PRODS += CalibTrackerSiStripQuality
endif
ifeq ($(strip $(PhysicsTools/RecoAlgos)),)
PhysicsToolsRecoAlgos := cmssw/PhysicsTools/RecoAlgos
PhysicsTools/RecoAlgos := PhysicsToolsRecoAlgos
PhysicsToolsRecoAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
PhysicsToolsRecoAlgos_EX_USE := $(foreach d, cmssw  PhysicsTools/RecoUtils FWCore/ParameterSet,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsRecoAlgos_EX_LIB   := PhysicsToolsRecoAlgos
ALL_EXTERNAL_PRODS += PhysicsToolsRecoAlgos
endif
ifeq ($(strip $(FWCore/Concurrency)),)
FWCoreConcurrency := cmssw/FWCore/Concurrency
FWCore/Concurrency := FWCoreConcurrency
FWCoreConcurrency_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCoreConcurrency_EX_USE := $(foreach d, cmssw  tbb xerces-c,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCoreConcurrency_EX_LIB   := FWCoreConcurrency
ALL_EXTERNAL_PRODS += FWCoreConcurrency
endif
ifeq ($(strip $(CondFormats/GeometryObjects)),)
CondFormatsGeometryObjects := cmssw/CondFormats/GeometryObjects
CondFormats/GeometryObjects := CondFormatsGeometryObjects
CondFormatsGeometryObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondFormatsGeometryObjects_EX_USE := $(foreach d, cmssw  CondFormats/Common FWCore/MessageLogger DataFormats/Common DataFormats/DetId rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsGeometryObjects_EX_LIB   := CondFormatsGeometryObjects
ALL_EXTERNAL_PRODS += CondFormatsGeometryObjects
endif
ifeq ($(strip $(CalibTracker/Records)),)
CalibTrackerRecords := cmssw/CalibTracker/Records
CalibTracker/Records := CalibTrackerRecords
CalibTrackerRecords_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibTrackerRecords_EX_USE := $(foreach d, cmssw  CondFormats/DataRecord FWCore/Framework Geometry/Records MagneticField/Records boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibTrackerRecords_EX_LIB   := CalibTrackerRecords
ALL_EXTERNAL_PRODS += CalibTrackerRecords
endif
ifeq ($(strip $(Validation/RecoJets)),)
src_Validation_RecoJets := cmssw/Validation/RecoJets
Validation/RecoJets  := src_Validation_RecoJets
src_Validation_RecoJets_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
src_Validation_RecoJets_EX_USE := $(foreach d, cmssw FWCore/MessageLogger JetMETCorrections/Objects CommonTools/UtilAlgos FWCore/ServiceRegistry rootgraphics FWCore/ParameterSet,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_Validation_RecoJets
endif

ifeq ($(strip $(DQMOffline/EGamma)),)
DQMOfflineEGamma := cmssw/DQMOffline/EGamma
DQMOffline/EGamma := DQMOfflineEGamma
DQMOfflineEGamma_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMOfflineEGamma_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/ParameterSet DQMServices/Components DQMServices/Core,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMOfflineEGamma_EX_LIB   := DQMOfflineEGamma
ALL_EXTERNAL_PRODS += DQMOfflineEGamma
endif
ifeq ($(strip $(CondTools/L1Trigger)),)
CondToolsL1Trigger := cmssw/CondTools/L1Trigger
CondTools/L1Trigger := CondToolsL1Trigger
CondToolsL1Trigger_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondToolsL1Trigger_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet CondCore/DBOutputService CondCore/DBCommon CondCore/IOVService CondCore/MetaDataService CondCore/PluginSystem CondFormats/DataRecord CondFormats/L1TObjects,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondToolsL1Trigger_EX_LIB   := CondToolsL1Trigger
ALL_EXTERNAL_PRODS += CondToolsL1Trigger
endif
ifeq ($(strip $(SimG4Core/Generators)),)
SimG4CoreGenerators := cmssw/SimG4Core/Generators
SimG4Core/Generators := SimG4CoreGenerators
SimG4CoreGenerators_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CoreGenerators_EX_USE := $(foreach d, cmssw  FWCore/ParameterSet FWCore/MessageLogger SimDataFormats/GeneratorProducts boost geant4core rootmath expat,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CoreGenerators_EX_LIB   := SimG4CoreGenerators
ALL_EXTERNAL_PRODS += SimG4CoreGenerators
endif
ifeq ($(strip $(Utilities/General)),)
UtilitiesGeneral := cmssw/Utilities/General
Utilities/General := UtilitiesGeneral
UtilitiesGeneral_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
UtilitiesGeneral_EX_USE := $(foreach d, cmssw  FWCore/Utilities boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
UtilitiesGeneral_EX_LIB   := UtilitiesGeneral
ALL_EXTERNAL_PRODS += UtilitiesGeneral
endif
ifeq ($(strip $(DQMOffline/Ecal)),)
DQMOfflineEcal := cmssw/DQMOffline/Ecal
DQMOffline/Ecal := DQMOfflineEcal
DQMOfflineEcal_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMOfflineEcal_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DQMServices/Core DataFormats/L1GlobalMuonTrigger DataFormats/L1GlobalTrigger CondFormats/L1TObjects CondFormats/DataRecord DQM/EcalCommon CondFormats/EcalObjects Geometry/CaloTopology DataFormats/EcalDetId DataFormats/EcalRecHit DataFormats/EgammaReco RecoEgamma/EgammaTools RecoEcal/EgammaCoreTools MagneticField/Engine MagneticField/Records CommonTools/UtilAlgos,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMOfflineEcal_EX_LIB   := DQMOfflineEcal
ALL_EXTERNAL_PRODS += DQMOfflineEcal
endif
ifeq ($(strip $(PhysicsTools/SelectorUtils)),)
PhysicsToolsSelectorUtils := cmssw/PhysicsTools/SelectorUtils
PhysicsTools/SelectorUtils := PhysicsToolsSelectorUtils
PhysicsToolsSelectorUtils_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
PhysicsToolsSelectorUtils_EX_USE := $(foreach d, cmssw  CommonTools/Utils DataFormats/Math DataFormats/Candidate DataFormats/PatCandidates DataFormats/BeamSpot DataFormats/Common DataFormats/Provenance DataFormats/VertexReco FWCore/Common FWCore/FWLite FWCore/ParameterSet FWCore/Utilities rootrflx rootcore root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsSelectorUtils_EX_LIB   := PhysicsToolsSelectorUtils
ALL_EXTERNAL_PRODS += PhysicsToolsSelectorUtils
endif
ifeq ($(strip $(FWCore/ServiceRegistry)),)
FWCoreServiceRegistry := cmssw/FWCore/ServiceRegistry
FWCore/ServiceRegistry := FWCoreServiceRegistry
FWCoreServiceRegistry_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCoreServiceRegistry_EX_USE := $(foreach d, cmssw  boost DataFormats/Provenance FWCore/ParameterSet FWCore/PluginManager FWCore/PythonParameterSet FWCore/Utilities,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCoreServiceRegistry_EX_LIB   := FWCoreServiceRegistry
ALL_EXTERNAL_PRODS += FWCoreServiceRegistry
endif
ifeq ($(strip $(DetectorDescription/OfflineDBLoader)),)
DetectorDescriptionOfflineDBLoader := cmssw/DetectorDescription/OfflineDBLoader
DetectorDescription/OfflineDBLoader := DetectorDescriptionOfflineDBLoader
DetectorDescriptionOfflineDBLoader_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DetectorDescriptionOfflineDBLoader_EX_USE := $(foreach d, cmssw  DetectorDescription/Core clhep rootmath,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DetectorDescriptionOfflineDBLoader_EX_LIB   := DetectorDescriptionOfflineDBLoader
ALL_EXTERNAL_PRODS += DetectorDescriptionOfflineDBLoader
endif
ifeq ($(strip $(SimTracker/TrackHistory)),)
SimTrackerTrackHistory := cmssw/SimTracker/TrackHistory
SimTracker/TrackHistory := SimTrackerTrackHistory
SimTrackerTrackHistory_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimTrackerTrackHistory_EX_USE := $(foreach d, cmssw  clhep boost root DataFormats/Math DataFormats/VertexReco DataFormats/JetReco SimTracker/VertexAssociation FWCore/Framework FWCore/ParameterSet FWCore/Utilities MagneticField/Records MagneticField/Engine SimDataFormats/TrackingAnalysis SimGeneral/HepPDTRecord SimTracker/Records SimTracker/TrackAssociation SimTracker/TrackerHitAssociation TrackingTools/TransientTrack DataFormats/TrackerCommon,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimTrackerTrackHistory_EX_LIB   := SimTrackerTrackHistory
ALL_EXTERNAL_PRODS += SimTrackerTrackHistory
endif
ifeq ($(strip $(CalibTracker/SiStripESProducers)),)
CalibTrackerSiStripESProducers := cmssw/CalibTracker/SiStripESProducers
CalibTracker/SiStripESProducers := CalibTrackerSiStripESProducers
CalibTrackerSiStripESProducers_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibTrackerSiStripESProducers_EX_USE := $(foreach d, cmssw  CalibTracker/SiStripCommon CalibFormats/SiStripObjects CalibTracker/Records CondFormats/DataRecord CondFormats/SiStripObjects DataFormats/SiStripCommon FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet CondFormats/RunInfo Geometry/TrackerGeometryBuilder Geometry/Records boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibTrackerSiStripESProducers_EX_LIB   := CalibTrackerSiStripESProducers
ALL_EXTERNAL_PRODS += CalibTrackerSiStripESProducers
endif
ifeq ($(strip $(DataFormats/DTDigi)),)
DataFormatsDTDigi := cmssw/DataFormats/DTDigi
DataFormats/DTDigi := DataFormatsDTDigi
DataFormatsDTDigi_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsDTDigi_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/MuonDetId boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsDTDigi_EX_LIB   := DataFormatsDTDigi
ALL_EXTERNAL_PRODS += DataFormatsDTDigi
endif
ifeq ($(strip $(EventFilter/GctRawToDigi)),)
EventFilterGctRawToDigi := cmssw/EventFilter/GctRawToDigi
EventFilter/GctRawToDigi := EventFilterGctRawToDigi
EventFilterGctRawToDigi_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
EventFilterGctRawToDigi_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/MessageLogger DataFormats/FEDRawData DataFormats/L1CaloTrigger DataFormats/L1GlobalCaloTrigger DataFormats/L1Trigger L1Trigger/TextToDigi CondFormats/L1TObjects CondFormats/DataRecord,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
EventFilterGctRawToDigi_EX_LIB   := EventFilterGctRawToDigi
ALL_EXTERNAL_PRODS += EventFilterGctRawToDigi
endif
ifeq ($(strip $(RecoMuon/L3TrackFinder)),)
RecoMuonL3TrackFinder := cmssw/RecoMuon/L3TrackFinder
RecoMuon/L3TrackFinder := RecoMuonL3TrackFinder
RecoMuonL3TrackFinder_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoMuonL3TrackFinder_EX_USE := $(foreach d, cmssw  DataFormats/DetId DataFormats/GeometryCommonDetAlgo DataFormats/GeometrySurface DataFormats/GeometryVector DataFormats/SiStripDetId DataFormats/TrackReco DataFormats/TrackerRecHit2D DataFormats/TrajectorySeed DataFormats/TrajectoryState FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry Geometry/TrackerGeometryBuilder MagneticField/Engine RecoMuon/GlobalTrackingTools RecoMuon/TrackingTools RecoTracker/CkfPattern RecoTracker/MeasurementDet RecoTracker/Record RecoTracker/TkDetLayers RecoTracker/TkTrackingRegions TrackingTools/DetLayers TrackingTools/GeomPropagators TrackingTools/KalmanUpdators TrackingTools/MeasurementDet TrackingTools/PatternTools TrackingTools/TrackFitters TrackingTools/TrajectoryCleaning TrackingTools/TrajectoryFiltering TrackingTools/TrajectoryState TrackingTools/TransientTrackingRecHit,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoMuonL3TrackFinder_EX_LIB   := RecoMuonL3TrackFinder
ALL_EXTERNAL_PRODS += RecoMuonL3TrackFinder
endif
ifeq ($(strip $(CommonTools/UtilAlgos)),)
CommonToolsUtilAlgos := cmssw/CommonTools/UtilAlgos
CommonTools/UtilAlgos := CommonToolsUtilAlgos
CommonToolsUtilAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CommonToolsUtilAlgos_EX_USE := $(foreach d, cmssw  CommonTools/Utils FWCore/ServiceRegistry FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities DataFormats/Provenance DataFormats/DetId roothistmatrix,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CommonToolsUtilAlgos_EX_LIB   := CommonToolsUtilAlgos
ALL_EXTERNAL_PRODS += CommonToolsUtilAlgos
endif
ifeq ($(strip $(CalibCalorimetry/HcalAlgos)),)
CalibCalorimetryHcalAlgos := cmssw/CalibCalorimetry/HcalAlgos
CalibCalorimetry/HcalAlgos := CalibCalorimetryHcalAlgos
CalibCalorimetryHcalAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibCalorimetryHcalAlgos_EX_USE := $(foreach d, cmssw  boost root clhep FWCore/Framework FWCore/MessageLogger DataFormats/HcalDetId CondFormats/HcalObjects DataFormats/HcalDigi CalibFormats/HcalObjects,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibCalorimetryHcalAlgos_EX_LIB   := CalibCalorimetryHcalAlgos
ALL_EXTERNAL_PRODS += CalibCalorimetryHcalAlgos
endif
ifeq ($(strip $(Utilities/ReleaseScripts)),)
src_Utilities_ReleaseScripts := cmssw/Utilities/ReleaseScripts
Utilities/ReleaseScripts  := src_Utilities_ReleaseScripts
src_Utilities_ReleaseScripts_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
src_Utilities_ReleaseScripts_EX_USE := $(foreach d, cmssw,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_Utilities_ReleaseScripts
endif

ifeq ($(strip $(CommonTools/TriggerUtils)),)
CommonToolsTriggerUtils := cmssw/CommonTools/TriggerUtils
CommonTools/TriggerUtils := CommonToolsTriggerUtils
CommonToolsTriggerUtils_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CommonToolsTriggerUtils_EX_USE := $(foreach d, cmssw  CondFormats/DataRecord CondFormats/L1TObjects DataFormats/Common DataFormats/Scalers DataFormats/L1GlobalTrigger FWCore/Framework L1Trigger/GlobalTriggerAnalyzer HLTrigger/HLTcore,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CommonToolsTriggerUtils_EX_LIB   := CommonToolsTriggerUtils
ALL_EXTERNAL_PRODS += CommonToolsTriggerUtils
endif
ifeq ($(strip $(DataFormats/Luminosity)),)
DataFormatsLuminosity := cmssw/DataFormats/Luminosity
DataFormats/Luminosity := DataFormatsLuminosity
DataFormatsLuminosity_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsLuminosity_EX_USE := $(foreach d, cmssw  rootrflx DataFormats/Common FWCore/Utilities,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsLuminosity_EX_LIB   := DataFormatsLuminosity
ALL_EXTERNAL_PRODS += DataFormatsLuminosity
endif
ifeq ($(strip $(CondFormats/CastorObjects)),)
CondFormatsCastorObjects := cmssw/CondFormats/CastorObjects
CondFormats/CastorObjects := CondFormatsCastorObjects
CondFormatsCastorObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondFormatsCastorObjects_EX_USE := $(foreach d, cmssw  DataFormats/DetId DataFormats/HcalDetId FWCore/Utilities rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsCastorObjects_EX_LIB   := CondFormatsCastorObjects
ALL_EXTERNAL_PRODS += CondFormatsCastorObjects
endif
ifeq ($(strip $(DataFormats/HcalCalibObjects)),)
DataFormatsHcalCalibObjects := cmssw/DataFormats/HcalCalibObjects
DataFormats/HcalCalibObjects := DataFormatsHcalCalibObjects
DataFormatsHcalCalibObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsHcalCalibObjects_EX_USE := $(foreach d, cmssw  DataFormats/Common rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsHcalCalibObjects_EX_LIB   := DataFormatsHcalCalibObjects
ALL_EXTERNAL_PRODS += DataFormatsHcalCalibObjects
endif
ifeq ($(strip $(CondFormats/DQMObjects)),)
CondFormatsDQMObjects := cmssw/CondFormats/DQMObjects
CondFormats/DQMObjects := CondFormatsDQMObjects
CondFormatsDQMObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondFormatsDQMObjects_EX_USE := $(foreach d, cmssw  FWCore/MessageLogger FWCore/Utilities rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsDQMObjects_EX_LIB   := CondFormatsDQMObjects
ALL_EXTERNAL_PRODS += CondFormatsDQMObjects
endif
ifeq ($(strip $(SimDataFormats/GeneratorProducts)),)
SimDataFormatsGeneratorProducts := cmssw/SimDataFormats/GeneratorProducts
SimDataFormats/GeneratorProducts := SimDataFormatsGeneratorProducts
SimDataFormatsGeneratorProducts_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimDataFormatsGeneratorProducts_EX_USE := $(foreach d, cmssw  FWCore/Utilities FWCore/MessageLogger DataFormats/Common hepmc rootrflx roothistmatrix,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimDataFormatsGeneratorProducts_EX_LIB   := SimDataFormatsGeneratorProducts
ALL_EXTERNAL_PRODS += SimDataFormatsGeneratorProducts
endif
ifeq ($(strip $(GeneratorInterface/HiGenCommon)),)
GeneratorInterfaceHiGenCommon := cmssw/GeneratorInterface/HiGenCommon
GeneratorInterface/HiGenCommon := GeneratorInterfaceHiGenCommon
GeneratorInterfaceHiGenCommon_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeneratorInterfaceHiGenCommon_EX_USE := $(foreach d, cmssw  GeneratorInterface/Core SimDataFormats/GeneratorProducts SimGeneral/HepPDTRecord FWCore/ParameterSet IOMC/EventVertexGenerators,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeneratorInterfaceHiGenCommon_EX_LIB   := GeneratorInterfaceHiGenCommon
ALL_EXTERNAL_PRODS += GeneratorInterfaceHiGenCommon
endif
ifeq ($(strip $(SimG4Core/SensitiveDetector)),)
SimG4CoreSensitiveDetector := cmssw/SimG4Core/SensitiveDetector
SimG4Core/SensitiveDetector := SimG4CoreSensitiveDetector
SimG4CoreSensitiveDetector_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CoreSensitiveDetector_EX_USE := $(foreach d, cmssw  SimG4Core/Geometry boost geant4core sigcpp,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CoreSensitiveDetector_EX_LIB   := SimG4CoreSensitiveDetector
ALL_EXTERNAL_PRODS += SimG4CoreSensitiveDetector
endif
ifeq ($(strip $(TBDataFormats/HcalTBObjects)),)
TBDataFormatsHcalTBObjects := cmssw/TBDataFormats/HcalTBObjects
TBDataFormats/HcalTBObjects := TBDataFormatsHcalTBObjects
TBDataFormatsHcalTBObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TBDataFormatsHcalTBObjects_EX_USE := $(foreach d, cmssw  DataFormats/Common boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TBDataFormatsHcalTBObjects_EX_LIB   := TBDataFormatsHcalTBObjects
ALL_EXTERNAL_PRODS += TBDataFormatsHcalTBObjects
endif
ifeq ($(strip $(DataFormats/EgammaReco)),)
DataFormatsEgammaReco := cmssw/DataFormats/EgammaReco
DataFormats/EgammaReco := DataFormatsEgammaReco
DataFormatsEgammaReco_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsEgammaReco_EX_USE := $(foreach d, cmssw  DataFormats/Common rootrflx clhepheader DataFormats/CaloRecHit DataFormats/TrackingRecHit DataFormats/TrajectorySeed DataFormats/TrackReco,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsEgammaReco_EX_LIB   := DataFormatsEgammaReco
ALL_EXTERNAL_PRODS += DataFormatsEgammaReco
endif
ifeq ($(strip $(TrackingTools/Records)),)
TrackingToolsRecords := cmssw/TrackingTools/Records
TrackingTools/Records := TrackingToolsRecords
TrackingToolsRecords_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TrackingToolsRecords_EX_USE := $(foreach d, cmssw  FWCore/Utilities FWCore/Framework Geometry/Records RecoLocalTracker/Records MagneticField/Records clhep boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TrackingToolsRecords_EX_LIB   := TrackingToolsRecords
ALL_EXTERNAL_PRODS += TrackingToolsRecords
endif
ifeq ($(strip $(CondFormats/BeamSpotObjects)),)
CondFormatsBeamSpotObjects := cmssw/CondFormats/BeamSpotObjects
CondFormats/BeamSpotObjects := CondFormatsBeamSpotObjects
CondFormatsBeamSpotObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondFormatsBeamSpotObjects_EX_USE := $(foreach d, cmssw  CondFormats/Common FWCore/Utilities rootrflx clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsBeamSpotObjects_EX_LIB   := CondFormatsBeamSpotObjects
ALL_EXTERNAL_PRODS += CondFormatsBeamSpotObjects
endif
ifeq ($(strip $(SimTracker/SiPhase2Digitizer)),)
src_SimTracker_SiPhase2Digitizer := cmssw/SimTracker/SiPhase2Digitizer
SimTracker/SiPhase2Digitizer  := src_SimTracker_SiPhase2Digitizer
src_SimTracker_SiPhase2Digitizer_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
src_SimTracker_SiPhase2Digitizer_EX_USE := $(foreach d, cmssw,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_SimTracker_SiPhase2Digitizer
endif

ifeq ($(strip $(PhysicsTools/KinFitter)),)
PhysicsToolsKinFitter := cmssw/PhysicsTools/KinFitter
PhysicsTools/KinFitter := PhysicsToolsKinFitter
PhysicsToolsKinFitter_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
PhysicsToolsKinFitter_EX_USE := $(foreach d, cmssw  root FWCore/MessageLogger,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsKinFitter_EX_LIB   := PhysicsToolsKinFitter
ALL_EXTERNAL_PRODS += PhysicsToolsKinFitter
endif
ifeq ($(strip $(EventFilter/SiPixelRawToDigi)),)
EventFilterSiPixelRawToDigi := cmssw/EventFilter/SiPixelRawToDigi
EventFilter/SiPixelRawToDigi := EventFilterSiPixelRawToDigi
EventFilterSiPixelRawToDigi_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
EventFilterSiPixelRawToDigi_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DataFormats/FEDRawData DataFormats/SiPixelDigi DataFormats/SiPixelRawData CondFormats/SiPixelObjects DataFormats/Candidate CondFormats/DataRecord Utilities/Timing root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
EventFilterSiPixelRawToDigi_EX_LIB   := EventFilterSiPixelRawToDigi
ALL_EXTERNAL_PRODS += EventFilterSiPixelRawToDigi
endif
ifeq ($(strip $(L1Trigger/DTTraco)),)
L1TriggerDTTraco := cmssw/L1Trigger/DTTraco
L1Trigger/DTTraco := L1TriggerDTTraco
L1TriggerDTTraco_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
L1TriggerDTTraco_EX_USE := $(foreach d, cmssw  FWCore/PluginManager FWCore/ParameterSet Geometry/DTGeometry L1TriggerConfig/DTTPGConfig L1Trigger/DTUtilities L1Trigger/DTBti L1Trigger/DTTriggerServerTheta clhep root rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
L1TriggerDTTraco_EX_LIB   := L1TriggerDTTraco
ALL_EXTERNAL_PRODS += L1TriggerDTTraco
endif
ifeq ($(strip $(GeneratorInterface/ReggeGribovPartonMCInterface)),)
GeneratorInterfaceReggeGribovPartonMCInterface := cmssw/GeneratorInterface/ReggeGribovPartonMCInterface
GeneratorInterface/ReggeGribovPartonMCInterface := GeneratorInterfaceReggeGribovPartonMCInterface
GeneratorInterfaceReggeGribovPartonMCInterface_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeneratorInterfaceReggeGribovPartonMCInterface_EX_USE := $(foreach d, cmssw  clhep boost GeneratorInterface/Core FWCore/Framework SimDataFormats/GeneratorProducts GeneratorInterface/ExternalDecays f77compiler,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeneratorInterfaceReggeGribovPartonMCInterface_EX_LIB   := GeneratorInterfaceReggeGribovPartonMCInterface
ALL_EXTERNAL_PRODS += GeneratorInterfaceReggeGribovPartonMCInterface
endif
ifeq ($(strip $(PhysicsTools/UtilAlgos)),)
PhysicsToolsUtilAlgos := cmssw/PhysicsTools/UtilAlgos
PhysicsTools/UtilAlgos := PhysicsToolsUtilAlgos
PhysicsToolsUtilAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
PhysicsToolsUtilAlgos_EX_USE := $(foreach d, cmssw  FWCore/ServiceRegistry FWCore/MessageLogger FWCore/Framework FWCore/ParameterSet FWCore/Services FWCore/Utilities FWCore/Common DataFormats/Common DataFormats/Provenance CommonTools/UtilAlgos DataFormats/MuonReco DataFormats/PatCandidates root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsUtilAlgos_EX_LIB   := PhysicsToolsUtilAlgos
ALL_EXTERNAL_PRODS += PhysicsToolsUtilAlgos
endif
ifeq ($(strip $(CondFormats/EcalObjects)),)
CondFormatsEcalObjects := cmssw/CondFormats/EcalObjects
CondFormats/EcalObjects := CondFormatsEcalObjects
CondFormatsEcalObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondFormatsEcalObjects_EX_USE := $(foreach d, cmssw  FWCore/Utilities CondFormats/Common CondFormats/Alignment DataFormats/StdDictionaries DataFormats/EcalDetId DataFormats/Math boost rootmath rootrflx clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsEcalObjects_EX_LIB   := CondFormatsEcalObjects
ALL_EXTERNAL_PRODS += CondFormatsEcalObjects
endif
ifeq ($(strip $(CondFormats/PhysicsToolsObjects)),)
CondFormatsPhysicsToolsObjects := cmssw/CondFormats/PhysicsToolsObjects
CondFormats/PhysicsToolsObjects := CondFormatsPhysicsToolsObjects
CondFormatsPhysicsToolsObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondFormatsPhysicsToolsObjects_EX_USE := $(foreach d, cmssw  FWCore/MessageLogger FWCore/Utilities CondFormats/Common boost sigcpp root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsPhysicsToolsObjects_EX_LIB   := CondFormatsPhysicsToolsObjects
ALL_EXTERNAL_PRODS += CondFormatsPhysicsToolsObjects
endif
ifeq ($(strip $(MagneticField/Layers)),)
MagneticFieldLayers := cmssw/MagneticField/Layers
MagneticField/Layers := MagneticFieldLayers
MagneticFieldLayers_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
MagneticFieldLayers_EX_USE := $(foreach d, cmssw  boost DataFormats/GeometrySurface MagneticField/VolumeGeometry,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
MagneticFieldLayers_EX_LIB   := MagneticFieldLayers
ALL_EXTERNAL_PRODS += MagneticFieldLayers
endif
ifeq ($(strip $(DQMServices/Core)),)
DQMServicesCore := cmssw/DQMServices/Core
DQMServices/Core := DQMServicesCore
DQMServicesCore_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMServicesCore_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities FWCore/Version classlib rootcintex roothistmatrix,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMServicesCore_EX_LIB   := DQMServicesCore
ALL_EXTERNAL_PRODS += DQMServicesCore
endif
ifeq ($(strip $(Utilities/StorageFactory)),)
UtilitiesStorageFactory := cmssw/Utilities/StorageFactory
Utilities/StorageFactory := UtilitiesStorageFactory
UtilitiesStorageFactory_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
UtilitiesStorageFactory_EX_USE := $(foreach d, cmssw  FWCore/PluginManager FWCore/MessageLogger FWCore/Utilities FWCore/ServiceRegistry boost openssl,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
UtilitiesStorageFactory_EX_LIB   := UtilitiesStorageFactory
ALL_EXTERNAL_PRODS += UtilitiesStorageFactory
endif
ifeq ($(strip $(FWCore/MessageLogger)),)
FWCoreMessageLogger := cmssw/FWCore/MessageLogger
FWCore/MessageLogger := FWCoreMessageLogger
FWCoreMessageLogger_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCoreMessageLogger_EX_USE := $(foreach d, cmssw  FWCore/Utilities boost tbb,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCoreMessageLogger_EX_LIB   := FWCoreMessageLogger
ALL_EXTERNAL_PRODS += FWCoreMessageLogger
endif
ifeq ($(strip $(CondCore/CondDB)),)
CondCoreCondDB := cmssw/CondCore/CondDB
CondCore/CondDB := CondCoreCondDB
CondCoreCondDB_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondCoreCondDB_EX_USE := $(foreach d, cmssw  CondCore/DBCommon CondCore/IOVService CondCore/MetaDataService CondCore/TagCollection CondCore/ORA FWCore/Framework boost openssl CoralCommon CoralKernel RelationalAccess,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondCoreCondDB_EX_LIB   := CondCoreCondDB
ALL_EXTERNAL_PRODS += CondCoreCondDB
endif
ifeq ($(strip $(GeneratorInterface/CascadeInterface)),)
src_GeneratorInterface_CascadeInterface := cmssw/GeneratorInterface/CascadeInterface
GeneratorInterface/CascadeInterface  := src_GeneratorInterface_CascadeInterface
src_GeneratorInterface_CascadeInterface_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
src_GeneratorInterface_CascadeInterface_EX_USE := $(foreach d, SimDataFormats/GeneratorProducts cascade clhep boost GeneratorInterface/Core FWCore/Framework cmssw pythia6 f77compiler,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_GeneratorInterface_CascadeInterface
endif

ifeq ($(strip $(L1Trigger/RPCTrigger)),)
L1TriggerRPCTrigger := cmssw/L1Trigger/RPCTrigger
L1Trigger/RPCTrigger := L1TriggerRPCTrigger
L1TriggerRPCTrigger_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
L1TriggerRPCTrigger_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet FWCore/Concurrency DataFormats/RPCDigi Geometry/RPCGeometry Geometry/Records Geometry/CommonDetUnit Geometry/CommonTopologies DataFormats/MuonDetId DataFormats/L1GlobalMuonTrigger xerces-c CondFormats/RPCObjects CondFormats/L1TObjects CondFormats/DataRecord,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
L1TriggerRPCTrigger_EX_LIB   := L1TriggerRPCTrigger
ALL_EXTERNAL_PRODS += L1TriggerRPCTrigger
endif
ifeq ($(strip $(PhysicsTools/CondLiteIO)),)
PhysicsToolsCondLiteIO := cmssw/PhysicsTools/CondLiteIO
PhysicsTools/CondLiteIO := PhysicsToolsCondLiteIO
PhysicsToolsCondLiteIO_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
PhysicsToolsCondLiteIO_EX_USE := $(foreach d, cmssw  DataFormats/Provenance DataFormats/FWLite rootcore,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsCondLiteIO_EX_LIB   := PhysicsToolsCondLiteIO
ALL_EXTERNAL_PRODS += PhysicsToolsCondLiteIO
endif
ifeq ($(strip $(JetMETCorrections/TauJet)),)
JetMETCorrectionsTauJet := cmssw/JetMETCorrections/TauJet
JetMETCorrections/TauJet := JetMETCorrectionsTauJet
JetMETCorrectionsTauJet_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
JetMETCorrectionsTauJet_EX_USE := $(foreach d, cmssw  clhep DataFormats/Common FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DataFormats/JetReco DataFormats/TauReco JetMETCorrections/Objects TrackingTools/TransientTrack Geometry/CaloGeometry DataFormats/BTauReco RecoTauTag/TauTagTools TrackingTools/TrackAssociator RecoTauTag/RecoTau rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
JetMETCorrectionsTauJet_EX_LIB   := JetMETCorrectionsTauJet
ALL_EXTERNAL_PRODS += JetMETCorrectionsTauJet
endif
ifeq ($(strip $(RecoVertex/LinearizationPointFinders)),)
RecoVertexLinearizationPointFinders := cmssw/RecoVertex/LinearizationPointFinders
RecoVertex/LinearizationPointFinders := RecoVertexLinearizationPointFinders
RecoVertexLinearizationPointFinders_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoVertexLinearizationPointFinders_EX_USE := $(foreach d, cmssw  DataFormats/GeometryVector FWCore/Utilities RecoVertex/VertexPrimitives RecoVertex/VertexTools TrackingTools/PatternTools TrackingTools/TrajectoryState TrackingTools/TransientTrack,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoVertexLinearizationPointFinders_EX_LIB   := RecoVertexLinearizationPointFinders
ALL_EXTERNAL_PRODS += RecoVertexLinearizationPointFinders
endif
ifeq ($(strip $(PhysicsTools/JetCharge)),)
PhysicsToolsJetCharge := cmssw/PhysicsTools/JetCharge
PhysicsTools/JetCharge := PhysicsToolsJetCharge
PhysicsToolsJetCharge_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
PhysicsToolsJetCharge_EX_USE := $(foreach d, cmssw  DataFormats/Common FWCore/ParameterSet clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsJetCharge_EX_LIB   := PhysicsToolsJetCharge
ALL_EXTERNAL_PRODS += PhysicsToolsJetCharge
endif
ifeq ($(strip $(Alignment/Geners)),)
AlignmentGeners := cmssw/Alignment/Geners
Alignment/Geners := AlignmentGeners
AlignmentGeners_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AlignmentGeners_EX_USE := $(foreach d, cmssw  FWCore/Utilities zlib bz2lib,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AlignmentGeners_EX_LIB   := AlignmentGeners
ALL_EXTERNAL_PRODS += AlignmentGeners
endif
ifeq ($(strip $(TopQuarkAnalysis/TopSkimming)),)
TopQuarkAnalysisTopSkimming := cmssw/TopQuarkAnalysis/TopSkimming
TopQuarkAnalysis/TopSkimming := TopQuarkAnalysisTopSkimming
TopQuarkAnalysisTopSkimming_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TopQuarkAnalysisTopSkimming_EX_USE := $(foreach d, cmssw  FWCore/ParameterSet,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TopQuarkAnalysisTopSkimming_EX_LIB   := TopQuarkAnalysisTopSkimming
ALL_EXTERNAL_PRODS += TopQuarkAnalysisTopSkimming
endif
ifeq ($(strip $(RecoBTag/ImpactParameter)),)
src_RecoBTag_ImpactParameter := cmssw/RecoBTag/ImpactParameter
RecoBTag/ImpactParameter  := src_RecoBTag_ImpactParameter
src_RecoBTag_ImpactParameter_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
src_RecoBTag_ImpactParameter_EX_USE := $(foreach d, DataFormats/BTauReco cmssw,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_RecoBTag_ImpactParameter
endif

ifeq ($(strip $(Validation/Tools)),)
src_Validation_Tools := cmssw/Validation/Tools
Validation/Tools  := src_Validation_Tools
src_Validation_Tools_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
src_Validation_Tools_EX_USE := $(foreach d, cmssw root DQMServices/Core,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_Validation_Tools
endif

ifeq ($(strip $(RecoHI/HiTracking)),)
RecoHIHiTracking := cmssw/RecoHI/HiTracking
RecoHI/HiTracking := RecoHIHiTracking
RecoHIHiTracking_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoHIHiTracking_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/ParameterSet FWCore/PluginManager FWCore/Utilities Geometry/Records Geometry/TrackerGeometryBuilder TrackingTools/PatternTools RecoPixelVertexing/PixelTriplets RecoPixelVertexing/PixelTrackFitting RecoPixelVertexing/PixelLowPtUtilities SimDataFormats/GeneratorProducts RecoVertex/VertexTools TrackingTools/TrajectoryCleaning TrackingTools/TrajectoryFiltering TrackingTools/Records RecoLocalTracker/Records MagneticField/Records DataFormats/ParticleFlowCandidate,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoHIHiTracking_EX_LIB   := RecoHIHiTracking
ALL_EXTERNAL_PRODS += RecoHIHiTracking
endif
ifeq ($(strip $(Alignment/CocoaAnalysis)),)
AlignmentCocoaAnalysis := cmssw/Alignment/CocoaAnalysis
Alignment/CocoaAnalysis := AlignmentCocoaAnalysis
AlignmentCocoaAnalysis_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AlignmentCocoaAnalysis_EX_USE := $(foreach d, cmssw  Alignment/CocoaUtilities Alignment/CocoaModel clhep rootcore meschach,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AlignmentCocoaAnalysis_EX_LIB   := AlignmentCocoaAnalysis
ALL_EXTERNAL_PRODS += AlignmentCocoaAnalysis
endif
ifeq ($(strip $(DQMOffline/RecoB)),)
DQMOfflineRecoB := cmssw/DQMOffline/RecoB
DQMOffline/RecoB := DQMOfflineRecoB
DQMOfflineRecoB_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMOfflineRecoB_EX_USE := $(foreach d, cmssw  DataFormats/BTauReco DataFormats/Common DataFormats/JetReco DataFormats/TrackReco SimDataFormats/JetMatching FWCore/Framework FWCore/ParameterSet CondFormats/DataRecord RecoBTau/JetTagComputer rootcore DQMServices/Core rootgpad JetMETCorrections/Objects boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMOfflineRecoB_EX_LIB   := DQMOfflineRecoB
ALL_EXTERNAL_PRODS += DQMOfflineRecoB
endif
ifeq ($(strip $(JetMETCorrections/FFTJetObjects)),)
JetMETCorrectionsFFTJetObjects := cmssw/JetMETCorrections/FFTJetObjects
JetMETCorrections/FFTJetObjects := JetMETCorrectionsFFTJetObjects
JetMETCorrectionsFFTJetObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
JetMETCorrectionsFFTJetObjects_EX_USE := $(foreach d, cmssw  root FWCore/Framework FWCore/ParameterSet DataFormats/Common DataFormats/JetReco CondFormats/DataRecord CondFormats/JetMETObjects JetMETCorrections/InterpolationTables,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
JetMETCorrectionsFFTJetObjects_EX_LIB   := JetMETCorrectionsFFTJetObjects
ALL_EXTERNAL_PRODS += JetMETCorrectionsFFTJetObjects
endif
ifeq ($(strip $(L1Trigger/DTTriggerServerPhi)),)
L1TriggerDTTriggerServerPhi := cmssw/L1Trigger/DTTriggerServerPhi
L1Trigger/DTTriggerServerPhi := L1TriggerDTTriggerServerPhi
L1TriggerDTTriggerServerPhi_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
L1TriggerDTTriggerServerPhi_EX_USE := $(foreach d, cmssw  FWCore/PluginManager FWCore/ParameterSet Geometry/DTGeometry L1TriggerConfig/DTTPGConfig L1Trigger/DTUtilities L1Trigger/DTTraco clhep root rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
L1TriggerDTTriggerServerPhi_EX_LIB   := L1TriggerDTTriggerServerPhi
ALL_EXTERNAL_PRODS += L1TriggerDTTriggerServerPhi
endif
ifeq ($(strip $(Geometry/EcalTestBeam)),)
GeometryEcalTestBeam := cmssw/Geometry/EcalTestBeam
Geometry/EcalTestBeam := GeometryEcalTestBeam
GeometryEcalTestBeam_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeometryEcalTestBeam_EX_USE := $(foreach d, cmssw  FWCore/Utilities FWCore/MessageLogger Geometry/CaloGeometry Geometry/EcalCommonData SimDataFormats/EcalTestBeam clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryEcalTestBeam_EX_LIB   := GeometryEcalTestBeam
ALL_EXTERNAL_PRODS += GeometryEcalTestBeam
endif
ifeq ($(strip $(CommonTools/Statistics)),)
CommonToolsStatistics := cmssw/CommonTools/Statistics
CommonTools/Statistics := CommonToolsStatistics
CommonToolsStatistics_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CommonToolsStatistics_EX_USE := $(foreach d, cmssw  clhep boost DataFormats/CLHEP FWCore/MessageLogger,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CommonToolsStatistics_EX_LIB   := CommonToolsStatistics
ALL_EXTERNAL_PRODS += CommonToolsStatistics
endif
ifeq ($(strip $(Geometry/RPCGeometry)),)
GeometryRPCGeometry := cmssw/Geometry/RPCGeometry
Geometry/RPCGeometry := GeometryRPCGeometry
GeometryRPCGeometry_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeometryRPCGeometry_EX_USE := $(foreach d, cmssw  Geometry/CommonDetUnit Geometry/CommonTopologies DataFormats/MuonDetId,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryRPCGeometry_EX_LIB   := GeometryRPCGeometry
ALL_EXTERNAL_PRODS += GeometryRPCGeometry
endif
ifeq ($(strip $(RecoTracker/ConversionSeedGenerators)),)
RecoTrackerConversionSeedGenerators := cmssw/RecoTracker/ConversionSeedGenerators
RecoTracker/ConversionSeedGenerators := RecoTrackerConversionSeedGenerators
RecoTrackerConversionSeedGenerators_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoTrackerConversionSeedGenerators_EX_USE := $(foreach d, cmssw  root FWCore/Framework FWCore/PluginManager DataFormats/Common FWCore/ParameterSet Geometry/Records Geometry/CommonDetUnit DataFormats/TrajectorySeed DataFormats/TrackerRecHit2D Geometry/CommonTopologies Geometry/TrackerGeometryBuilder DataFormats/DetId DataFormats/SiStripDetId TrackingTools/PatternTools MagneticField/Records MagneticField/Engine TrackingTools/KalmanUpdators TrackingTools/Records RecoLocalTracker/ClusterParameterEstimator RecoTracker/TransientTrackingRecHit RecoTracker/TkSeedGenerator RecoTracker/TkSeedingLayers TrackingTools/TransientTrackingRecHit RecoTracker/TkMSParametrization TrackingTools/DetLayers RecoTracker/TkHitPairs RecoTracker/TkTrackingRegions,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoTrackerConversionSeedGenerators_EX_LIB   := RecoTrackerConversionSeedGenerators
ALL_EXTERNAL_PRODS += RecoTrackerConversionSeedGenerators
endif
ifeq ($(strip $(CommonTools/ParticleFlow)),)
CommonToolsParticleFlow := cmssw/CommonTools/ParticleFlow
CommonTools/ParticleFlow := CommonToolsParticleFlow
CommonToolsParticleFlow_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CommonToolsParticleFlow_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/ParticleFlowCandidate DataFormats/EgammaCandidates DataFormats/METReco DataFormats/JetReco DataFormats/PatCandidates rootmath FWCore/ParameterSet,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CommonToolsParticleFlow_EX_LIB   := CommonToolsParticleFlow
ALL_EXTERNAL_PRODS += CommonToolsParticleFlow
endif
ifeq ($(strip $(Calibration/Tools)),)
CalibrationTools := cmssw/Calibration/Tools
Calibration/Tools := CalibrationTools
CalibrationTools_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibrationTools_EX_USE := $(foreach d, cmssw  Utilities/Timing FWCore/Framework FWCore/ParameterSet DataFormats/EcalRecHit DataFormats/EgammaReco DataFormats/CaloTowers DataFormats/HcalDetId DataFormats/EgammaCandidates rootcore rootminuit rootgraphics Geometry/CaloGeometry Geometry/CommonDetUnit Geometry/TrackerGeometryBuilder DataFormats/GeometrySurface Geometry/Records DataFormats/DetId TrackingTools/GeomPropagators MagneticField/Engine MagneticField/Records TrackPropagation/SteppingHelixPropagator,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibrationTools_EX_LIB   := CalibrationTools
ALL_EXTERNAL_PRODS += CalibrationTools
endif
ifeq ($(strip $(DataFormats/TrackerCommon)),)
DataFormatsTrackerCommon := cmssw/DataFormats/TrackerCommon
DataFormats/TrackerCommon := DataFormatsTrackerCommon
DataFormatsTrackerCommon_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsTrackerCommon_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/SiStripCluster DataFormats/SiPixelDetId FWCore/MessageLogger FWCore/Utilities rootcintex,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsTrackerCommon_EX_LIB   := DataFormatsTrackerCommon
ALL_EXTERNAL_PRODS += DataFormatsTrackerCommon
endif
ifeq ($(strip $(FastSimulation/Calorimetry)),)
FastSimulationCalorimetry := cmssw/FastSimulation/Calorimetry
FastSimulation/Calorimetry := FastSimulationCalorimetry
FastSimulationCalorimetry_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FastSimulationCalorimetry_EX_USE := $(foreach d, cmssw  DataFormats/DetId DataFormats/HcalDetId FWCore/MessageLogger FWCore/ParameterSet SimG4CMS/Calo FastSimulation/CaloGeometryTools FastSimulation/CaloHitMakers FastSimulation/Event FastSimulation/Particle FastSimulation/ParticlePropagator FastSimulation/ShowerDevelopment FastSimulation/Utilities FastSimulation/MaterialEffects CondFormats/DataRecord FWCore/ServiceRegistry DQMServices/Core SimG4Core/GFlash,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FastSimulationCalorimetry_EX_LIB   := FastSimulationCalorimetry
ALL_EXTERNAL_PRODS += FastSimulationCalorimetry
endif
ifeq ($(strip $(DataFormats/EcalRecHit)),)
DataFormatsEcalRecHit := cmssw/DataFormats/EcalRecHit
DataFormats/EcalRecHit := DataFormatsEcalRecHit
DataFormatsEcalRecHit_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsEcalRecHit_EX_USE := $(foreach d, cmssw  DataFormats/CaloRecHit DataFormats/Common DataFormats/EcalDetId rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsEcalRecHit_EX_LIB   := DataFormatsEcalRecHit
ALL_EXTERNAL_PRODS += DataFormatsEcalRecHit
endif
ifeq ($(strip $(RecoVZero/VZeroFinding)),)
RecoVZeroVZeroFinding := cmssw/RecoVZero/VZeroFinding
RecoVZero/VZeroFinding := RecoVZeroVZeroFinding
RecoVZeroVZeroFinding_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoVZeroVZeroFinding_EX_USE := $(foreach d, cmssw  MagneticField/Records MagneticField/Engine FWCore/Framework FWCore/ParameterSet FWCore/PluginManager Geometry/Records TrackingTools/PatternTools,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoVZeroVZeroFinding_EX_LIB   := RecoVZeroVZeroFinding
ALL_EXTERNAL_PRODS += RecoVZeroVZeroFinding
endif
ifeq ($(strip $(Alignment/CocoaModel)),)
AlignmentCocoaModel := cmssw/Alignment/CocoaModel
Alignment/CocoaModel := AlignmentCocoaModel
AlignmentCocoaModel_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AlignmentCocoaModel_EX_USE := $(foreach d, cmssw  clhep Alignment/CocoaUtilities Alignment/CocoaDDLObjects Alignment/CocoaDaq CondFormats/OptAlignObjects FWCore/ParameterSet,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AlignmentCocoaModel_EX_LIB   := AlignmentCocoaModel
ALL_EXTERNAL_PRODS += AlignmentCocoaModel
endif
ifeq ($(strip $(HLTrigger/HLTcore)),)
HLTriggerHLTcore := cmssw/HLTrigger/HLTcore
HLTrigger/HLTcore := HLTriggerHLTcore
HLTriggerHLTcore_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
HLTriggerHLTcore_EX_USE := $(foreach d, cmssw  boost DataFormats/Common FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Services FWCore/MessageLogger L1Trigger/GlobalTriggerAnalyzer CondCore/DBOutputService CondFormats/HLTObjects CondFormats/DataRecord,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
HLTriggerHLTcore_EX_LIB   := HLTriggerHLTcore
ALL_EXTERNAL_PRODS += HLTriggerHLTcore
endif
ifeq ($(strip $(DataFormats/Provenance)),)
DataFormatsProvenance := cmssw/DataFormats/Provenance
DataFormats/Provenance := DataFormatsProvenance
DataFormatsProvenance_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsProvenance_EX_USE := $(foreach d, cmssw  FWCore/Utilities boost rootcore tbb FWCore/MessageLogger,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsProvenance_EX_LIB   := DataFormatsProvenance
ALL_EXTERNAL_PRODS += DataFormatsProvenance
endif
ifeq ($(strip $(Geometry/DTGeometry)),)
GeometryDTGeometry := cmssw/Geometry/DTGeometry
Geometry/DTGeometry := GeometryDTGeometry
GeometryDTGeometry_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeometryDTGeometry_EX_USE := $(foreach d, cmssw  Geometry/CommonDetUnit DataFormats/MuonDetId,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryDTGeometry_EX_LIB   := GeometryDTGeometry
ALL_EXTERNAL_PRODS += GeometryDTGeometry
endif
ifeq ($(strip $(QCDAnalysis/Skimming)),)
QCDAnalysisSkimming := cmssw/QCDAnalysis/Skimming
QCDAnalysis/Skimming := QCDAnalysisSkimming
QCDAnalysisSkimming_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
QCDAnalysisSkimming_EX_USE := $(foreach d, cmssw  DataFormats/Common FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager FWCore/Utilities Geometry/Records SimDataFormats/GeneratorProducts DataFormats/EgammaCandidates DataFormats/TrackReco DataFormats/JetReco clhep root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
QCDAnalysisSkimming_EX_LIB   := QCDAnalysisSkimming
ALL_EXTERNAL_PRODS += QCDAnalysisSkimming
endif
ifeq ($(strip $(GeneratorInterface/ExhumeInterface)),)
GeneratorInterfaceExhumeInterface := cmssw/GeneratorInterface/ExhumeInterface
GeneratorInterface/ExhumeInterface := GeneratorInterfaceExhumeInterface
GeneratorInterfaceExhumeInterface_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeneratorInterfaceExhumeInterface_EX_USE := $(foreach d, cmssw  FWCore/Framework GeneratorInterface/Core GeneratorInterface/Pythia6Interface SimDataFormats/GeneratorProducts boost clhep f77compiler heppdt,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeneratorInterfaceExhumeInterface_EX_LIB   := GeneratorInterfaceExhumeInterface
ALL_EXTERNAL_PRODS += GeneratorInterfaceExhumeInterface
endif
ifeq ($(strip $(CommonTools/TrackerMap)),)
CommonToolsTrackerMap := cmssw/CommonTools/TrackerMap
CommonTools/TrackerMap := CommonToolsTrackerMap
CommonToolsTrackerMap_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CommonToolsTrackerMap_EX_USE := $(foreach d, cmssw  FWCore/Framework CondFormats/SiStripObjects CalibFormats/SiStripObjects rootgraphics,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CommonToolsTrackerMap_EX_LIB   := CommonToolsTrackerMap
ALL_EXTERNAL_PRODS += CommonToolsTrackerMap
endif
ifeq ($(strip $(CondCore/Utilities)),)
CondCoreUtilities := cmssw/CondCore/Utilities
CondCore/Utilities := CondCoreUtilities
CondCoreUtilities_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondCoreUtilities_EX_USE := $(foreach d, cmssw  FWCore/Utilities FWCore/PluginManager FWCore/MessageLogger FWCore/Framework FWCore/Concurrency boost boost_program_options CondCore/ORA CondCore/DBCommon CondCore/IOVService CondCore/MetaDataService CondCore/TagCollection CondCore/CondDB CondFormats/HLTObjects CondFormats/Alignment CondFormats/BeamSpotObjects CondFormats/CastorObjects CondFormats/HIObjects CondFormats/CSCObjects CondFormats/DTObjects CondFormats/ESObjects CondFormats/EcalObjects CondFormats/EgammaObjects CondFormats/Luminosity CondFormats/HcalObjects CondFormats/JetMETObjects CondFormats/L1TObjects CondFormats/PhysicsToolsObjects CondFormats/GeometryObjects CondFormats/RPCObjects CondFormats/RunInfo CondFormats/SiPixelObjects CondFormats/SiStripObjects CondFormats/Common CondFormats/BTauObjects rootcintex,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondCoreUtilities_EX_LIB   := CondCoreUtilities
ALL_EXTERNAL_PRODS += CondCoreUtilities
endif
ifeq ($(strip $(DataFormats/MuonData)),)
DataFormatsMuonData := cmssw/DataFormats/MuonData
DataFormats/MuonData := DataFormatsMuonData
DataFormatsMuonData_EX_USE := $(foreach d, cmssw  ,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += DataFormatsMuonData
endif
ifeq ($(strip $(DQM/EcalEndcapMonitorModule)),)
DQMEcalEndcapMonitorModule := cmssw/DQM/EcalEndcapMonitorModule
DQM/EcalEndcapMonitorModule := DQMEcalEndcapMonitorModule
DQMEcalEndcapMonitorModule_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMEcalEndcapMonitorModule_EX_USE := $(foreach d, cmssw  DQM/EcalCommon DQMServices/Core DataFormats/EcalDetId DataFormats/EcalDigi DataFormats/EcalRawData DataFormats/EcalRecHit FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMEcalEndcapMonitorModule_EX_LIB   := DQMEcalEndcapMonitorModule
ALL_EXTERNAL_PRODS += DQMEcalEndcapMonitorModule
endif
ifeq ($(strip $(Mixing/Base)),)
MixingBase := cmssw/Mixing/Base
Mixing/Base := MixingBase
MixingBase_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
MixingBase_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/Provenance FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Sources FWCore/Utilities FWCore/Version boost clhep roothistmatrix CondFormats/RunInfo CondFormats/DataRecord,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
MixingBase_EX_LIB   := MixingBase
ALL_EXTERNAL_PRODS += MixingBase
endif
ifeq ($(strip $(DataFormats/L1CSCTrackFinder)),)
DataFormatsL1CSCTrackFinder := cmssw/DataFormats/L1CSCTrackFinder
DataFormats/L1CSCTrackFinder := DataFormatsL1CSCTrackFinder
DataFormatsL1CSCTrackFinder_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsL1CSCTrackFinder_EX_USE := $(foreach d, cmssw  DataFormats/CSCDigi DataFormats/Common DataFormats/DetId DataFormats/L1GlobalMuonTrigger DataFormats/MuonDetId rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsL1CSCTrackFinder_EX_LIB   := DataFormatsL1CSCTrackFinder
ALL_EXTERNAL_PRODS += DataFormatsL1CSCTrackFinder
endif
ifeq ($(strip $(RecoBTag/BTagTools)),)
RecoBTagBTagTools := cmssw/RecoBTag/BTagTools
RecoBTag/BTagTools := RecoBTagBTagTools
RecoBTagBTagTools_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoBTagBTagTools_EX_USE := $(foreach d, cmssw  DataFormats/GeometrySurface DataFormats/GeometryVector DataFormats/VertexReco FWCore/MessageLogger TrackingTools/GeomPropagators TrackingTools/PatternTools TrackingTools/TrajectoryState clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoBTagBTagTools_EX_LIB   := RecoBTagBTagTools
ALL_EXTERNAL_PRODS += RecoBTagBTagTools
endif
ifeq ($(strip $(TrackPropagation/SteppingHelixPropagator)),)
TrackPropagationSteppingHelixPropagator := cmssw/TrackPropagation/SteppingHelixPropagator
TrackPropagation/SteppingHelixPropagator := TrackPropagationSteppingHelixPropagator
TrackPropagationSteppingHelixPropagator_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TrackPropagationSteppingHelixPropagator_EX_USE := $(foreach d, cmssw  TrackingTools/GeomPropagators FWCore/MessageLogger MagneticField/Engine MagneticField/VolumeBasedEngine MagneticField/VolumeGeometry FWCore/Framework FWCore/PluginManager FWCore/ParameterSet TrackingTools/AnalyticalJacobians,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TrackPropagationSteppingHelixPropagator_EX_LIB   := TrackPropagationSteppingHelixPropagator
ALL_EXTERNAL_PRODS += TrackPropagationSteppingHelixPropagator
endif
ifeq ($(strip $(DataFormats/EgammaTrackReco)),)
DataFormatsEgammaTrackReco := cmssw/DataFormats/EgammaTrackReco
DataFormats/EgammaTrackReco := DataFormatsEgammaTrackReco
DataFormatsEgammaTrackReco_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsEgammaTrackReco_EX_USE := $(foreach d, cmssw  DataFormats/Common rootrflx clhepheader,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsEgammaTrackReco_EX_LIB   := DataFormatsEgammaTrackReco
ALL_EXTERNAL_PRODS += DataFormatsEgammaTrackReco
endif
ifeq ($(strip $(DataFormats/SiPixelRawData)),)
DataFormatsSiPixelRawData := cmssw/DataFormats/SiPixelRawData
DataFormats/SiPixelRawData := DataFormatsSiPixelRawData
DataFormatsSiPixelRawData_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsSiPixelRawData_EX_USE := $(foreach d, cmssw  DataFormats/Common rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsSiPixelRawData_EX_LIB   := DataFormatsSiPixelRawData
ALL_EXTERNAL_PRODS += DataFormatsSiPixelRawData
endif
ifeq ($(strip $(CondTools/DQM)),)
CondToolsDQM := cmssw/CondTools/DQM
CondTools/DQM := CondToolsDQM
CondToolsDQM_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondToolsDQM_EX_USE := $(foreach d, cmssw  CondCore/CondDB CondFormats/Common CoralBase DataFormats/Provenance FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry RelationalAccess rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondToolsDQM_EX_LIB   := CondToolsDQM
ALL_EXTERNAL_PRODS += CondToolsDQM
endif
ifeq ($(strip $(DataFormats/RPCRecHit)),)
DataFormatsRPCRecHit := cmssw/DataFormats/RPCRecHit
DataFormats/RPCRecHit := DataFormatsRPCRecHit
DataFormatsRPCRecHit_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsRPCRecHit_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/MuonDetId DataFormats/TrackingRecHit rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsRPCRecHit_EX_LIB   := DataFormatsRPCRecHit
ALL_EXTERNAL_PRODS += DataFormatsRPCRecHit
endif
ifeq ($(strip $(CondCore/PopCon)),)
CondCorePopCon := cmssw/CondCore/PopCon
CondCore/PopCon := CondCorePopCon
CondCorePopCon_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondCorePopCon_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/ParameterSet CondCore/DBOutputService,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondCorePopCon_EX_LIB   := CondCorePopCon
ALL_EXTERNAL_PRODS += CondCorePopCon
endif
ifeq ($(strip $(PhysicsTools/MVATrainer)),)
PhysicsToolsMVATrainer := cmssw/PhysicsTools/MVATrainer
PhysicsTools/MVATrainer := PhysicsToolsMVATrainer
PhysicsToolsMVATrainer_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
PhysicsToolsMVATrainer_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities FWCore/Concurrency CondFormats/PhysicsToolsObjects CondCore/DBOutputService PhysicsTools/MVAComputer boost rootcore roothistmatrix xerces-c,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsMVATrainer_EX_LIB   := PhysicsToolsMVATrainer
ALL_EXTERNAL_PRODS += PhysicsToolsMVATrainer
endif
ifeq ($(strip $(DQMServices/Diagnostic)),)
DQMServicesDiagnostic := cmssw/DQMServices/Diagnostic
DQMServices/Diagnostic := DQMServicesDiagnostic
DQMServicesDiagnostic_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMServicesDiagnostic_EX_USE := $(foreach d, cmssw  CondCore/Utilities CondFormats/DQMObjects DQMServices/Core rootgraphics,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMServicesDiagnostic_EX_LIB   := DQMServicesDiagnostic
ALL_EXTERNAL_PRODS += DQMServicesDiagnostic
endif
ifeq ($(strip $(Fireworks/TableWidget)),)
FireworksTableWidget := cmssw/Fireworks/TableWidget
Fireworks/TableWidget := FireworksTableWidget
FireworksTableWidget_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FireworksTableWidget_EX_USE := $(foreach d, cmssw  rootcintex rootinteractive,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FireworksTableWidget_EX_LIB   := FireworksTableWidget
ALL_EXTERNAL_PRODS += FireworksTableWidget
endif
ifeq ($(strip $(SimG4Core/CustomPhysics)),)
SimG4CoreCustomPhysics := cmssw/SimG4Core/CustomPhysics
SimG4Core/CustomPhysics := SimG4CoreCustomPhysics
SimG4CoreCustomPhysics_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CoreCustomPhysics_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/PluginManager FWCore/MessageLogger SimG4Core/Physics SimG4Core/PhysicsLists geant4core clhep boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CoreCustomPhysics_EX_LIB   := SimG4CoreCustomPhysics
ALL_EXTERNAL_PRODS += SimG4CoreCustomPhysics
endif
ifeq ($(strip $(Validation/L1T)),)
ValidationL1T := cmssw/Validation/L1T
Validation/L1T := ValidationL1T
ValidationL1T_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
ValidationL1T_EX_USE := $(foreach d, cmssw  root DQMServices/ClientConfig DQMServices/Core DataFormats/RecoCandidate,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ValidationL1T_EX_LIB   := ValidationL1T
ALL_EXTERNAL_PRODS += ValidationL1T
endif
ifeq ($(strip $(Alignment/TwoBodyDecay)),)
AlignmentTwoBodyDecay := cmssw/Alignment/TwoBodyDecay
Alignment/TwoBodyDecay := AlignmentTwoBodyDecay
AlignmentTwoBodyDecay_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AlignmentTwoBodyDecay_EX_USE := $(foreach d, cmssw  rootmath boost FWCore/Framework FWCore/Utilities FWCore/ParameterSet RecoVertex/VertexTools RecoVertex/LinearizationPointFinders TrackingTools/TransientTrack,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AlignmentTwoBodyDecay_EX_LIB   := AlignmentTwoBodyDecay
ALL_EXTERNAL_PRODS += AlignmentTwoBodyDecay
endif
ifeq ($(strip $(SimMuon/Neutron)),)
SimMuonNeutron := cmssw/SimMuon/Neutron
SimMuon/Neutron := SimMuonNeutron
SimMuonNeutron_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimMuonNeutron_EX_USE := $(foreach d, cmssw  SimDataFormats/EncodedEventId FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger clhep rootcore,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimMuonNeutron_EX_LIB   := SimMuonNeutron
ALL_EXTERNAL_PRODS += SimMuonNeutron
endif
ifeq ($(strip $(RecoTracker/TkTrackingRegions)),)
RecoTrackerTkTrackingRegions := cmssw/RecoTracker/TkTrackingRegions
RecoTracker/TkTrackingRegions := RecoTrackerTkTrackingRegions
RecoTrackerTkTrackingRegions_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoTrackerTkTrackingRegions_EX_USE := $(foreach d, cmssw  clhep boost FWCore/Framework FWCore/PluginManager FWCore/ParameterSet Geometry/TrackerGeometryBuilder RecoTracker/Record RecoTracker/TkSeedingLayers RecoTracker/TkMSParametrization RecoTracker/MeasurementDet TrackingTools/PatternTools TrackingTools/TransientTrackingRecHit TrackingTools/MeasurementDet TrackingTools/KalmanUpdators,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoTrackerTkTrackingRegions_EX_LIB   := RecoTrackerTkTrackingRegions
ALL_EXTERNAL_PRODS += RecoTrackerTkTrackingRegions
endif
ifeq ($(strip $(SimCalorimetry/CaloSimAlgos)),)
SimCalorimetryCaloSimAlgos := cmssw/SimCalorimetry/CaloSimAlgos
SimCalorimetry/CaloSimAlgos := SimCalorimetryCaloSimAlgos
SimCalorimetryCaloSimAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimCalorimetryCaloSimAlgos_EX_USE := $(foreach d, cmssw  CalibFormats/CaloObjects DataFormats/DetId SimDataFormats/CaloHit SimDataFormats/EncodedEventId SimDataFormats/GeneratorProducts hepmc DataFormats/Common Geometry/CaloGeometry FWCore/MessageLogger FWCore/ServiceRegistry clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimCalorimetryCaloSimAlgos_EX_LIB   := SimCalorimetryCaloSimAlgos
ALL_EXTERNAL_PRODS += SimCalorimetryCaloSimAlgos
endif
ifeq ($(strip $(RecoMuon/MuonIsolation)),)
RecoMuonMuonIsolation := cmssw/RecoMuon/MuonIsolation
RecoMuon/MuonIsolation := RecoMuonMuonIsolation
RecoMuonMuonIsolation_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoMuonMuonIsolation_EX_USE := $(foreach d, cmssw  DataFormats/Candidate DataFormats/MuonReco DataFormats/RecoCandidate DataFormats/TrackReco FWCore/MessageLogger FWCore/ParameterSet PhysicsTools/IsolationAlgos,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoMuonMuonIsolation_EX_LIB   := RecoMuonMuonIsolation
ALL_EXTERNAL_PRODS += RecoMuonMuonIsolation
endif
ifeq ($(strip $(DetectorDescription/Algorithm)),)
DetectorDescriptionAlgorithm := cmssw/DetectorDescription/Algorithm
DetectorDescription/Algorithm := DetectorDescriptionAlgorithm
DetectorDescriptionAlgorithm_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DetectorDescriptionAlgorithm_EX_USE := $(foreach d, cmssw  DetectorDescription/Base DetectorDescription/Core DetectorDescription/ExprAlgo FWCore/PluginManager clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DetectorDescriptionAlgorithm_EX_LIB   := DetectorDescriptionAlgorithm
ALL_EXTERNAL_PRODS += DetectorDescriptionAlgorithm
endif
ifeq ($(strip $(FastSimulation/TrajectoryManager)),)
FastSimulationTrajectoryManager := cmssw/FastSimulation/TrajectoryManager
FastSimulation/TrajectoryManager := FastSimulationTrajectoryManager
FastSimulationTrajectoryManager_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FastSimulationTrajectoryManager_EX_USE := $(foreach d, cmssw  DataFormats/GeometrySurface DataFormats/GeometryVector DataFormats/SiStripDetId FWCore/MessageLogger FWCore/ParameterSet FastSimulation/Event FastSimulation/MaterialEffects FastSimulation/ParticleDecay FastSimulation/ParticlePropagator FastSimulation/TrackerSetup FastSimulation/Utilities Geometry/CommonDetUnit MagneticField/Engine RecoTracker/TkDetLayers TrackingTools/DetLayers TrackingTools/GeomPropagators TrackingTools/PatternTools TrackingTools/TrajectoryState,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FastSimulationTrajectoryManager_EX_LIB   := FastSimulationTrajectoryManager
ALL_EXTERNAL_PRODS += FastSimulationTrajectoryManager
endif
ifeq ($(strip $(CondFormats/OptAlignObjects)),)
CondFormatsOptAlignObjects := cmssw/CondFormats/OptAlignObjects
CondFormats/OptAlignObjects := CondFormatsOptAlignObjects
CondFormatsOptAlignObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondFormatsOptAlignObjects_EX_USE := $(foreach d, cmssw  CondFormats/Common DataFormats/Common FWCore/Utilities rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsOptAlignObjects_EX_LIB   := CondFormatsOptAlignObjects
ALL_EXTERNAL_PRODS += CondFormatsOptAlignObjects
endif
ifeq ($(strip $(TrackingTools/TrackAssociator)),)
TrackingToolsTrackAssociator := cmssw/TrackingTools/TrackAssociator
TrackingTools/TrackAssociator := TrackingToolsTrackAssociator
TrackingToolsTrackAssociator_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TrackingToolsTrackAssociator_EX_USE := $(foreach d, cmssw  CondFormats/CSCObjects DataFormats/CaloTowers DataFormats/Common DataFormats/DetId DataFormats/DTRecHit DataFormats/CSCRecHit DataFormats/EcalDetId DataFormats/GeometrySurface DataFormats/GeometryVector DataFormats/HcalDetId DataFormats/Math DataFormats/MuonDetId DataFormats/SiPixelDetId DataFormats/SiStripDetId DataFormats/TrackingRecHit DataFormats/TrackReco FWCore/Framework FWCore/MessageLogger FWCore/PluginManager FWCore/ParameterSet FWCore/Utilities Geometry/CaloGeometry Geometry/CommonDetUnit Geometry/CSCGeometry Geometry/RPCGeometry Geometry/DTGeometry Geometry/Records MagneticField/Engine MagneticField/Records TrackingTools/GeomPropagators TrackingTools/Records TrackingTools/TrajectoryState TrackPropagation/SteppingHelixPropagator,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TrackingToolsTrackAssociator_EX_LIB   := TrackingToolsTrackAssociator
ALL_EXTERNAL_PRODS += TrackingToolsTrackAssociator
endif
ifeq ($(strip $(CondFormats/RecoMuonObjects)),)
CondFormatsRecoMuonObjects := cmssw/CondFormats/RecoMuonObjects
CondFormats/RecoMuonObjects := CondFormatsRecoMuonObjects
CondFormatsRecoMuonObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondFormatsRecoMuonObjects_EX_USE := $(foreach d, cmssw  FWCore/Utilities CondFormats/Common CondFormats/PhysicsToolsObjects rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsRecoMuonObjects_EX_LIB   := CondFormatsRecoMuonObjects
ALL_EXTERNAL_PRODS += CondFormatsRecoMuonObjects
endif
ifeq ($(strip $(DataFormats/MuonSeed)),)
DataFormatsMuonSeed := cmssw/DataFormats/MuonSeed
DataFormats/MuonSeed := DataFormatsMuonSeed
DataFormatsMuonSeed_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsMuonSeed_EX_USE := $(foreach d, cmssw  rootrflx clhepheader DataFormats/Common,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsMuonSeed_EX_LIB   := DataFormatsMuonSeed
ALL_EXTERNAL_PRODS += DataFormatsMuonSeed
endif
ifeq ($(strip $(PhysicsTools/JetMCAlgos)),)
PhysicsToolsJetMCAlgos := cmssw/PhysicsTools/JetMCAlgos
PhysicsTools/JetMCAlgos := PhysicsToolsJetMCAlgos
PhysicsToolsJetMCAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
PhysicsToolsJetMCAlgos_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet PhysicsTools/JetMCUtils,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsJetMCAlgos_EX_LIB   := PhysicsToolsJetMCAlgos
ALL_EXTERNAL_PRODS += PhysicsToolsJetMCAlgos
endif
ifeq ($(strip $(DQM/EcalEndcapMonitorTasks)),)
DQMEcalEndcapMonitorTasks := cmssw/DQM/EcalEndcapMonitorTasks
DQM/EcalEndcapMonitorTasks := DQMEcalEndcapMonitorTasks
DQMEcalEndcapMonitorTasks_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMEcalEndcapMonitorTasks_EX_USE := $(foreach d, cmssw  DQM/EcalCommon DQMServices/Core DataFormats/FEDRawData DataFormats/EcalDetId DataFormats/EcalDigi DataFormats/EcalRawData DataFormats/EcalRecHit TBDataFormats/EcalTBObjects DataFormats/EgammaReco DataFormats/Math DataFormats/L1GlobalTrigger FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry RecoEcal/EgammaCoreTools RecoLocalCalo/EcalRecAlgos CondFormats/DataRecord CondFormats/EcalObjects rootphysics,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMEcalEndcapMonitorTasks_EX_LIB   := DQMEcalEndcapMonitorTasks
ALL_EXTERNAL_PRODS += DQMEcalEndcapMonitorTasks
endif
ifeq ($(strip $(RecoVertex/AdaptiveVertexFinder)),)
RecoVertexAdaptiveVertexFinder := cmssw/RecoVertex/AdaptiveVertexFinder
RecoVertex/AdaptiveVertexFinder := RecoVertexAdaptiveVertexFinder
RecoVertexAdaptiveVertexFinder_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoVertexAdaptiveVertexFinder_EX_USE := $(foreach d, cmssw  RecoVertex/KalmanVertexFit RecoVertex/AdaptiveVertexFit RecoVertex/VertexPrimitives RecoVertex/VertexTools TrackingTools/IPTools,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoVertexAdaptiveVertexFinder_EX_LIB   := RecoVertexAdaptiveVertexFinder
ALL_EXTERNAL_PRODS += RecoVertexAdaptiveVertexFinder
endif
ifeq ($(strip $(SimMuon/MCTruth)),)
SimMuonMCTruth := cmssw/SimMuon/MCTruth
SimMuon/MCTruth := SimMuonMCTruth
SimMuonMCTruth_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimMuonMCTruth_EX_USE := $(foreach d, cmssw  CondFormats/DataRecord FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities DataFormats/Common DataFormats/GeometryVector DataFormats/CSCRecHit DataFormats/DTRecHit DataFormats/RPCRecHit DataFormats/TrackingRecHit DataFormats/TrackReco DataFormats/MuonReco DataFormats/TrackerCommon SimDataFormats/Track SimDataFormats/TrackingHit SimDataFormats/TrackerDigiSimLink SimDataFormats/DigiSimLinks SimTracker/TrackerHitAssociation SimDataFormats/TrackingAnalysis CondFormats/CSCObjects Geometry/CommonTopologies Geometry/Records Geometry/CSCGeometry Geometry/DTGeometry Geometry/TrackerNumberingBuilder boost clhep root rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimMuonMCTruth_EX_LIB   := SimMuonMCTruth
ALL_EXTERNAL_PRODS += SimMuonMCTruth
endif
ifeq ($(strip $(CommonTools/CandUtils)),)
CommonToolsCandUtils := cmssw/CommonTools/CandUtils
CommonTools/CandUtils := CommonToolsCandUtils
CommonToolsCandUtils_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CommonToolsCandUtils_EX_USE := $(foreach d, cmssw  DataFormats/Candidate,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CommonToolsCandUtils_EX_LIB   := CommonToolsCandUtils
ALL_EXTERNAL_PRODS += CommonToolsCandUtils
endif
ifeq ($(strip $(SimTracker/Records)),)
SimTrackerRecords := cmssw/SimTracker/Records
SimTracker/Records := SimTrackerRecords
SimTrackerRecords_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimTrackerRecords_EX_USE := $(foreach d, cmssw  boost root clhep FWCore/Framework FWCore/Utilities MagneticField/Records TrackingTools/Records Geometry/Records,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimTrackerRecords_EX_LIB   := SimTrackerRecords
ALL_EXTERNAL_PRODS += SimTrackerRecords
endif
ifeq ($(strip $(DataFormats/HeavyIonEvent)),)
DataFormatsHeavyIonEvent := cmssw/DataFormats/HeavyIonEvent
DataFormats/HeavyIonEvent := DataFormatsHeavyIonEvent
DataFormatsHeavyIonEvent_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsHeavyIonEvent_EX_USE := $(foreach d, cmssw  root rootrflx DataFormats/Common CondFormats/HIObjects CondFormats/DataRecord,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsHeavyIonEvent_EX_LIB   := DataFormatsHeavyIonEvent
ALL_EXTERNAL_PRODS += DataFormatsHeavyIonEvent
endif
ifeq ($(strip $(SimG4CMS/Forward)),)
SimG4CMSForward := cmssw/SimG4CMS/Forward
SimG4CMS/Forward := SimG4CMSForward
SimG4CMSForward_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CMSForward_EX_USE := $(foreach d, cmssw  FWCore/PluginManager SimG4Core/Watcher SimG4Core/SensitiveDetector SimG4Core/Notification SimG4Core/Application SimG4CMS/Calo DataFormats/Math SimDataFormats/SimHitMaker SimDataFormats/CaloHit SimDataFormats/Forward DetectorDescription/Core FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger boost geant4core root rootmath,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CMSForward_EX_LIB   := SimG4CMSForward
ALL_EXTERNAL_PRODS += SimG4CMSForward
endif
ifeq ($(strip $(RecoJets/FFTJetProducers)),)
RecoJetsFFTJetProducers := cmssw/RecoJets/FFTJetProducers
RecoJets/FFTJetProducers := RecoJetsFFTJetProducers
RecoJetsFFTJetProducers_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoJetsFFTJetProducers_EX_USE := $(foreach d, cmssw  FWCore/Framework RecoJets/FFTJetAlgorithms RecoJets/JetProducers,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoJetsFFTJetProducers_EX_LIB   := RecoJetsFFTJetProducers
ALL_EXTERNAL_PRODS += RecoJetsFFTJetProducers
endif
ifeq ($(strip $(RecoMuon/GlobalTrackFinder)),)
RecoMuonGlobalTrackFinder := cmssw/RecoMuon/GlobalTrackFinder
RecoMuon/GlobalTrackFinder := RecoMuonGlobalTrackFinder
RecoMuonGlobalTrackFinder_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoMuonGlobalTrackFinder_EX_USE := $(foreach d, cmssw  DataFormats/TrackReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry RecoMuon/GlobalTrackingTools RecoMuon/TrackingTools TrackingTools/PatternTools,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoMuonGlobalTrackFinder_EX_LIB   := RecoMuonGlobalTrackFinder
ALL_EXTERNAL_PRODS += RecoMuonGlobalTrackFinder
endif
ifeq ($(strip $(SimG4Core/Notification)),)
SimG4CoreNotification := cmssw/SimG4Core/Notification
SimG4Core/Notification := SimG4CoreNotification
SimG4CoreNotification_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CoreNotification_EX_USE := $(foreach d, cmssw  geant4core FWCore/MessageLogger rootmath expat,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CoreNotification_EX_LIB   := SimG4CoreNotification
ALL_EXTERNAL_PRODS += SimG4CoreNotification
endif
ifeq ($(strip $(Alignment/CocoaDDLObjects)),)
AlignmentCocoaDDLObjects := cmssw/Alignment/CocoaDDLObjects
Alignment/CocoaDDLObjects := AlignmentCocoaDDLObjects
AlignmentCocoaDDLObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AlignmentCocoaDDLObjects_EX_USE := $(foreach d, cmssw  clhep Alignment/CocoaUtilities,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AlignmentCocoaDDLObjects_EX_LIB   := AlignmentCocoaDDLObjects
ALL_EXTERNAL_PRODS += AlignmentCocoaDDLObjects
endif
ifeq ($(strip $(GeneratorInterface/Pythia6Interface)),)
GeneratorInterfacePythia6Interface := cmssw/GeneratorInterface/Pythia6Interface
GeneratorInterface/Pythia6Interface := GeneratorInterfacePythia6Interface
GeneratorInterfacePythia6Interface_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeneratorInterfacePythia6Interface_EX_USE := $(foreach d, cmssw  boost FWCore/Framework SimDataFormats/GeneratorProducts GeneratorInterface/Core clhep pythia6 f77compiler,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeneratorInterfacePythia6Interface_EX_LIB   := GeneratorInterfacePythia6Interface
ALL_EXTERNAL_PRODS += GeneratorInterfacePythia6Interface
endif
ifeq ($(strip $(RecoHI/HiMuonAlgos)),)
src_RecoHI_HiMuonAlgos := cmssw/RecoHI/HiMuonAlgos
RecoHI/HiMuonAlgos  := src_RecoHI_HiMuonAlgos
src_RecoHI_HiMuonAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
src_RecoHI_HiMuonAlgos_EX_USE := $(foreach d, RecoTracker/TransientTrackingRecHit TrackingTools/TransientTrack clhep FWCore/Framework cmssw DataFormats/VertexReco TrackingTools/TrackFitters DataFormats/L1GlobalMuonTrigger TrackingTools/MaterialEffects DataFormats/Math rootrflx RecoVertex/KalmanVertexFit TrackingTools/PatternTools TrackingTools/KalmanUpdators MagneticField/Records RecoTracker/TkNavigation TrackingTools/MeasurementDet Geometry/TrackerGeometryBuilder RecoVertex/VertexPrimitives DataFormats/Common RecoTracker/MeasurementDet RecoTracker/CkfPattern Geometry/Records DataFormats/TrackReco TrackingTools/TrajectoryCleaning DataFormats/GsfTrackReco MagneticField/Engine FWCore/ParameterSet,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_RecoHI_HiMuonAlgos
endif

ifeq ($(strip $(DataFormats/TrackingSeed)),)
DataFormatsTrackingSeed := cmssw/DataFormats/TrackingSeed
DataFormats/TrackingSeed := DataFormatsTrackingSeed
DataFormatsTrackingSeed_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsTrackingSeed_EX_USE := $(foreach d, cmssw  DataFormats/Common rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsTrackingSeed_EX_LIB   := DataFormatsTrackingSeed
ALL_EXTERNAL_PRODS += DataFormatsTrackingSeed
endif
ifeq ($(strip $(TrackingTools/RecoGeometry)),)
TrackingToolsRecoGeometry := cmssw/TrackingTools/RecoGeometry
TrackingTools/RecoGeometry := TrackingToolsRecoGeometry
TrackingToolsRecoGeometry_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TrackingToolsRecoGeometry_EX_USE := $(foreach d, cmssw  FWCore/Framework RecoTracker/Record RecoMuon/Records boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TrackingToolsRecoGeometry_EX_LIB   := TrackingToolsRecoGeometry
ALL_EXTERNAL_PRODS += TrackingToolsRecoGeometry
endif
ifeq ($(strip $(DataFormats/FP420Cluster)),)
DataFormatsFP420Cluster := cmssw/DataFormats/FP420Cluster
DataFormats/FP420Cluster := DataFormatsFP420Cluster
DataFormatsFP420Cluster_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsFP420Cluster_EX_USE := $(foreach d, cmssw  DataFormats/Common boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsFP420Cluster_EX_LIB   := DataFormatsFP420Cluster
ALL_EXTERNAL_PRODS += DataFormatsFP420Cluster
endif
ifeq ($(strip $(MagneticField/Engine)),)
MagneticFieldEngine := cmssw/MagneticField/Engine
MagneticField/Engine := MagneticFieldEngine
MagneticFieldEngine_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
MagneticFieldEngine_EX_USE := $(foreach d, cmssw  FWCore/Utilities,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
MagneticFieldEngine_EX_LIB   := MagneticFieldEngine
ALL_EXTERNAL_PRODS += MagneticFieldEngine
endif
ifeq ($(strip $(CalibCalorimetry/EcalCorrelatedNoiseAnalysisAlgos)),)
CalibCalorimetryEcalCorrelatedNoiseAnalysisAlgos := cmssw/CalibCalorimetry/EcalCorrelatedNoiseAnalysisAlgos
CalibCalorimetry/EcalCorrelatedNoiseAnalysisAlgos := CalibCalorimetryEcalCorrelatedNoiseAnalysisAlgos
CalibCalorimetryEcalCorrelatedNoiseAnalysisAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibCalorimetryEcalCorrelatedNoiseAnalysisAlgos_EX_USE := $(foreach d, cmssw  root rootinteractive,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibCalorimetryEcalCorrelatedNoiseAnalysisAlgos_EX_LIB   := CalibCalorimetryEcalCorrelatedNoiseAnalysisAlgos
ALL_EXTERNAL_PRODS += CalibCalorimetryEcalCorrelatedNoiseAnalysisAlgos
endif
ifeq ($(strip $(L1Trigger/DTTrackFinder)),)
L1TriggerDTTrackFinder := cmssw/L1Trigger/DTTrackFinder
L1Trigger/DTTrackFinder := L1TriggerDTTrackFinder
L1TriggerDTTrackFinder_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
L1TriggerDTTrackFinder_EX_USE := $(foreach d, cmssw  FWCore/Framework CondFormats/L1TObjects CondFormats/DataRecord DataFormats/L1DTTrackFinder DataFormats/L1GlobalMuonTrigger DataFormats/L1CSCTrackFinder,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
L1TriggerDTTrackFinder_EX_LIB   := L1TriggerDTTrackFinder
ALL_EXTERNAL_PRODS += L1TriggerDTTrackFinder
endif
ifeq ($(strip $(DataFormats/VertexReco)),)
DataFormatsVertexReco := cmssw/DataFormats/VertexReco
DataFormats/VertexReco := DataFormatsVertexReco
DataFormatsVertexReco_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsVertexReco_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/TrackReco FWCore/Utilities rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsVertexReco_EX_LIB   := DataFormatsVertexReco
ALL_EXTERNAL_PRODS += DataFormatsVertexReco
endif
ifeq ($(strip $(Alignment/MuonAlignmentAlgorithms)),)
AlignmentMuonAlignmentAlgorithms := cmssw/Alignment/MuonAlignmentAlgorithms
Alignment/MuonAlignmentAlgorithms := AlignmentMuonAlignmentAlgorithms
AlignmentMuonAlignmentAlgorithms_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AlignmentMuonAlignmentAlgorithms_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/ParameterSet FWCore/PluginManager FWCore/ServiceRegistry FWCore/Utilities CommonTools/Utils DataFormats/TrackReco Geometry/CSCGeometry Geometry/CommonDetUnit TrackingTools/TrackFitters Alignment/CommonAlignment RecoMuon/TransientTrackingRecHit clhep root rootcore rootminuit,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AlignmentMuonAlignmentAlgorithms_EX_LIB   := AlignmentMuonAlignmentAlgorithms
ALL_EXTERNAL_PRODS += AlignmentMuonAlignmentAlgorithms
endif
ifeq ($(strip $(SimDataFormats/EncodedEventId)),)
SimDataFormatsEncodedEventId := cmssw/SimDataFormats/EncodedEventId
SimDataFormats/EncodedEventId := SimDataFormatsEncodedEventId
SimDataFormatsEncodedEventId_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimDataFormatsEncodedEventId_EX_USE := $(foreach d, cmssw  boost rootcore rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimDataFormatsEncodedEventId_EX_LIB   := SimDataFormatsEncodedEventId
ALL_EXTERNAL_PRODS += SimDataFormatsEncodedEventId
endif
ifeq ($(strip $(DataFormats/SiStripCluster)),)
DataFormatsSiStripCluster := cmssw/DataFormats/SiStripCluster
DataFormats/SiStripCluster := DataFormatsSiStripCluster
DataFormatsSiStripCluster_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsSiStripCluster_EX_USE := $(foreach d, cmssw  DataFormats/Common boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsSiStripCluster_EX_LIB   := DataFormatsSiStripCluster
ALL_EXTERNAL_PRODS += DataFormatsSiStripCluster
endif
ifeq ($(strip $(Validation/RecoTrack)),)
ValidationRecoTrack := cmssw/Validation/RecoTrack
Validation/RecoTrack := ValidationRecoTrack
ValidationRecoTrack_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
ValidationRecoTrack_EX_USE := $(foreach d, cmssw  DQMServices/ClientConfig DQMServices/Core SimDataFormats/TrackingAnalysis DataFormats/TrackReco SimTracker/Common root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ValidationRecoTrack_EX_LIB   := ValidationRecoTrack
ALL_EXTERNAL_PRODS += ValidationRecoTrack
endif
ifeq ($(strip $(DQM/EcalBarrelMonitorTasks)),)
DQMEcalBarrelMonitorTasks := cmssw/DQM/EcalBarrelMonitorTasks
DQM/EcalBarrelMonitorTasks := DQMEcalBarrelMonitorTasks
DQMEcalBarrelMonitorTasks_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMEcalBarrelMonitorTasks_EX_USE := $(foreach d, cmssw  DQM/EcalCommon DQMServices/Core DataFormats/FEDRawData DataFormats/EcalDetId DataFormats/EcalDigi DataFormats/EcalRawData DataFormats/EcalRecHit TBDataFormats/EcalTBObjects DataFormats/EgammaReco DataFormats/Math DataFormats/L1GlobalTrigger FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry RecoLocalCalo/EcalRecAlgos RecoEcal/EgammaCoreTools CondFormats/DataRecord CondFormats/EcalObjects Geometry/CaloTopology rootphysics,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMEcalBarrelMonitorTasks_EX_LIB   := DQMEcalBarrelMonitorTasks
ALL_EXTERNAL_PRODS += DQMEcalBarrelMonitorTasks
endif
ifeq ($(strip $(SimDataFormats/TrackingHit)),)
SimDataFormatsTrackingHit := cmssw/SimDataFormats/TrackingHit
SimDataFormats/TrackingHit := SimDataFormatsTrackingHit
SimDataFormatsTrackingHit_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimDataFormatsTrackingHit_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/GeometryVector SimDataFormats/EncodedEventId rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimDataFormatsTrackingHit_EX_LIB   := SimDataFormatsTrackingHit
ALL_EXTERNAL_PRODS += SimDataFormatsTrackingHit
endif
ifeq ($(strip $(TopQuarkAnalysis/TopEventSelection)),)
TopQuarkAnalysisTopEventSelection := cmssw/TopQuarkAnalysis/TopEventSelection
TopQuarkAnalysis/TopEventSelection := TopQuarkAnalysisTopEventSelection
TopQuarkAnalysisTopEventSelection_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TopQuarkAnalysisTopEventSelection_EX_USE := $(foreach d, cmssw  FWCore/Framework PhysicsTools/CandUtils TopQuarkAnalysis/TopTools DataFormats/PatCandidates AnalysisDataFormats/TopObjects,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TopQuarkAnalysisTopEventSelection_EX_LIB   := TopQuarkAnalysisTopEventSelection
ALL_EXTERNAL_PRODS += TopQuarkAnalysisTopEventSelection
endif
ifeq ($(strip $(DataFormats/ParticleFlowReco)),)
DataFormatsParticleFlowReco := cmssw/DataFormats/ParticleFlowReco
DataFormats/ParticleFlowReco := DataFormatsParticleFlowReco
DataFormatsParticleFlowReco_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsParticleFlowReco_EX_USE := $(foreach d, cmssw  DataFormats/CaloRecHit DataFormats/Common DataFormats/TrackReco DataFormats/VertexReco DataFormats/Candidate FWCore/Utilities boost rootcore rootmath rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsParticleFlowReco_EX_LIB   := DataFormatsParticleFlowReco
ALL_EXTERNAL_PRODS += DataFormatsParticleFlowReco
endif
ifeq ($(strip $(DataFormats/JetReco)),)
DataFormatsJetReco := cmssw/DataFormats/JetReco
DataFormats/JetReco := DataFormatsJetReco
DataFormatsJetReco_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsJetReco_EX_USE := $(foreach d, cmssw  DataFormats/CaloTowers DataFormats/ParticleFlowCandidate DataFormats/Candidate DataFormats/Common DataFormats/HepMCCandidate DataFormats/ParticleFlowReco DataFormats/TrackReco FWCore/Utilities rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsJetReco_EX_LIB   := DataFormatsJetReco
ALL_EXTERNAL_PRODS += DataFormatsJetReco
endif
ifeq ($(strip $(DQM/SiStripCommon)),)
DQMSiStripCommon := cmssw/DQM/SiStripCommon
DQM/SiStripCommon := DQMSiStripCommon
DQMSiStripCommon_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMSiStripCommon_EX_USE := $(foreach d, cmssw  DataFormats/SiStripDetId DataFormats/DetId DataFormats/SiStripDigi DataFormats/Common CalibTracker/SiStripCommon CommonTools/TrackerMap DQMServices/Core FWCore/MessageLogger FWCore/Utilities FWCore/ServiceRegistry boost rootgraphics,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMSiStripCommon_EX_LIB   := DQMSiStripCommon
ALL_EXTERNAL_PRODS += DQMSiStripCommon
endif
ifeq ($(strip $(TrackingTools/GsfTools)),)
TrackingToolsGsfTools := cmssw/TrackingTools/GsfTools
TrackingTools/GsfTools := TrackingToolsGsfTools
TrackingToolsGsfTools_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TrackingToolsGsfTools_EX_USE := $(foreach d, cmssw  boost clhep FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities Geometry/CommonDetUnit DataFormats/GeometrySurface TrackingTools/GeomPropagators TrackingTools/TrajectoryParametrization TrackingTools/TrajectoryState TrackingTools/PatternTools DataFormats/GsfTrackReco DataFormats/TrackReco,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TrackingToolsGsfTools_EX_LIB   := TrackingToolsGsfTools
ALL_EXTERNAL_PRODS += TrackingToolsGsfTools
endif
ifeq ($(strip $(SimG4Core/MagneticField)),)
SimG4CoreMagneticField := cmssw/SimG4Core/MagneticField
SimG4Core/MagneticField := SimG4CoreMagneticField
SimG4CoreMagneticField_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CoreMagneticField_EX_USE := $(foreach d, cmssw  FWCore/PluginManager FWCore/ParameterSet boost geant4core expat,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CoreMagneticField_EX_LIB   := SimG4CoreMagneticField
ALL_EXTERNAL_PRODS += SimG4CoreMagneticField
endif
ifeq ($(strip $(L1Trigger/TextToDigi)),)
L1TriggerTextToDigi := cmssw/L1Trigger/TextToDigi
L1Trigger/TextToDigi := L1TriggerTextToDigi
L1TriggerTextToDigi_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
L1TriggerTextToDigi_EX_USE := $(foreach d, cmssw  ,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
L1TriggerTextToDigi_EX_LIB   := L1TriggerTextToDigi
ALL_EXTERNAL_PRODS += L1TriggerTextToDigi
endif
ifeq ($(strip $(EventFilter/FEDInterface)),)
EventFilterFEDInterface := cmssw/EventFilter/FEDInterface
EventFilter/FEDInterface := EventFilterFEDInterface
EventFilterFEDInterface_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
EventFilterFEDInterface_EX_USE := $(foreach d, cmssw  ,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
EventFilterFEDInterface_EX_LIB   := EventFilterFEDInterface
ALL_EXTERNAL_PRODS += EventFilterFEDInterface
endif
ifeq ($(strip $(FastSimulation/ShowerDevelopment)),)
FastSimulationShowerDevelopment := cmssw/FastSimulation/ShowerDevelopment
FastSimulation/ShowerDevelopment := FastSimulationShowerDevelopment
FastSimulationShowerDevelopment_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FastSimulationShowerDevelopment_EX_USE := $(foreach d, cmssw  DataFormats/Math FWCore/MessageLogger FWCore/ParameterSet FastSimulation/CaloHitMakers FastSimulation/CalorimeterProperties FastSimulation/Particle FastSimulation/Utilities DQMServices/Core clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FastSimulationShowerDevelopment_EX_LIB   := FastSimulationShowerDevelopment
ALL_EXTERNAL_PRODS += FastSimulationShowerDevelopment
endif
ifeq ($(strip $(RecoVertex/GhostTrackFitter)),)
RecoVertexGhostTrackFitter := cmssw/RecoVertex/GhostTrackFitter
RecoVertex/GhostTrackFitter := RecoVertexGhostTrackFitter
RecoVertexGhostTrackFitter_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoVertexGhostTrackFitter_EX_USE := $(foreach d, cmssw  FWCore/ParameterSet FWCore/Utilities DataFormats/Math DataFormats/GeometryVector DataFormats/GeometrySurface DataFormats/GeometryCommonDetAlgo DataFormats/TrackReco TrackingTools/TransientTrack TrackingTools/TrajectoryState TrackingTools/GeomPropagators RecoVertex/VertexTools RecoVertex/VertexPrimitives RecoVertex/KalmanVertexFit RecoVertex/AdaptiveVertexFit rootmath,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoVertexGhostTrackFitter_EX_LIB   := RecoVertexGhostTrackFitter
ALL_EXTERNAL_PRODS += RecoVertexGhostTrackFitter
endif
ifeq ($(strip $(DQMServices/ClientConfig)),)
DQMServicesClientConfig := cmssw/DQMServices/ClientConfig
DQMServices/ClientConfig := DQMServicesClientConfig
DQMServicesClientConfig_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMServicesClientConfig_EX_USE := $(foreach d, cmssw  DQMServices/Core FWCore/Concurrency xerces-c,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMServicesClientConfig_EX_LIB   := DQMServicesClientConfig
ALL_EXTERNAL_PRODS += DQMServicesClientConfig
endif
ifeq ($(strip $(RecoLocalMuon/DTRecHit)),)
RecoLocalMuonDTRecHit := cmssw/RecoLocalMuon/DTRecHit
RecoLocalMuon/DTRecHit := RecoLocalMuonDTRecHit
RecoLocalMuonDTRecHit_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoLocalMuonDTRecHit_EX_USE := $(foreach d, cmssw  DataFormats/GeometryVector DataFormats/GeometrySurface DataFormats/DTRecHit DataFormats/DTDigi DataFormats/Common Geometry/DTGeometry CalibMuon/DTDigiSync,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoLocalMuonDTRecHit_EX_LIB   := RecoLocalMuonDTRecHit
ALL_EXTERNAL_PRODS += RecoLocalMuonDTRecHit
endif
ifeq ($(strip $(SimDataFormats/HiGenData)),)
SimDataFormatsHiGenData := cmssw/SimDataFormats/HiGenData
SimDataFormats/HiGenData := SimDataFormatsHiGenData
SimDataFormatsHiGenData_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimDataFormatsHiGenData_EX_USE := $(foreach d, cmssw  rootrflx DataFormats/HepMCCandidate,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimDataFormatsHiGenData_EX_LIB   := SimDataFormatsHiGenData
ALL_EXTERNAL_PRODS += SimDataFormatsHiGenData
endif
ifeq ($(strip $(Alignment/SurveyAnalysis)),)
AlignmentSurveyAnalysis := cmssw/Alignment/SurveyAnalysis
Alignment/SurveyAnalysis := AlignmentSurveyAnalysis
AlignmentSurveyAnalysis_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AlignmentSurveyAnalysis_EX_USE := $(foreach d, cmssw  roothistmatrix Alignment/CommonAlignment DataFormats/MuonDetId DataFormats/SiStripDetId FWCore/Framework FWCore/MessageLogger FWCore/Utilities,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AlignmentSurveyAnalysis_EX_LIB   := AlignmentSurveyAnalysis
ALL_EXTERNAL_PRODS += AlignmentSurveyAnalysis
endif
ifeq ($(strip $(CondFormats/ESObjects)),)
CondFormatsESObjects := cmssw/CondFormats/ESObjects
CondFormats/ESObjects := CondFormatsESObjects
CondFormatsESObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondFormatsESObjects_EX_USE := $(foreach d, cmssw  FWCore/Utilities DataFormats/EcalDetId DataFormats/Math boost rootmath rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsESObjects_EX_LIB   := CondFormatsESObjects
ALL_EXTERNAL_PRODS += CondFormatsESObjects
endif
ifeq ($(strip $(Fireworks/FWInterface)),)
FireworksFWInterface := cmssw/Fireworks/FWInterface
Fireworks/FWInterface := FireworksFWInterface
FireworksFWInterface_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FireworksFWInterface_EX_USE := $(foreach d, cmssw  FWCore/PluginManager FWCore/Framework DataFormats/Provenance DataFormats/TrackReco TrackingTools/TrajectoryState TrackingTools/PatternTools CondFormats/DataRecord CondFormats/RunInfo Fireworks/Core Fireworks/Geometry rootcore rootinteractive,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FireworksFWInterface_EX_LIB   := FireworksFWInterface
ALL_EXTERNAL_PRODS += FireworksFWInterface
endif
ifeq ($(strip $(L1Trigger/TrackTrigger)),)
src_L1Trigger_TrackTrigger := cmssw/L1Trigger/TrackTrigger
L1Trigger/TrackTrigger  := src_L1Trigger_TrackTrigger
src_L1Trigger_TrackTrigger_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
src_L1Trigger_TrackTrigger_EX_USE := $(foreach d, cmssw,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_L1Trigger_TrackTrigger
endif

ifeq ($(strip $(FWCore/TFWLiteSelectorTest)),)
FWCoreTFWLiteSelectorTest := cmssw/FWCore/TFWLiteSelectorTest
FWCore/TFWLiteSelectorTest := FWCoreTFWLiteSelectorTest
FWCoreTFWLiteSelectorTest_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCoreTFWLiteSelectorTest_EX_USE := $(foreach d, cmssw  DataFormats/Common FWCore/TFWLiteSelector rootgraphics,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCoreTFWLiteSelectorTest_EX_LIB   := FWCoreTFWLiteSelectorTest
ALL_EXTERNAL_PRODS += FWCoreTFWLiteSelectorTest
endif
ifeq ($(strip $(PhysicsTools/PatExamples)),)
PhysicsToolsPatExamples := cmssw/PhysicsTools/PatExamples
PhysicsTools/PatExamples := PhysicsToolsPatExamples
PhysicsToolsPatExamples_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
PhysicsToolsPatExamples_EX_USE := $(foreach d, cmssw  DataFormats/Math DataFormats/Common DataFormats/JetReco DataFormats/MuonReco DataFormats/PatCandidates FWCore/Utilities FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry PhysicsTools/PatUtils PhysicsTools/UtilAlgos PhysicsTools/Utilities clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsPatExamples_EX_LIB   := PhysicsToolsPatExamples
ALL_EXTERNAL_PRODS += PhysicsToolsPatExamples
endif
ifeq ($(strip $(RecoParticleFlow/PFTracking)),)
RecoParticleFlowPFTracking := cmssw/RecoParticleFlow/PFTracking
RecoParticleFlow/PFTracking := RecoParticleFlowPFTracking
RecoParticleFlowPFTracking_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoParticleFlowPFTracking_EX_USE := $(foreach d, cmssw  RecoVertex/KalmanVertexFit DataFormats/EgammaCandidates DataFormats/GeometrySurface DataFormats/GeometryVector DataFormats/GsfTrackReco DataFormats/Math DataFormats/ParticleFlowReco DataFormats/TrackReco DataFormats/TrackerRecHit2D DataFormats/TrackingRecHit DataFormats/TrajectorySeed DataFormats/SiPixelDetId DataFormats/SiStripDetId DataFormats/BeamSpot Geometry/CommonDetUnit Geometry/TrackerGeometryBuilder Geometry/Records Utilities/General FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FastSimulation/BaseParticlePropagator RecoParticleFlow/PFClusterTools TrackingTools/GsfTools TrackingTools/PatternTools TrackingTools/TrajectoryState TrackingTools/TransientTrack TrackingTools/TrajectoryParametrization RecoVertex/VertexPrimitives RecoVertex/AdaptiveVertexFit TrackingTools/IPTools DataFormats/VertexReco rootcore roottmva,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoParticleFlowPFTracking_EX_LIB   := RecoParticleFlowPFTracking
ALL_EXTERNAL_PRODS += RecoParticleFlowPFTracking
endif
ifeq ($(strip $(Validation/RecoB)),)
ValidationRecoB := cmssw/Validation/RecoB
Validation/RecoB := ValidationRecoB
ValidationRecoB_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
ValidationRecoB_EX_USE := $(foreach d, cmssw  root rootcore DataFormats/BTauReco DataFormats/Common DQMServices/Core FWCore/Framework FWCore/ParameterSet FWCore/Utilities,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ValidationRecoB_EX_LIB   := ValidationRecoB
ALL_EXTERNAL_PRODS += ValidationRecoB
endif
ifeq ($(strip $(OnlineDB/Oracle)),)
OnlineDBOracle := cmssw/OnlineDB/Oracle
OnlineDB/Oracle := OnlineDBOracle
OnlineDBOracle_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
OnlineDBOracle_EX_USE := $(foreach d, cmssw  oracle oracleocci,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
OnlineDBOracle_EX_LIB   := OnlineDBOracle
ALL_EXTERNAL_PRODS += OnlineDBOracle
endif
ifeq ($(strip $(MagneticField/GeomBuilder)),)
MagneticFieldGeomBuilder := cmssw/MagneticField/GeomBuilder
MagneticField/GeomBuilder := MagneticFieldGeomBuilder
MagneticFieldGeomBuilder_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
MagneticFieldGeomBuilder_EX_USE := $(foreach d, cmssw  DataFormats/GeometrySurface DataFormats/GeometryVector DetectorDescription/Base DetectorDescription/Core FWCore/Framework FWCore/Utilities MagneticField/Engine MagneticField/Interpolation MagneticField/Layers MagneticField/VolumeGeometry Utilities/BinningTools clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
MagneticFieldGeomBuilder_EX_LIB   := MagneticFieldGeomBuilder
ALL_EXTERNAL_PRODS += MagneticFieldGeomBuilder
endif
ifeq ($(strip $(SimDataFormats/Track)),)
SimDataFormatsTrack := cmssw/SimDataFormats/Track
SimDataFormats/Track := SimDataFormatsTrack
SimDataFormatsTrack_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimDataFormatsTrack_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/Math SimDataFormats/EncodedEventId rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimDataFormatsTrack_EX_LIB   := SimDataFormatsTrack
ALL_EXTERNAL_PRODS += SimDataFormatsTrack
endif
ifeq ($(strip $(PhysicsTools/JetMCUtils)),)
PhysicsToolsJetMCUtils := cmssw/PhysicsTools/JetMCUtils
PhysicsTools/JetMCUtils := PhysicsToolsJetMCUtils
PhysicsToolsJetMCUtils_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
PhysicsToolsJetMCUtils_EX_USE := $(foreach d, cmssw  DataFormats/Candidate DataFormats/Common rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsJetMCUtils_EX_LIB   := PhysicsToolsJetMCUtils
ALL_EXTERNAL_PRODS += PhysicsToolsJetMCUtils
endif
ifeq ($(strip $(RecoParticleFlow/PFProducer)),)
RecoParticleFlowPFProducer := cmssw/RecoParticleFlow/PFProducer
RecoParticleFlow/PFProducer := RecoParticleFlowPFProducer
RecoParticleFlowPFProducer_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoParticleFlowPFProducer_EX_USE := $(foreach d, cmssw  CondFormats/DataRecord CondFormats/EgammaObjects DataFormats/CaloRecHit DataFormats/Common DataFormats/EgammaCandidates DataFormats/ParticleFlowCandidate DataFormats/ParticleFlowReco DataFormats/Provenance DataFormats/TrackReco DataFormats/VertexReco DataFormats/MuonReco DataFormats/EcalDetId RecoParticleFlow/PFClusterTools RecoEcal/EgammaCoreTools RecoEgamma/ElectronIdentification boost clhep rootmath roottmva,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoParticleFlowPFProducer_EX_LIB   := RecoParticleFlowPFProducer
ALL_EXTERNAL_PRODS += RecoParticleFlowPFProducer
endif
ifeq ($(strip $(Calibration/EcalTBTools)),)
CalibrationEcalTBTools := cmssw/Calibration/EcalTBTools
Calibration/EcalTBTools := CalibrationEcalTBTools
CalibrationEcalTBTools_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibrationEcalTBTools_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet root clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibrationEcalTBTools_EX_LIB   := CalibrationEcalTBTools
ALL_EXTERNAL_PRODS += CalibrationEcalTBTools
endif
ifeq ($(strip $(HeavyFlavorAnalysis/Skimming)),)
HeavyFlavorAnalysisSkimming := cmssw/HeavyFlavorAnalysis/Skimming
HeavyFlavorAnalysis/Skimming := HeavyFlavorAnalysisSkimming
HeavyFlavorAnalysisSkimming_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
HeavyFlavorAnalysisSkimming_EX_USE := $(foreach d, cmssw  FWCore/MessageLogger FWCore/Framework FWCore/ParameterSet DataFormats/TrackReco DataFormats/MuonReco,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
HeavyFlavorAnalysisSkimming_EX_LIB   := HeavyFlavorAnalysisSkimming
ALL_EXTERNAL_PRODS += HeavyFlavorAnalysisSkimming
endif
ifeq ($(strip $(FWCore/Framework)),)
FWCoreFramework := cmssw/FWCore/Framework
FWCore/Framework := FWCoreFramework
FWCoreFramework_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCoreFramework_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/Provenance FWCore/Common FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager FWCore/PythonParameterSet FWCore/ServiceRegistry FWCore/Utilities FWCore/Version boost rootcintex rootcore,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCoreFramework_EX_LIB   := FWCoreFramework
ALL_EXTERNAL_PRODS += FWCoreFramework
endif
ifeq ($(strip $(DQMServices/Examples)),)
DQMServicesExamples := cmssw/DQMServices/Examples
DQMServices/Examples := DQMServicesExamples
DQMServicesExamples_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMServicesExamples_EX_USE := $(foreach d, cmssw  DQMServices/Core FWCore/Framework DataFormats/MuonReco DataFormats/EgammaCandidates DataFormats/EgammaReco DataFormats/TauReco DataFormats/JetReco DataFormats/METReco DataFormats/VertexReco DataFormats/TrackerRecHit2D HLTrigger/HLTcore Geometry/Records Geometry/TrackerGeometryBuilder JetMETCorrections/Objects RecoEcal/EgammaCoreTools DataFormats/EcalRecHit CondFormats/DataRecord CondFormats/EcalObjects RecoJets/JetProducers RecoEgamma/EgammaTools,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMServicesExamples_EX_LIB   := DQMServicesExamples
ALL_EXTERNAL_PRODS += DQMServicesExamples
endif
ifeq ($(strip $(RecoVertex/NuclearInteractionProducer)),)
RecoVertexNuclearInteractionProducer := cmssw/RecoVertex/NuclearInteractionProducer
RecoVertex/NuclearInteractionProducer := RecoVertexNuclearInteractionProducer
RecoVertexNuclearInteractionProducer_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoVertexNuclearInteractionProducer_EX_USE := $(foreach d, cmssw  RecoVertex/KalmanVertexFit DataFormats/GeometryVector DataFormats/TrackReco DataFormats/VertexReco FWCore/Framework FWCore/ParameterSet MagneticField/Engine MagneticField/Records RecoVertex/AdaptiveVertexFit RecoVertex/VertexPrimitives TrackingTools/PatternTools TrackingTools/TrajectoryState TrackingTools/TransientTrack,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoVertexNuclearInteractionProducer_EX_LIB   := RecoVertexNuclearInteractionProducer
ALL_EXTERNAL_PRODS += RecoVertexNuclearInteractionProducer
endif
ifeq ($(strip $(TrackingTools/IPTools)),)
TrackingToolsIPTools := cmssw/TrackingTools/IPTools
TrackingTools/IPTools := TrackingToolsIPTools
TrackingToolsIPTools_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TrackingToolsIPTools_EX_USE := $(foreach d, cmssw  DataFormats/GeometrySurface DataFormats/GeometryVector DataFormats/VertexReco FWCore/MessageLogger TrackingTools/GeomPropagators TrackingTools/PatternTools TrackingTools/TrajectoryState TrackingTools/Records RecoVertex/VertexTools clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TrackingToolsIPTools_EX_LIB   := TrackingToolsIPTools
ALL_EXTERNAL_PRODS += TrackingToolsIPTools
endif
ifeq ($(strip $(RecoMuon/MuonSeedGenerator)),)
RecoMuonMuonSeedGenerator := cmssw/RecoMuon/MuonSeedGenerator
RecoMuon/MuonSeedGenerator := RecoMuonMuonSeedGenerator
RecoMuonMuonSeedGenerator_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoMuonMuonSeedGenerator_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/DTRecHit DataFormats/GeometrySurface DataFormats/GeometryVector DataFormats/Math DataFormats/MuonDetId DataFormats/RPCRecHit DataFormats/TrackingRecHit DataFormats/TrajectorySeed DataFormats/TrajectoryState FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager Geometry/CSCGeometry Geometry/CommonDetUnit Geometry/RPCGeometry Geometry/Records MagneticField/Engine MagneticField/Records RecoMuon/DetLayers RecoMuon/MeasurementDet RecoMuon/Records RecoMuon/TrackingTools RecoMuon/TransientTrackingRecHit SimDataFormats/TrackingHit TrackPropagation/SteppingHelixPropagator TrackingTools/DetLayers TrackingTools/TrajectoryState gsl rootcore,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoMuonMuonSeedGenerator_EX_LIB   := RecoMuonMuonSeedGenerator
ALL_EXTERNAL_PRODS += RecoMuonMuonSeedGenerator
endif
ifeq ($(strip $(CalibTracker/SiStripCommon)),)
CalibTrackerSiStripCommon := cmssw/CalibTracker/SiStripCommon
CalibTracker/SiStripCommon := CalibTrackerSiStripCommon
CalibTrackerSiStripCommon_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibTrackerSiStripCommon_EX_USE := $(foreach d, cmssw  CondFormats/SiStripObjects DataFormats/Common DataFormats/SiStripDetId FWCore/Framework FWCore/MessageLogger FWCore/ServiceRegistry CondFormats/DataRecord Geometry/TrackerGeometryBuilder Geometry/Records rootrflx clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibTrackerSiStripCommon_EX_LIB   := CalibTrackerSiStripCommon
ALL_EXTERNAL_PRODS += CalibTrackerSiStripCommon
endif
ifeq ($(strip $(DataFormats/FP420Digi)),)
DataFormatsFP420Digi := cmssw/DataFormats/FP420Digi
DataFormats/FP420Digi := DataFormatsFP420Digi
DataFormatsFP420Digi_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsFP420Digi_EX_USE := $(foreach d, cmssw  DataFormats/Common boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsFP420Digi_EX_LIB   := DataFormatsFP420Digi
ALL_EXTERNAL_PRODS += DataFormatsFP420Digi
endif
ifeq ($(strip $(TrackingTools/DetLayers)),)
TrackingToolsDetLayers := cmssw/TrackingTools/DetLayers
TrackingTools/DetLayers := TrackingToolsDetLayers
TrackingToolsDetLayers_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TrackingToolsDetLayers_EX_USE := $(foreach d, cmssw  FWCore/Utilities FWCore/MessageLogger DataFormats/GeometrySurface TrackingTools/TrajectoryState TrackingTools/TrajectoryParametrization boost clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TrackingToolsDetLayers_EX_LIB   := TrackingToolsDetLayers
ALL_EXTERNAL_PRODS += TrackingToolsDetLayers
endif
ifeq ($(strip $(Geometry/CommonTopologies)),)
GeometryCommonTopologies := cmssw/Geometry/CommonTopologies
Geometry/CommonTopologies := GeometryCommonTopologies
GeometryCommonTopologies_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeometryCommonTopologies_EX_USE := $(foreach d, cmssw  FWCore/MessageLogger Utilities/General,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryCommonTopologies_EX_LIB   := GeometryCommonTopologies
ALL_EXTERNAL_PRODS += GeometryCommonTopologies
endif
ifeq ($(strip $(DataFormats/Candidate)),)
DataFormatsCandidate := cmssw/DataFormats/Candidate
DataFormats/Candidate := DataFormatsCandidate
DataFormatsCandidate_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsCandidate_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/Math FWCore/Utilities rootmath,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsCandidate_EX_LIB   := DataFormatsCandidate
ALL_EXTERNAL_PRODS += DataFormatsCandidate
endif
ifeq ($(strip $(SimDataFormats/CaloHit)),)
SimDataFormatsCaloHit := cmssw/SimDataFormats/CaloHit
SimDataFormats/CaloHit := SimDataFormatsCaloHit
SimDataFormatsCaloHit_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimDataFormatsCaloHit_EX_USE := $(foreach d, cmssw  DataFormats/Common SimDataFormats/EncodedEventId boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimDataFormatsCaloHit_EX_LIB   := SimDataFormatsCaloHit
ALL_EXTERNAL_PRODS += SimDataFormatsCaloHit
endif
ifeq ($(strip $(TopQuarkAnalysis/TopObjectResolutions)),)
TopQuarkAnalysisTopObjectResolutions := cmssw/TopQuarkAnalysis/TopObjectResolutions
TopQuarkAnalysis/TopObjectResolutions := TopQuarkAnalysisTopObjectResolutions
TopQuarkAnalysisTopObjectResolutions_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TopQuarkAnalysisTopObjectResolutions_EX_USE := $(foreach d, cmssw  CommonTools/UtilAlgos FWCore/Framework FWCore/PluginManager FWCore/ParameterSet root AnalysisDataFormats/TopObjects,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += TopQuarkAnalysisTopObjectResolutions
endif
ifeq ($(strip $(DQMOffline/CalibCalo)),)
DQMOfflineCalibCalo := cmssw/DQMOffline/CalibCalo
DQMOffline/CalibCalo := DQMOfflineCalibCalo
DQMOfflineCalibCalo_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMOfflineCalibCalo_EX_USE := $(foreach d, cmssw  DQMServices/Components DQMServices/Core Geometry/Records Geometry/CaloGeometry DataFormats/Common DataFormats/DetId DataFormats/EcalDetId DataFormats/EcalRecHit DataFormats/EgammaReco DataFormats/HLTReco DataFormats/JetReco DataFormats/HcalIsolatedTrack DataFormats/Math DataFormats/RecoCandidate DataFormats/TrackReco DataFormats/FEDRawData FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet Geometry/CaloTopology EventFilter/HcalRawToDigi HLTrigger/HLTcore RecoEcal/EgammaCoreTools Utilities/Timing rootphysics,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMOfflineCalibCalo_EX_LIB   := DQMOfflineCalibCalo
ALL_EXTERNAL_PRODS += DQMOfflineCalibCalo
endif
ifeq ($(strip $(Utilities/XrdAdaptor)),)
UtilitiesXrdAdaptor := cmssw/Utilities/XrdAdaptor
Utilities/XrdAdaptor := UtilitiesXrdAdaptor
UtilitiesXrdAdaptor_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
UtilitiesXrdAdaptor_EX_USE := $(foreach d, cmssw  Utilities/StorageFactory FWCore/Utilities FWCore/MessageLogger xrootd,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
UtilitiesXrdAdaptor_EX_LIB   := UtilitiesXrdAdaptor
ALL_EXTERNAL_PRODS += UtilitiesXrdAdaptor
endif
ifeq ($(strip $(SimGeneral/HepPDTRecord)),)
SimGeneralHepPDTRecord := cmssw/SimGeneral/HepPDTRecord
SimGeneral/HepPDTRecord := SimGeneralHepPDTRecord
SimGeneralHepPDTRecord_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimGeneralHepPDTRecord_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/ParameterSet heppdt,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimGeneralHepPDTRecord_EX_LIB   := SimGeneralHepPDTRecord
ALL_EXTERNAL_PRODS += SimGeneralHepPDTRecord
endif
ifeq ($(strip $(DQM/SiStripCommissioningAnalysis)),)
DQMSiStripCommissioningAnalysis := cmssw/DQM/SiStripCommissioningAnalysis
DQM/SiStripCommissioningAnalysis := DQMSiStripCommissioningAnalysis
DQMSiStripCommissioningAnalysis_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMSiStripCommissioningAnalysis_EX_USE := $(foreach d, cmssw  CondFormats/SiStripObjects DataFormats/SiStripCommon FWCore/MessageLogger FWCore/ParameterSet roothistmatrix boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMSiStripCommissioningAnalysis_EX_LIB   := DQMSiStripCommissioningAnalysis
ALL_EXTERNAL_PRODS += DQMSiStripCommissioningAnalysis
endif
ifeq ($(strip $(CalibTracker/SiPixelESProducers)),)
CalibTrackerSiPixelESProducers := cmssw/CalibTracker/SiPixelESProducers
CalibTracker/SiPixelESProducers := CalibTrackerSiPixelESProducers
CalibTrackerSiPixelESProducers_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibTrackerSiPixelESProducers_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger CondFormats/DataRecord CondFormats/SiPixelObjects DataFormats/Common DataFormats/SiPixelDigi CalibTracker/Records MagneticField/VolumeBasedEngine boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibTrackerSiPixelESProducers_EX_LIB   := CalibTrackerSiPixelESProducers
ALL_EXTERNAL_PRODS += CalibTrackerSiPixelESProducers
endif
ifeq ($(strip $(IOPool/Common)),)
IOPoolCommon := cmssw/IOPool/Common
IOPool/Common := IOPoolCommon
IOPoolCommon_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
IOPoolCommon_EX_USE := $(foreach d, cmssw  FWCore/ServiceRegistry FWCore/Utilities,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
IOPoolCommon_EX_LIB   := IOPoolCommon
ALL_EXTERNAL_PRODS += IOPoolCommon
endif
ifeq ($(strip $(AnalysisDataFormats/SiStripClusterInfo)),)
src_AnalysisDataFormats_SiStripClusterInfo := cmssw/AnalysisDataFormats/SiStripClusterInfo
AnalysisDataFormats/SiStripClusterInfo  := src_AnalysisDataFormats_SiStripClusterInfo
src_AnalysisDataFormats_SiStripClusterInfo_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
src_AnalysisDataFormats_SiStripClusterInfo_EX_USE := $(foreach d, cmssw,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_AnalysisDataFormats_SiStripClusterInfo
endif

ifeq ($(strip $(RecoMuon/StandAloneTrackFinder)),)
RecoMuonStandAloneTrackFinder := cmssw/RecoMuon/StandAloneTrackFinder
RecoMuon/StandAloneTrackFinder := RecoMuonStandAloneTrackFinder
RecoMuonStandAloneTrackFinder_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoMuonStandAloneTrackFinder_EX_USE := $(foreach d, cmssw  DataFormats/TrajectorySeed DataFormats/TrajectoryState FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities Geometry/CommonDetUnit RecoMuon/MeasurementDet RecoMuon/Navigation RecoMuon/TrackingTools TrackingTools/DetLayers TrackingTools/GeomPropagators TrackingTools/KalmanUpdators TrackingTools/PatternTools TrackingTools/Records TrackingTools/TrackFitters TrackingTools/TrackRefitter TrackingTools/TrajectoryState,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoMuonStandAloneTrackFinder_EX_LIB   := RecoMuonStandAloneTrackFinder
ALL_EXTERNAL_PRODS += RecoMuonStandAloneTrackFinder
endif
ifeq ($(strip $(Alignment/KalmanAlignmentAlgorithm)),)
AlignmentKalmanAlignmentAlgorithm := cmssw/Alignment/KalmanAlignmentAlgorithm
Alignment/KalmanAlignmentAlgorithm := AlignmentKalmanAlignmentAlgorithm
AlignmentKalmanAlignmentAlgorithm_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AlignmentKalmanAlignmentAlgorithm_EX_USE := $(foreach d, cmssw  root boost FWCore/Utilities FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry FWCore/PluginManager Alignment/CommonAlignment Alignment/CommonAlignmentAlgorithm TrackingTools/TransientTrack RecoTracker/TrackProducer,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AlignmentKalmanAlignmentAlgorithm_EX_LIB   := AlignmentKalmanAlignmentAlgorithm
ALL_EXTERNAL_PRODS += AlignmentKalmanAlignmentAlgorithm
endif
ifeq ($(strip $(RecoParticleFlow/PFClusterTools)),)
RecoParticleFlowPFClusterTools := cmssw/RecoParticleFlow/PFClusterTools
RecoParticleFlow/PFClusterTools := RecoParticleFlowPFClusterTools
RecoParticleFlowPFClusterTools_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoParticleFlowPFClusterTools_EX_USE := $(foreach d, cmssw  CondFormats/PhysicsToolsObjects DataFormats/ParticleFlowReco DataFormats/Math DataFormats/EcalDetId boost rootphysics rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoParticleFlowPFClusterTools_EX_LIB   := RecoParticleFlowPFClusterTools
ALL_EXTERNAL_PRODS += RecoParticleFlowPFClusterTools
endif
ifeq ($(strip $(PhysicsTools/PatAlgos)),)
PhysicsToolsPatAlgos := cmssw/PhysicsTools/PatAlgos
PhysicsTools/PatAlgos := PhysicsToolsPatAlgos
PhysicsToolsPatAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
PhysicsToolsPatAlgos_EX_USE := $(foreach d, cmssw  DataFormats/Candidate DataFormats/Common DataFormats/EgammaCandidates DataFormats/EgammaReco DataFormats/JetReco DataFormats/Math DataFormats/METReco DataFormats/MuonReco DataFormats/PatCandidates DataFormats/TauReco DataFormats/TrackReco DataFormats/VertexReco FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities PhysicsTools/PatUtils PhysicsTools/Utilities PhysicsTools/IsolationAlgos Geometry/CaloTopology RecoEgamma/EgammaTools clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsPatAlgos_EX_LIB   := PhysicsToolsPatAlgos
ALL_EXTERNAL_PRODS += PhysicsToolsPatAlgos
endif
ifeq ($(strip $(SimRomanPot/SimFP420)),)
SimRomanPotSimFP420 := cmssw/SimRomanPot/SimFP420
SimRomanPot/SimFP420 := SimRomanPotSimFP420
SimRomanPotSimFP420_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimRomanPotSimFP420_EX_USE := $(foreach d, cmssw  FWCore/PluginManager SimDataFormats/TrackingHit DataFormats/Math SimDataFormats/TrackerDigiSimLink SimDataFormats/CrossingFrame DataFormats/FP420Digi DataFormats/Common SimGeneral/HepPDTRecord SimG4Core/Watcher SimG4Core/SensitiveDetector SimG4Core/Notification SimG4Core/Application SimG4CMS/Calo SimG4CMS/FP420 SimDataFormats/SimHitMaker SimDataFormats/CaloHit Mixing/Base DetectorDescription/Core FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger boost geant4core root clhep hepmc gsl,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimRomanPotSimFP420_EX_LIB   := SimRomanPotSimFP420
ALL_EXTERNAL_PRODS += SimRomanPotSimFP420
endif
ifeq ($(strip $(EventFilter/CSCTFRawToDigi)),)
EventFilterCSCTFRawToDigi := cmssw/EventFilter/CSCTFRawToDigi
EventFilter/CSCTFRawToDigi := EventFilterCSCTFRawToDigi
EventFilterCSCTFRawToDigi_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
EventFilterCSCTFRawToDigi_EX_USE := $(foreach d, cmssw  DataFormats/CSCDigi FWCore/Framework DataFormats/FEDRawData DataFormats/MuonDetId DataFormats/L1CSCTrackFinder CondFormats/CSCObjects FWCore/MessageLogger Utilities/Timing,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
EventFilterCSCTFRawToDigi_EX_LIB   := EventFilterCSCTFRawToDigi
ALL_EXTERNAL_PRODS += EventFilterCSCTFRawToDigi
endif
ifeq ($(strip $(SimG4CMS/Calo)),)
SimG4CMSCalo := cmssw/SimG4CMS/Calo
SimG4CMS/Calo := SimG4CMSCalo
SimG4CMSCalo_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CMSCalo_EX_USE := $(foreach d, cmssw  FWCore/PluginManager SimGeneral/GFlash SimG4Core/SensitiveDetector SimG4Core/Notification DataFormats/EcalDetId DataFormats/HcalDetId DataFormats/Math DataFormats/HcalCalibObjects SimDataFormats/SimHitMaker SimDataFormats/CaloHit SimDataFormats/CaloTest Geometry/HcalCommonData Geometry/EcalCommonData DetectorDescription/Core FWCore/ParameterSet FWCore/MessageLogger FWCore/ServiceRegistry CommonTools/UtilAlgos boost geant4core hepmc root rootrflx rootmath,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CMSCalo_EX_LIB   := SimG4CMSCalo
ALL_EXTERNAL_PRODS += SimG4CMSCalo
endif
ifeq ($(strip $(SimTracker/VertexAssociation)),)
SimTrackerVertexAssociation := cmssw/SimTracker/VertexAssociation
SimTracker/VertexAssociation := SimTrackerVertexAssociation
SimTrackerVertexAssociation_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimTrackerVertexAssociation_EX_USE := $(foreach d, cmssw  SimDataFormats/Track FWCore/ParameterSet DataFormats/TrackReco DataFormats/VertexReco DataFormats/Common DataFormats/Math FWCore/Utilities SimDataFormats/TrackingAnalysis SimTracker/Common,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimTrackerVertexAssociation_EX_LIB   := SimTrackerVertexAssociation
ALL_EXTERNAL_PRODS += SimTrackerVertexAssociation
endif
ifeq ($(strip $(RecoLocalTracker/SiPixelClusterizer)),)
RecoLocalTrackerSiPixelClusterizer := cmssw/RecoLocalTracker/SiPixelClusterizer
RecoLocalTracker/SiPixelClusterizer := RecoLocalTrackerSiPixelClusterizer
RecoLocalTrackerSiPixelClusterizer_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoLocalTrackerSiPixelClusterizer_EX_USE := $(foreach d, cmssw  DataFormats/Common FWCore/ParameterSet DataFormats/SiPixelDetId DataFormats/SiPixelCluster,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoLocalTrackerSiPixelClusterizer_EX_LIB   := RecoLocalTrackerSiPixelClusterizer
ALL_EXTERNAL_PRODS += RecoLocalTrackerSiPixelClusterizer
endif
ifeq ($(strip $(FWCore/Version)),)
FWCoreVersion := cmssw/FWCore/Version
FWCore/Version := FWCoreVersion
FWCoreVersion_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCoreVersion_EX_USE := $(foreach d, cmssw  ,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCoreVersion_EX_LIB   := FWCoreVersion
ALL_EXTERNAL_PRODS += FWCoreVersion
endif
ifeq ($(strip $(JetMETCorrections/MCJet)),)
src_JetMETCorrections_MCJet := cmssw/JetMETCorrections/MCJet
JetMETCorrections/MCJet  := src_JetMETCorrections_MCJet
src_JetMETCorrections_MCJet_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
src_JetMETCorrections_MCJet_EX_USE := $(foreach d, clhep DataFormats/Common cmssw DataFormats/JetReco Geometry/Records root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_JetMETCorrections_MCJet
endif

ifeq ($(strip $(Geometry/HcalCommonData)),)
GeometryHcalCommonData := cmssw/Geometry/HcalCommonData
Geometry/HcalCommonData := GeometryHcalCommonData
GeometryHcalCommonData_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeometryHcalCommonData_EX_USE := $(foreach d, cmssw  DetectorDescription/Base DetectorDescription/Core,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryHcalCommonData_EX_LIB   := GeometryHcalCommonData
ALL_EXTERNAL_PRODS += GeometryHcalCommonData
endif
ifeq ($(strip $(MuonAnalysis/MomentumScaleCalibration)),)
MuonAnalysisMomentumScaleCalibration := cmssw/MuonAnalysis/MomentumScaleCalibration
MuonAnalysis/MomentumScaleCalibration := MuonAnalysisMomentumScaleCalibration
MuonAnalysisMomentumScaleCalibration_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
MuonAnalysisMomentumScaleCalibration_EX_USE := $(foreach d, cmssw  hepmc heppdt clhep rootminuit rootrflx roothistmatrix FWCore/Framework FWCore/Utilities FWCore/ParameterSet FWCore/PluginManager DataFormats/Candidate DataFormats/Common SimDataFormats/Track SimDataFormats/GeneratorProducts CondFormats/RecoMuonObjects DataFormats/PatCandidates PhysicsTools/TagAndProbe,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
MuonAnalysisMomentumScaleCalibration_EX_LIB   := MuonAnalysisMomentumScaleCalibration
ALL_EXTERNAL_PRODS += MuonAnalysisMomentumScaleCalibration
endif
ifeq ($(strip $(DataFormats/L1Trigger)),)
DataFormatsL1Trigger := cmssw/DataFormats/L1Trigger
DataFormats/L1Trigger := DataFormatsL1Trigger
DataFormatsL1Trigger_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsL1Trigger_EX_USE := $(foreach d, cmssw  DataFormats/Candidate DataFormats/Common DataFormats/L1GlobalMuonTrigger rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsL1Trigger_EX_LIB   := DataFormatsL1Trigger
ALL_EXTERNAL_PRODS += DataFormatsL1Trigger
endif
ifeq ($(strip $(PhysicsTools/TagAndProbe)),)
PhysicsToolsTagAndProbe := cmssw/PhysicsTools/TagAndProbe
PhysicsTools/TagAndProbe := PhysicsToolsTagAndProbe
PhysicsToolsTagAndProbe_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
PhysicsToolsTagAndProbe_EX_USE := $(foreach d, cmssw  roofit FWCore/MessageLogger FWCore/PluginManager FWCore/ParameterSet DataFormats/TrackReco DataFormats/EgammaReco DataFormats/METReco DataFormats/Math DataFormats/RecoCandidate DataFormats/Candidate DataFormats/Common CommonTools/Utils CommonTools/UtilAlgos PhysicsTools/UtilAlgos,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsTagAndProbe_EX_LIB   := PhysicsToolsTagAndProbe
ALL_EXTERNAL_PRODS += PhysicsToolsTagAndProbe
endif
ifeq ($(strip $(RecoCaloTools/Navigation)),)
src_RecoCaloTools_Navigation := cmssw/RecoCaloTools/Navigation
RecoCaloTools/Navigation  := src_RecoCaloTools_Navigation
src_RecoCaloTools_Navigation_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
src_RecoCaloTools_Navigation_EX_USE := $(foreach d, cmssw DataFormats/EcalDetId DataFormats/HcalDetId Geometry/CaloTopology,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_RecoCaloTools_Navigation
endif

ifeq ($(strip $(TrackingTools/AnalyticalJacobians)),)
TrackingToolsAnalyticalJacobians := cmssw/TrackingTools/AnalyticalJacobians
TrackingTools/AnalyticalJacobians := TrackingToolsAnalyticalJacobians
TrackingToolsAnalyticalJacobians_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TrackingToolsAnalyticalJacobians_EX_USE := $(foreach d, cmssw  TrackingTools/TrajectoryParametrization DataFormats/GeometrySurface DataFormats/Math vdt rootmath,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TrackingToolsAnalyticalJacobians_EX_LIB   := TrackingToolsAnalyticalJacobians
ALL_EXTERNAL_PRODS += TrackingToolsAnalyticalJacobians
endif
ifeq ($(strip $(RecoEgamma/EgammaElectronAlgos)),)
RecoEgammaEgammaElectronAlgos := cmssw/RecoEgamma/EgammaElectronAlgos
RecoEgamma/EgammaElectronAlgos := RecoEgammaEgammaElectronAlgos
RecoEgammaEgammaElectronAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoEgammaEgammaElectronAlgos_EX_USE := $(foreach d, cmssw  TrackingTools/MaterialEffects FWCore/Framework FWCore/ParameterSet clhep MagneticField/Engine DataFormats/DetId DataFormats/TrackerRecHit2D DataFormats/TrackingRecHit DataFormats/GsfTrackReco DataFormats/TrackReco DataFormats/TrackerCommon DataFormats/EgammaReco DataFormats/EgammaCandidates DataFormats/CaloRecHit Geometry/CommonDetUnit Geometry/TrackerGeometryBuilder Geometry/CaloGeometry RecoTracker/MeasurementDet RecoTracker/TkSeedGenerator RecoTracker/TkDetLayers RecoTracker/TkNavigation TrackingTools/DetLayers TrackingTools/GsfTools TrackingTools/GsfTracking RecoTracker/TrackProducer DataFormats/HcalRecHit RecoCaloTools/Selectors RecoCaloTools/MetaCollections RecoEcal/EgammaCoreTools RecoEgamma/EgammaTools RecoEgamma/EgammaIsolationAlgos RecoEgamma/ElectronIdentification TrackingTools/MeasurementDet RecoTracker/TkTrackingRegions CondFormats/EgammaObjects CondFormats/DataRecord,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoEgammaEgammaElectronAlgos_EX_LIB   := RecoEgammaEgammaElectronAlgos
ALL_EXTERNAL_PRODS += RecoEgammaEgammaElectronAlgos
endif
ifeq ($(strip $(TrackingTools/KalmanUpdators)),)
TrackingToolsKalmanUpdators := cmssw/TrackingTools/KalmanUpdators
TrackingTools/KalmanUpdators := TrackingToolsKalmanUpdators
TrackingToolsKalmanUpdators_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TrackingToolsKalmanUpdators_EX_USE := $(foreach d, cmssw  boost clhep RecoTracker/TransientTrackingRecHit TrackingTools/TransientTrackingRecHit TrackingTools/TrajectoryState TrackingTools/DetLayers TrackingTools/GeomPropagators Geometry/CommonDetUnit Geometry/CommonTopologies FWCore/Utilities,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TrackingToolsKalmanUpdators_EX_LIB   := TrackingToolsKalmanUpdators
ALL_EXTERNAL_PRODS += TrackingToolsKalmanUpdators
endif
ifeq ($(strip $(CondFormats/HLTObjects)),)
CondFormatsHLTObjects := cmssw/CondFormats/HLTObjects
CondFormats/HLTObjects := CondFormatsHLTObjects
CondFormatsHLTObjects_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondFormatsHLTObjects_EX_USE := $(foreach d, cmssw  FWCore/Utilities CondFormats/Common rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsHLTObjects_EX_LIB   := CondFormatsHLTObjects
ALL_EXTERNAL_PRODS += CondFormatsHLTObjects
endif
ifeq ($(strip $(Alignment/CocoaFit)),)
AlignmentCocoaFit := cmssw/Alignment/CocoaFit
Alignment/CocoaFit := AlignmentCocoaFit
AlignmentCocoaFit_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AlignmentCocoaFit_EX_USE := $(foreach d, cmssw  Alignment/CocoaUtilities Alignment/CocoaModel Alignment/CocoaDaq FWCore/Utilities clhep meschach FWCore/Framework FWCore/ParameterSet CondFormats/OptAlignObjects CondFormats/DataRecord CondFormats/Alignment CondFormats/AlignmentRecord CondCore/DBCommon CondCore/DBOutputService,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AlignmentCocoaFit_EX_LIB   := AlignmentCocoaFit
ALL_EXTERNAL_PRODS += AlignmentCocoaFit
endif
ifeq ($(strip $(PhysicsTools/CandUtils)),)
PhysicsToolsCandUtils := cmssw/PhysicsTools/CandUtils
PhysicsTools/CandUtils := PhysicsToolsCandUtils
PhysicsToolsCandUtils_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
PhysicsToolsCandUtils_EX_USE := $(foreach d, cmssw  DataFormats/Candidate roothistmatrix,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsCandUtils_EX_LIB   := PhysicsToolsCandUtils
ALL_EXTERNAL_PRODS += PhysicsToolsCandUtils
endif
ifeq ($(strip $(CalibCalorimetry/EcalLaserCorrection)),)
CalibCalorimetryEcalLaserCorrection := cmssw/CalibCalorimetry/EcalLaserCorrection
CalibCalorimetry/EcalLaserCorrection := CalibCalorimetryEcalLaserCorrection
CalibCalorimetryEcalLaserCorrection_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibCalorimetryEcalLaserCorrection_EX_USE := $(foreach d, cmssw  CondFormats/DataRecord CondFormats/EcalObjects CalibCalorimetry/EcalLaserAnalyzer DataFormats/DetId DataFormats/EcalDetId DataFormats/Provenance FWCore/MessageLogger Geometry/EcalMapping boost tbb,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibCalorimetryEcalLaserCorrection_EX_LIB   := CalibCalorimetryEcalLaserCorrection
ALL_EXTERNAL_PRODS += CalibCalorimetryEcalLaserCorrection
endif
ifeq ($(strip $(DQM/SiPixelHistoricInfoClient)),)
DQMSiPixelHistoricInfoClient := cmssw/DQM/SiPixelHistoricInfoClient
DQM/SiPixelHistoricInfoClient := DQMSiPixelHistoricInfoClient
DQMSiPixelHistoricInfoClient_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMSiPixelHistoricInfoClient_EX_USE := $(foreach d, cmssw  CondCore/DBOutputService CondFormats/DataRecord CondFormats/SiPixelObjects DQM/SiPixelCommon rootgraphics,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMSiPixelHistoricInfoClient_EX_LIB   := DQMSiPixelHistoricInfoClient
ALL_EXTERNAL_PRODS += DQMSiPixelHistoricInfoClient
endif
ifeq ($(strip $(RecoVertex/TrimmedKalmanVertexFinder)),)
RecoVertexTrimmedKalmanVertexFinder := cmssw/RecoVertex/TrimmedKalmanVertexFinder
RecoVertex/TrimmedKalmanVertexFinder := RecoVertexTrimmedKalmanVertexFinder
RecoVertexTrimmedKalmanVertexFinder_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoVertexTrimmedKalmanVertexFinder_EX_USE := $(foreach d, cmssw  RecoVertex/KalmanVertexFit CommonTools/Statistics,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoVertexTrimmedKalmanVertexFinder_EX_LIB   := RecoVertexTrimmedKalmanVertexFinder
ALL_EXTERNAL_PRODS += RecoVertexTrimmedKalmanVertexFinder
endif
ifeq ($(strip $(Alignment/MuonAlignment)),)
AlignmentMuonAlignment := cmssw/Alignment/MuonAlignment
Alignment/MuonAlignment := AlignmentMuonAlignment
AlignmentMuonAlignment_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AlignmentMuonAlignment_EX_USE := $(foreach d, cmssw  Alignment/CommonAlignment Geometry/DTGeometry Geometry/DTGeometryBuilder Geometry/CSCGeometry Geometry/CSCGeometryBuilder Geometry/CommonTopologies DetectorDescription/Core Geometry/Records DataFormats/DetId FWCore/Framework FWCore/Concurrency CondCore/DBCommon CondCore/DBOutputService CondFormats/Alignment DataFormats/MuonDetId DataFormats/TrackingRecHit xerces-c,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AlignmentMuonAlignment_EX_LIB   := AlignmentMuonAlignment
ALL_EXTERNAL_PRODS += AlignmentMuonAlignment
endif
ifeq ($(strip $(DataFormats/L1DTTrackFinder)),)
DataFormatsL1DTTrackFinder := cmssw/DataFormats/L1DTTrackFinder
DataFormats/L1DTTrackFinder := DataFormatsL1DTTrackFinder
DataFormatsL1DTTrackFinder_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsL1DTTrackFinder_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/L1GlobalMuonTrigger rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsL1DTTrackFinder_EX_LIB   := DataFormatsL1DTTrackFinder
ALL_EXTERNAL_PRODS += DataFormatsL1DTTrackFinder
endif
ifeq ($(strip $(CalibTracker/SiStripDCS)),)
CalibTrackerSiStripDCS := cmssw/CalibTracker/SiStripDCS
CalibTracker/SiStripDCS := CalibTrackerSiStripDCS
CalibTrackerSiStripDCS_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibTrackerSiStripDCS_EX_USE := $(foreach d, cmssw  CalibFormats/SiStripObjects CondFormats/SiStripObjects DataFormats/Common CondFormats/Common DataFormats/SiStripCommon FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager FWCore/ServiceRegistry FWCore/Utilities Geometry/Records Geometry/TrackerGeometryBuilder CondCore/DBOutputService DataFormats/SiStripDetId CondCore/DBCommon CoralCommon CondCore/PopCon OnlineDB/SiStripConfigDb CalibTracker/Records tkonlineswdb boost root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibTrackerSiStripDCS_EX_LIB   := CalibTrackerSiStripDCS
ALL_EXTERNAL_PRODS += CalibTrackerSiStripDCS
endif
ifeq ($(strip $(RecoEgamma/EgammaMCTools)),)
RecoEgammaEgammaMCTools := cmssw/RecoEgamma/EgammaMCTools
RecoEgamma/EgammaMCTools := RecoEgammaEgammaMCTools
RecoEgammaEgammaMCTools_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoEgammaEgammaMCTools_EX_USE := $(foreach d, cmssw  SimDataFormats/Track SimDataFormats/Vertex clhep SimDataFormats/CrossingFrame,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoEgammaEgammaMCTools_EX_LIB   := RecoEgammaEgammaMCTools
ALL_EXTERNAL_PRODS += RecoEgammaEgammaMCTools
endif
ifeq ($(strip $(SimG4Core/Application)),)
SimG4CoreApplication := cmssw/SimG4Core/Application
SimG4Core/Application := SimG4CoreApplication
SimG4CoreApplication_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CoreApplication_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/Math SimDataFormats/GeneratorProducts SimDataFormats/Forward SimDataFormats/Track SimDataFormats/Vertex SimG4Core/Generators SimG4Core/Geometry SimG4Core/MagneticField SimG4Core/Notification SimG4Core/Physics SimG4Core/SensitiveDetector SimG4Core/Watcher SimGeneral/HepPDTRecord SimGeneral/GFlash FWCore/ParameterSet FWCore/PluginManager FWCore/Framework FWCore/Utilities MagneticField/Engine MagneticField/Records clhep xerces-c geant4core hepmc heppdt rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CoreApplication_EX_LIB   := SimG4CoreApplication
ALL_EXTERNAL_PRODS += SimG4CoreApplication
endif
ifeq ($(strip $(RecoVertex/PrimaryVertexProducer)),)
RecoVertexPrimaryVertexProducer := cmssw/RecoVertex/PrimaryVertexProducer
RecoVertex/PrimaryVertexProducer := RecoVertexPrimaryVertexProducer
RecoVertexPrimaryVertexProducer_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoVertexPrimaryVertexProducer_EX_USE := $(foreach d, cmssw  DataFormats/BeamSpot DataFormats/VertexReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet RecoVertex/AdaptiveVertexFit RecoVertex/KalmanVertexFit RecoVertex/TrimmedKalmanVertexFinder RecoVertex/VertexPrimitives RecoVertex/VertexTools TrackingTools/TransientTrack vdt,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoVertexPrimaryVertexProducer_EX_LIB   := RecoVertexPrimaryVertexProducer
ALL_EXTERNAL_PRODS += RecoVertexPrimaryVertexProducer
endif
ifeq ($(strip $(TauAnalysis/MCEmbeddingTools)),)
TauAnalysisMCEmbeddingTools := cmssw/TauAnalysis/MCEmbeddingTools
TauAnalysis/MCEmbeddingTools := TauAnalysisMCEmbeddingTools
TauAnalysisMCEmbeddingTools_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TauAnalysisMCEmbeddingTools_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet rootmath boost SimDataFormats/GeneratorProducts DataFormats/HepMCCandidate RecoMuon/MuonIsolation DataFormats/DetId TrackingTools/TrackAssociator DataFormats/VertexReco CommonTools/Utils CommonTools/UtilAlgos GeneratorInterface/ExternalDecays DataFormats/MuonReco DataFormats/EcalRecHit pythia6 GeneratorInterface/Pythia6Interface GeneratorInterface/Core,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TauAnalysisMCEmbeddingTools_EX_LIB   := TauAnalysisMCEmbeddingTools
ALL_EXTERNAL_PRODS += TauAnalysisMCEmbeddingTools
endif
ifeq ($(strip $(SimCalorimetry/EcalSimAlgos)),)
SimCalorimetryEcalSimAlgos := cmssw/SimCalorimetry/EcalSimAlgos
SimCalorimetry/EcalSimAlgos := SimCalorimetryEcalSimAlgos
SimCalorimetryEcalSimAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimCalorimetryEcalSimAlgos_EX_USE := $(foreach d, cmssw  SimDataFormats/CaloHit DataFormats/EcalDigi DataFormats/EcalDetId SimCalorimetry/CaloSimAlgos SimGeneral/NoiseGenerators CondFormats/EcalObjects CalibCalorimetry/EcalLaserCorrection CalibFormats/CaloObjects clhep roothistmatrix,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimCalorimetryEcalSimAlgos_EX_LIB   := SimCalorimetryEcalSimAlgos
ALL_EXTERNAL_PRODS += SimCalorimetryEcalSimAlgos
endif
ifeq ($(strip $(DPGAnalysis/SiStripTools)),)
DPGAnalysisSiStripTools := cmssw/DPGAnalysis/SiStripTools
DPGAnalysis/SiStripTools := DPGAnalysisSiStripTools
DPGAnalysisSiStripTools_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DPGAnalysisSiStripTools_EX_USE := $(foreach d, cmssw  root rootrflx FWCore/MessageLogger FWCore/Utilities FWCore/ServiceRegistry FWCore/Framework FWCore/ParameterSet CommonTools/UtilAlgos DataFormats/Luminosity DataFormats/Provenance DataFormats/SiStripDigi DataFormats/SiStripCluster DataFormats/SiPixelCluster DataFormats/Scalers DataFormats/Common DataFormats/DetId DataFormats/SiStripDetId DataFormats/TrackReco DataFormats/TrackerCommon CondFormats/DataRecord CondFormats/SiStripObjects CalibFormats/SiStripObjects CalibTracker/Records SimDataFormats/PileupSummaryInfo SimDataFormats/GeneratorProducts,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DPGAnalysisSiStripTools_EX_LIB   := DPGAnalysisSiStripTools
ALL_EXTERNAL_PRODS += DPGAnalysisSiStripTools
endif
ifeq ($(strip $(SimG4Core/Watcher)),)
SimG4CoreWatcher := cmssw/SimG4Core/Watcher
SimG4Core/Watcher := SimG4CoreWatcher
SimG4CoreWatcher_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CoreWatcher_EX_USE := $(foreach d, cmssw  FWCore/ParameterSet boost sigcpp,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CoreWatcher_EX_LIB   := SimG4CoreWatcher
ALL_EXTERNAL_PRODS += SimG4CoreWatcher
endif
ifeq ($(strip $(Alignment/CommonAlignmentMonitor)),)
AlignmentCommonAlignmentMonitor := cmssw/Alignment/CommonAlignmentMonitor
Alignment/CommonAlignmentMonitor := AlignmentCommonAlignmentMonitor
AlignmentCommonAlignmentMonitor_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AlignmentCommonAlignmentMonitor_EX_USE := $(foreach d, cmssw  FWCore/ParameterSet FWCore/PluginManager FWCore/MessageLogger Alignment/CommonAlignment roothistmatrix CommonTools/Utils CommonTools/UtilAlgos,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AlignmentCommonAlignmentMonitor_EX_LIB   := AlignmentCommonAlignmentMonitor
ALL_EXTERNAL_PRODS += AlignmentCommonAlignmentMonitor
endif
ifeq ($(strip $(CalibTracker/SiStripAPVAnalysis)),)
CalibTrackerSiStripAPVAnalysis := cmssw/CalibTracker/SiStripAPVAnalysis
CalibTracker/SiStripAPVAnalysis := CalibTrackerSiStripAPVAnalysis
CalibTrackerSiStripAPVAnalysis_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibTrackerSiStripAPVAnalysis_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/ServiceRegistry FWCore/Utilities DataFormats/Common CondFormats/SiStripObjects CondFormats/DataRecord,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibTrackerSiStripAPVAnalysis_EX_LIB   := CalibTrackerSiStripAPVAnalysis
ALL_EXTERNAL_PRODS += CalibTrackerSiStripAPVAnalysis
endif
ifeq ($(strip $(IOPool/Streamer)),)
IOPoolStreamer := cmssw/IOPool/Streamer
IOPool/Streamer := IOPoolStreamer
IOPoolStreamer_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
IOPoolStreamer_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/Provenance DataFormats/Streamer FWCore/Catalog FWCore/Framework FWCore/ParameterSet FWCore/PluginManager FWCore/RootAutoLibraryLoader FWCore/ServiceRegistry FWCore/Sources FWCore/Utilities FWCore/Version Utilities/StorageFactory boost rootcintex rootcore zlib,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
IOPoolStreamer_EX_LIB   := IOPoolStreamer
ALL_EXTERNAL_PRODS += IOPoolStreamer
endif
ifeq ($(strip $(DataFormats/FWLite)),)
DataFormatsFWLite := cmssw/DataFormats/FWLite
DataFormats/FWLite := DataFormatsFWLite
DataFormatsFWLite_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsFWLite_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/Provenance FWCore/Common FWCore/FWLite FWCore/ParameterSet FWCore/Utilities rootcore,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsFWLite_EX_LIB   := DataFormatsFWLite
ALL_EXTERNAL_PRODS += DataFormatsFWLite
endif
ifeq ($(strip $(PhysicsTools/ParallelAnalysis)),)
PhysicsToolsParallelAnalysis := cmssw/PhysicsTools/ParallelAnalysis
PhysicsTools/ParallelAnalysis := PhysicsToolsParallelAnalysis
PhysicsToolsParallelAnalysis_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
PhysicsToolsParallelAnalysis_EX_USE := $(foreach d, cmssw  DataFormats/Common FWCore/Framework FWCore/PluginManager FWCore/TFWLiteSelector clhep rootgpad rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsParallelAnalysis_EX_LIB   := PhysicsToolsParallelAnalysis
ALL_EXTERNAL_PRODS += PhysicsToolsParallelAnalysis
endif
ifeq ($(strip $(TrackingTools/TrajectoryState)),)
TrackingToolsTrajectoryState := cmssw/TrackingTools/TrajectoryState
TrackingTools/TrajectoryState := TrackingToolsTrajectoryState
TrackingToolsTrajectoryState_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TrackingToolsTrajectoryState_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/GeometrySurface DataFormats/GeometryVector DataFormats/TrackReco DataFormats/TrajectoryState DataFormats/BeamSpot TrackingTools/AnalyticalJacobians TrackingTools/TrajectoryParametrization MagneticField/Engine rootrflx vdt,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TrackingToolsTrajectoryState_EX_LIB   := TrackingToolsTrajectoryState
ALL_EXTERNAL_PRODS += TrackingToolsTrajectoryState
endif
ifeq ($(strip $(RecoVertex/KalmanVertexFit)),)
RecoVertexKalmanVertexFit := cmssw/RecoVertex/KalmanVertexFit
RecoVertex/KalmanVertexFit := RecoVertexKalmanVertexFit
RecoVertexKalmanVertexFit_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoVertexKalmanVertexFit_EX_USE := $(foreach d, cmssw  CommonTools/Statistics DataFormats/CLHEP DataFormats/GeometryCommonDetAlgo DataFormats/GeometrySurface DataFormats/GeometryVector DataFormats/VertexReco FWCore/MessageLogger RecoVertex/LinearizationPointFinders RecoVertex/VertexPrimitives RecoVertex/VertexTools SimDataFormats/TrackingAnalysis SimTracker/TrackAssociation TrackingTools/TrajectoryState TrackingTools/TransientTrack rootcore,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoVertexKalmanVertexFit_EX_LIB   := RecoVertexKalmanVertexFit
ALL_EXTERNAL_PRODS += RecoVertexKalmanVertexFit
endif
ifeq ($(strip $(SimCalorimetry/EcalSelectiveReadoutAlgos)),)
SimCalorimetryEcalSelectiveReadoutAlgos := cmssw/SimCalorimetry/EcalSelectiveReadoutAlgos
SimCalorimetry/EcalSelectiveReadoutAlgos := SimCalorimetryEcalSelectiveReadoutAlgos
SimCalorimetryEcalSelectiveReadoutAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimCalorimetryEcalSelectiveReadoutAlgos_EX_USE := $(foreach d, cmssw  Geometry/CaloTopology Geometry/EcalMapping DataFormats/EcalDigi DataFormats/EcalDetId boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimCalorimetryEcalSelectiveReadoutAlgos_EX_LIB   := SimCalorimetryEcalSelectiveReadoutAlgos
ALL_EXTERNAL_PRODS += SimCalorimetryEcalSelectiveReadoutAlgos
endif
ifeq ($(strip $(DataFormats/DetId)),)
DataFormatsDetId := cmssw/DataFormats/DetId
DataFormats/DetId := DataFormatsDetId
DataFormatsDetId_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsDetId_EX_USE := $(foreach d, cmssw  boost rootrflx DataFormats/Common,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsDetId_EX_LIB   := DataFormatsDetId
ALL_EXTERNAL_PRODS += DataFormatsDetId
endif
ifeq ($(strip $(CalibTracker/SiPixelConnectivity)),)
CalibTrackerSiPixelConnectivity := cmssw/CalibTracker/SiPixelConnectivity
CalibTracker/SiPixelConnectivity := CalibTrackerSiPixelConnectivity
CalibTrackerSiPixelConnectivity_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibTrackerSiPixelConnectivity_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/ParameterSet FWCore/PluginManager Geometry/Records Geometry/TrackerGeometryBuilder CondFormats/SiPixelObjects CondFormats/DataRecord DataFormats/SiPixelDetId Geometry/CommonDetUnit CondCore/DBCommon CondCore/IOVService CondCore/MetaDataService boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibTrackerSiPixelConnectivity_EX_LIB   := CalibTrackerSiPixelConnectivity
ALL_EXTERNAL_PRODS += CalibTrackerSiPixelConnectivity
endif
ifeq ($(strip $(RecoParticleFlow/PFClusterProducer)),)
RecoParticleFlowPFClusterProducer := cmssw/RecoParticleFlow/PFClusterProducer
RecoParticleFlow/PFClusterProducer := RecoParticleFlowPFClusterProducer
RecoParticleFlowPFClusterProducer_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoParticleFlowPFClusterProducer_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/ParticleFlowReco DataFormats/HcalDetId RecoEcal/EgammaCoreTools rootmath root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoParticleFlowPFClusterProducer_EX_LIB   := RecoParticleFlowPFClusterProducer
ALL_EXTERNAL_PRODS += RecoParticleFlowPFClusterProducer
endif
ifeq ($(strip $(Geometry/TrackerGeometryBuilder)),)
GeometryTrackerGeometryBuilder := cmssw/Geometry/TrackerGeometryBuilder
Geometry/TrackerGeometryBuilder := GeometryTrackerGeometryBuilder
GeometryTrackerGeometryBuilder_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeometryTrackerGeometryBuilder_EX_USE := $(foreach d, cmssw  DataFormats/GeometrySurface DataFormats/SiPixelDetId DataFormats/SiStripDetId DetectorDescription/Core FWCore/MessageLogger FWCore/ServiceRegistry FWCore/ParameterSet Geometry/CommonDetUnit Geometry/CommonTopologies Geometry/TrackerNumberingBuilder clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryTrackerGeometryBuilder_EX_LIB   := GeometryTrackerGeometryBuilder
ALL_EXTERNAL_PRODS += GeometryTrackerGeometryBuilder
endif
ifeq ($(strip $(CalibMuon/DTDigiSync)),)
CalibMuonDTDigiSync := cmssw/CalibMuon/DTDigiSync
CalibMuon/DTDigiSync := CalibMuonDTDigiSync
CalibMuonDTDigiSync_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibMuonDTDigiSync_EX_USE := $(foreach d, cmssw  FWCore/Framework Geometry/Records Geometry/DTGeometry CondFormats/DTObjects CondFormats/DataRecord,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibMuonDTDigiSync_EX_LIB   := CalibMuonDTDigiSync
ALL_EXTERNAL_PRODS += CalibMuonDTDigiSync
endif
ifeq ($(strip $(PhysicsTools/MVAComputer)),)
PhysicsToolsMVAComputer := cmssw/PhysicsTools/MVAComputer
PhysicsTools/MVAComputer := PhysicsToolsMVAComputer
PhysicsToolsMVAComputer_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
PhysicsToolsMVAComputer_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/ParameterSet FWCore/Utilities CondFormats/PhysicsToolsObjects rootcore boost zlib,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsMVAComputer_EX_LIB   := PhysicsToolsMVAComputer
ALL_EXTERNAL_PRODS += PhysicsToolsMVAComputer
endif
ifeq ($(strip $(FWCore/Common)),)
FWCoreCommon := cmssw/FWCore/Common
FWCore/Common := FWCoreCommon
FWCoreCommon_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCoreCommon_EX_USE := $(foreach d, cmssw  DataFormats/Provenance FWCore/ParameterSet FWCore/Utilities,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCoreCommon_EX_LIB   := FWCoreCommon
ALL_EXTERNAL_PRODS += FWCoreCommon
endif
ifeq ($(strip $(RecoMuon/TransientTrackingRecHit)),)
RecoMuonTransientTrackingRecHit := cmssw/RecoMuon/TransientTrackingRecHit
RecoMuon/TransientTrackingRecHit := RecoMuonTransientTrackingRecHit
RecoMuonTransientTrackingRecHit_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoMuonTransientTrackingRecHit_EX_USE := $(foreach d, cmssw  DataFormats/TrackingRecHit FWCore/Framework FWCore/MessageLogger FWCore/Utilities Geometry/CommonDetUnit TrackingTools/TransientTrackingRecHit,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoMuonTransientTrackingRecHit_EX_LIB   := RecoMuonTransientTrackingRecHit
ALL_EXTERNAL_PRODS += RecoMuonTransientTrackingRecHit
endif
ifeq ($(strip $(DataFormats/SiStripDetId)),)
DataFormatsSiStripDetId := cmssw/DataFormats/SiStripDetId
DataFormats/SiStripDetId := DataFormatsSiStripDetId
DataFormatsSiStripDetId_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsSiStripDetId_EX_USE := $(foreach d, cmssw  rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsSiStripDetId_EX_LIB   := DataFormatsSiStripDetId
ALL_EXTERNAL_PRODS += DataFormatsSiStripDetId
endif
ifeq ($(strip $(GeneratorInterface/ThePEGInterface)),)
GeneratorInterfaceThePEGInterface := cmssw/GeneratorInterface/ThePEGInterface
GeneratorInterface/ThePEGInterface := GeneratorInterfaceThePEGInterface
GeneratorInterfaceThePEGInterface_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeneratorInterfaceThePEGInterface_EX_USE := $(foreach d, cmssw  SimDataFormats/GeneratorProducts GeneratorInterface/Core hepmc thepeg,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeneratorInterfaceThePEGInterface_EX_LIB   := GeneratorInterfaceThePEGInterface
ALL_EXTERNAL_PRODS += GeneratorInterfaceThePEGInterface
endif
ifeq ($(strip $(DQM/DataScouting)),)
DQMDataScouting := cmssw/DQM/DataScouting
DQM/DataScouting := DQMDataScouting
DQMDataScouting_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMDataScouting_EX_USE := $(foreach d, cmssw  clhep root FWCore/Framework FWCore/ParameterSet DataFormats/Math DQMServices/Components DQMServices/Core,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMDataScouting_EX_LIB   := DQMDataScouting
ALL_EXTERNAL_PRODS += DQMDataScouting
endif
ifeq ($(strip $(GeneratorInterface/AMPTInterface)),)
GeneratorInterfaceAMPTInterface := cmssw/GeneratorInterface/AMPTInterface
GeneratorInterface/AMPTInterface := GeneratorInterfaceAMPTInterface
GeneratorInterfaceAMPTInterface_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeneratorInterfaceAMPTInterface_EX_USE := $(foreach d, cmssw  boost GeneratorInterface/Core FWCore/Framework SimDataFormats/GeneratorProducts GeneratorInterface/ExternalDecays f77compiler,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeneratorInterfaceAMPTInterface_EX_LIB   := GeneratorInterfaceAMPTInterface
ALL_EXTERNAL_PRODS += GeneratorInterfaceAMPTInterface
endif
ifeq ($(strip $(Geometry/GEMGeometryBuilder)),)
GeometryGEMGeometryBuilder := cmssw/Geometry/GEMGeometryBuilder
Geometry/GEMGeometryBuilder := GeometryGEMGeometryBuilder
GeometryGEMGeometryBuilder_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeometryGEMGeometryBuilder_EX_USE := $(foreach d, cmssw  Geometry/MuonNumbering Geometry/GEMGeometry DetectorDescription/Core,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryGEMGeometryBuilder_EX_LIB   := GeometryGEMGeometryBuilder
ALL_EXTERNAL_PRODS += GeometryGEMGeometryBuilder
endif
ifeq ($(strip $(Geometry/CaloGeometry)),)
GeometryCaloGeometry := cmssw/Geometry/CaloGeometry
Geometry/CaloGeometry := GeometryCaloGeometry
GeometryCaloGeometry_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeometryCaloGeometry_EX_USE := $(foreach d, cmssw  DataFormats/EcalDetId DataFormats/HcalDetId DataFormats/CaloTowers DataFormats/GeometryVector clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryCaloGeometry_EX_LIB   := GeometryCaloGeometry
ALL_EXTERNAL_PRODS += GeometryCaloGeometry
endif
ifeq ($(strip $(Fireworks/Tracks)),)
FireworksTracks := cmssw/Fireworks/Tracks
Fireworks/Tracks := FireworksTracks
FireworksTracks_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FireworksTracks_EX_USE := $(foreach d, cmssw  DataFormats/CaloTowers DataFormats/EcalDetId DataFormats/GsfTrackReco DataFormats/HcalDetId DataFormats/MuonDetId DataFormats/SiPixelCluster DataFormats/SiPixelDetId DataFormats/SiStripCluster DataFormats/SiStripDetId DataFormats/TrackReco DataFormats/TrackerRecHit2D DataFormats/TrackingRecHit Fireworks/Core rootmath rootphysics,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FireworksTracks_EX_LIB   := FireworksTracks
ALL_EXTERNAL_PRODS += FireworksTracks
endif
ifeq ($(strip $(RecoTracker/Record)),)
RecoTrackerRecord := cmssw/RecoTracker/Record
RecoTracker/Record := RecoTrackerRecord
RecoTrackerRecord_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoTrackerRecord_EX_USE := $(foreach d, cmssw  FWCore/Utilities FWCore/Framework Geometry/Records TrackingTools/Records CondFormats/DataRecord CalibTracker/Records clhep boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoTrackerRecord_EX_LIB   := RecoTrackerRecord
ALL_EXTERNAL_PRODS += RecoTrackerRecord
endif
ifeq ($(strip $(Alignment/LaserAlignmentSimulation)),)
AlignmentLaserAlignmentSimulation := cmssw/Alignment/LaserAlignmentSimulation
Alignment/LaserAlignmentSimulation := AlignmentLaserAlignmentSimulation
AlignmentLaserAlignmentSimulation_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AlignmentLaserAlignmentSimulation_EX_USE := $(foreach d, cmssw  FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities SimG4Core/Notification clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AlignmentLaserAlignmentSimulation_EX_LIB   := AlignmentLaserAlignmentSimulation
ALL_EXTERNAL_PRODS += AlignmentLaserAlignmentSimulation
endif
ifeq ($(strip $(GeneratorInterface/LHEInterface)),)
GeneratorInterfaceLHEInterface := cmssw/GeneratorInterface/LHEInterface
GeneratorInterface/LHEInterface := GeneratorInterfaceLHEInterface
GeneratorInterfaceLHEInterface_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeneratorInterfaceLHEInterface_EX_USE := $(foreach d, cmssw  FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager FWCore/Utilities FWCore/Concurrency SimDataFormats/GeneratorProducts Utilities/StorageFactory hepmc boost sigcpp xerces-c rootmath libhepml fastjet xz,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeneratorInterfaceLHEInterface_EX_LIB   := GeneratorInterfaceLHEInterface
ALL_EXTERNAL_PRODS += GeneratorInterfaceLHEInterface
endif
ifeq ($(strip $(L1Trigger/DTSectorCollector)),)
L1TriggerDTSectorCollector := cmssw/L1Trigger/DTSectorCollector
L1Trigger/DTSectorCollector := L1TriggerDTSectorCollector
L1TriggerDTSectorCollector_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
L1TriggerDTSectorCollector_EX_USE := $(foreach d, cmssw  FWCore/PluginManager FWCore/ParameterSet Geometry/DTGeometry L1TriggerConfig/DTTPGConfig L1Trigger/DTUtilities L1Trigger/DTBti L1Trigger/DTTraco L1Trigger/DTTriggerServerTheta L1Trigger/DTTriggerServerPhi clhep root rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
L1TriggerDTSectorCollector_EX_LIB   := L1TriggerDTSectorCollector
ALL_EXTERNAL_PRODS += L1TriggerDTSectorCollector
endif
ifeq ($(strip $(RecoTracker/TransientTrackingRecHit)),)
RecoTrackerTransientTrackingRecHit := cmssw/RecoTracker/TransientTrackingRecHit
RecoTracker/TransientTrackingRecHit := RecoTrackerTransientTrackingRecHit
RecoTrackerTransientTrackingRecHit_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoTrackerTransientTrackingRecHit_EX_USE := $(foreach d, cmssw  TrackingTools/TransientTrackingRecHit DataFormats/TrackerRecHit2D RecoLocalTracker/Records RecoLocalTracker/ClusterParameterEstimator RecoLocalTracker/SiPixelRecHits RecoLocalTracker/SiStripRecHitConverter FWCore/Framework DataFormats/Common clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoTrackerTransientTrackingRecHit_EX_LIB   := RecoTrackerTransientTrackingRecHit
ALL_EXTERNAL_PRODS += RecoTrackerTransientTrackingRecHit
endif
ifeq ($(strip $(SimCalorimetry/EcalTestBeamAlgos)),)
SimCalorimetryEcalTestBeamAlgos := cmssw/SimCalorimetry/EcalTestBeamAlgos
SimCalorimetry/EcalTestBeamAlgos := SimCalorimetryEcalTestBeamAlgos
SimCalorimetryEcalTestBeamAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimCalorimetryEcalTestBeamAlgos_EX_USE := $(foreach d, cmssw  DataFormats/EcalDetId DataFormats/EcalDigi SimDataFormats/EcalTestBeam Geometry/CaloGeometry Geometry/CaloTopology FWCore/Framework,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimCalorimetryEcalTestBeamAlgos_EX_LIB   := SimCalorimetryEcalTestBeamAlgos
ALL_EXTERNAL_PRODS += SimCalorimetryEcalTestBeamAlgos
endif
ifeq ($(strip $(DataFormats/MuonReco)),)
DataFormatsMuonReco := cmssw/DataFormats/MuonReco
DataFormats/MuonReco := DataFormatsMuonReco
DataFormatsMuonReco_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsMuonReco_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/RecoCandidate DataFormats/ParticleFlowCandidate DataFormats/TrackReco DataFormats/DTRecHit DataFormats/CSCRecHit DataFormats/VertexReco rootrflx rootmath,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsMuonReco_EX_LIB   := DataFormatsMuonReco
ALL_EXTERNAL_PRODS += DataFormatsMuonReco
endif
ifeq ($(strip $(CondFormats/AlignmentRecord)),)
CondFormatsAlignmentRecord := cmssw/CondFormats/AlignmentRecord
CondFormats/AlignmentRecord := CondFormatsAlignmentRecord
CondFormatsAlignmentRecord_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondFormatsAlignmentRecord_EX_USE := $(foreach d, cmssw  FWCore/Framework,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsAlignmentRecord_EX_LIB   := CondFormatsAlignmentRecord
ALL_EXTERNAL_PRODS += CondFormatsAlignmentRecord
endif
ifeq ($(strip $(Utilities/BinningTools)),)
UtilitiesBinningTools := cmssw/Utilities/BinningTools
Utilities/BinningTools := UtilitiesBinningTools
UtilitiesBinningTools_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
UtilitiesBinningTools_EX_USE := $(foreach d, cmssw  ,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
UtilitiesBinningTools_EX_LIB   := UtilitiesBinningTools
ALL_EXTERNAL_PRODS += UtilitiesBinningTools
endif
ifeq ($(strip $(EgammaAnalysis/ElectronTools)),)
EgammaAnalysisElectronTools := cmssw/EgammaAnalysis/ElectronTools
EgammaAnalysis/ElectronTools := EgammaAnalysisElectronTools
EgammaAnalysisElectronTools_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
EgammaAnalysisElectronTools_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/ServiceRegistry FWCore/Utilities FWCore/MessageLogger FWCore/ParameterSet Geometry/CaloTopology CondCore/DBOutputService CondFormats/EgammaObjects CondFormats/PhysicsToolsObjects RecoEgamma/EgammaTools RecoEcal/EgammaCoreTools DataFormats/Candidate DataFormats/Common DataFormats/EgammaCandidates DataFormats/PatCandidates DataFormats/EgammaReco DataFormats/TrackReco TrackingTools/IPTools PhysicsTools/UtilAlgos clhep root roottmva,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
EgammaAnalysisElectronTools_EX_LIB   := EgammaAnalysisElectronTools
ALL_EXTERNAL_PRODS += EgammaAnalysisElectronTools
endif
ifeq ($(strip $(RecoMuon/TrackerSeedGenerator)),)
RecoMuonTrackerSeedGenerator := cmssw/RecoMuon/TrackerSeedGenerator
RecoMuon/TrackerSeedGenerator := RecoMuonTrackerSeedGenerator
RecoMuonTrackerSeedGenerator_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoMuonTrackerSeedGenerator_EX_USE := $(foreach d, cmssw  DataFormats/BeamSpot DataFormats/Common DataFormats/GeometryCommonDetAlgo DataFormats/GeometryVector DataFormats/L1GlobalMuonTrigger DataFormats/TrackReco DataFormats/TrackerRecHit2D DataFormats/TrackingRecHit DataFormats/TrajectorySeed FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager MagneticField/Engine MagneticField/Records RecoPixelVertexing/PixelTrackFitting RecoTracker/TkMSParametrization RecoTracker/TkSeedingLayers RecoTracker/TkTrackingRegions RecoTracker/TransientTrackingRecHit TrackingTools/PatternTools TrackingTools/Records TrackingTools/TrajectoryState TrackingTools/TransientTrackingRecHit,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoMuonTrackerSeedGenerator_EX_LIB   := RecoMuonTrackerSeedGenerator
ALL_EXTERNAL_PRODS += RecoMuonTrackerSeedGenerator
endif
ifeq ($(strip $(CondCore/ORA)),)
CondCoreORA := cmssw/CondCore/ORA
CondCore/ORA := CondCoreORA
CondCoreORA_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondCoreORA_EX_USE := $(foreach d, cmssw  boost CoralCommon CoralKernel RelationalAccess FWCore/Framework FWCore/Utilities,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondCoreORA_EX_LIB   := CondCoreORA
ALL_EXTERNAL_PRODS += CondCoreORA
endif
ifeq ($(strip $(Validation/MuonCSCDigis)),)
ValidationMuonCSCDigis := cmssw/Validation/MuonCSCDigis
Validation/MuonCSCDigis := ValidationMuonCSCDigis
ValidationMuonCSCDigis_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
ValidationMuonCSCDigis_EX_USE := $(foreach d, cmssw  DQMServices/Core DataFormats/CSCDigi DataFormats/Common FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry Geometry/CSCGeometry Geometry/Records SimDataFormats/CrossingFrame SimDataFormats/TrackingHit SimMuon/MCTruth,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ValidationMuonCSCDigis_EX_LIB   := ValidationMuonCSCDigis
ALL_EXTERNAL_PRODS += ValidationMuonCSCDigis
endif
ifeq ($(strip $(Utilities/DCacheAdaptor)),)
UtilitiesDCacheAdaptor := cmssw/Utilities/DCacheAdaptor
Utilities/DCacheAdaptor := UtilitiesDCacheAdaptor
UtilitiesDCacheAdaptor_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
UtilitiesDCacheAdaptor_EX_USE := $(foreach d, cmssw  Utilities/StorageFactory FWCore/Utilities FWCore/MessageLogger dcap,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
UtilitiesDCacheAdaptor_EX_LIB   := UtilitiesDCacheAdaptor
ALL_EXTERNAL_PRODS += UtilitiesDCacheAdaptor
endif
ifeq ($(strip $(RecoBTag/SoftLepton)),)
RecoBTagSoftLepton := cmssw/RecoBTag/SoftLepton
RecoBTag/SoftLepton := RecoBTagSoftLepton
RecoBTagSoftLepton_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoBTagSoftLepton_EX_USE := $(foreach d, cmssw  FWCore/ParameterSet DataFormats/BTauReco RecoBTau/JetTagComputer,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoBTagSoftLepton_EX_LIB   := RecoBTagSoftLepton
ALL_EXTERNAL_PRODS += RecoBTagSoftLepton
endif
ifeq ($(strip $(DetectorDescription/RegressionTest)),)
DetectorDescriptionRegressionTest := cmssw/DetectorDescription/RegressionTest
DetectorDescription/RegressionTest := DetectorDescriptionRegressionTest
DetectorDescriptionRegressionTest_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DetectorDescriptionRegressionTest_EX_USE := $(foreach d, cmssw  DetectorDescription/Algorithm DetectorDescription/Base DetectorDescription/Core DetectorDescription/ExprAlgo DetectorDescription/Parser clhep xerces-c,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DetectorDescriptionRegressionTest_EX_LIB   := DetectorDescriptionRegressionTest
ALL_EXTERNAL_PRODS += DetectorDescriptionRegressionTest
endif
ifeq ($(strip $(EventFilter/Playback)),)
EventFilterPlayback := cmssw/EventFilter/Playback
EventFilter/Playback := EventFilterPlayback
EventFilterPlayback_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
EventFilterPlayback_EX_USE := $(foreach d, cmssw  DataFormats/FEDRawData FWCore/Framework FWCore/MessageLogger,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
EventFilterPlayback_EX_LIB   := EventFilterPlayback
ALL_EXTERNAL_PRODS += EventFilterPlayback
endif
ifeq ($(strip $(GeneratorInterface/ExternalDecays)),)
GeneratorInterfaceExternalDecays := cmssw/GeneratorInterface/ExternalDecays
GeneratorInterface/ExternalDecays := GeneratorInterfaceExternalDecays
GeneratorInterfaceExternalDecays_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeneratorInterfaceExternalDecays_EX_USE := $(foreach d, cmssw  FWCore/Concurrency FWCore/ParameterSet FWCore/Utilities GeneratorInterface/Pythia6Interface heppdt SimGeneral/HepPDTRecord tauolapp photos clhep evtgenlhc root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeneratorInterfaceExternalDecays_EX_LIB   := GeneratorInterfaceExternalDecays
ALL_EXTERNAL_PRODS += GeneratorInterfaceExternalDecays
endif
ifeq ($(strip $(AnalysisDataFormats/EWK)),)
AnalysisDataFormatsEWK := cmssw/AnalysisDataFormats/EWK
AnalysisDataFormats/EWK := AnalysisDataFormatsEWK
AnalysisDataFormatsEWK_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AnalysisDataFormatsEWK_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DataFormats/Common DataFormats/Candidate DataFormats/JetReco DataFormats/METReco CommonTools/CandUtils CommonTools/UtilAlgos CommonTools/RecoAlgos rootrflx clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AnalysisDataFormatsEWK_EX_LIB   := AnalysisDataFormatsEWK
ALL_EXTERNAL_PRODS += AnalysisDataFormatsEWK
endif
ifeq ($(strip $(DQM/EcalEndcapMonitorDbModule)),)
DQMEcalEndcapMonitorDbModule := cmssw/DQM/EcalEndcapMonitorDbModule
DQM/EcalEndcapMonitorDbModule := DQMEcalEndcapMonitorDbModule
DQMEcalEndcapMonitorDbModule_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMEcalEndcapMonitorDbModule_EX_USE := $(foreach d, cmssw  CoralBase DQMServices/Core FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry RelationalAccess rootcore xerces-c DQM/EcalBarrelMonitorDbModule,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMEcalEndcapMonitorDbModule_EX_LIB   := DQMEcalEndcapMonitorDbModule
ALL_EXTERNAL_PRODS += DQMEcalEndcapMonitorDbModule
endif
ifeq ($(strip $(DataFormats/HcalDigi)),)
DataFormatsHcalDigi := cmssw/DataFormats/HcalDigi
DataFormats/HcalDigi := DataFormatsHcalDigi
DataFormatsHcalDigi_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DataFormatsHcalDigi_EX_USE := $(foreach d, cmssw  DataFormats/Common DataFormats/HcalDetId boost rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsHcalDigi_EX_LIB   := DataFormatsHcalDigi
ALL_EXTERNAL_PRODS += DataFormatsHcalDigi
endif
ifeq ($(strip $(FWCore/Integration)),)
FWCoreIntegration := cmssw/FWCore/Integration
FWCore/Integration := FWCoreIntegration
FWCoreIntegration_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCoreIntegration_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/Utilities,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCoreIntegration_EX_LIB   := FWCoreIntegration
ALL_EXTERNAL_PRODS += FWCoreIntegration
endif
ifeq ($(strip $(EventFilter/SiStripRawToDigi)),)
EventFilterSiStripRawToDigi := cmssw/EventFilter/SiStripRawToDigi
EventFilter/SiStripRawToDigi := EventFilterSiStripRawToDigi
EventFilterSiStripRawToDigi_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
EventFilterSiStripRawToDigi_EX_USE := $(foreach d, cmssw  CondFormats/DataRecord CondFormats/SiStripObjects DataFormats/Common DataFormats/DetId DataFormats/FEDRawData DataFormats/SiStripDigi DataFormats/SiStripCluster DataFormats/SiStripCommon RecoLocalTracker/SiStripZeroSuppression FWCore/Framework FWCore/MessageLogger FWCore/Utilities boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
EventFilterSiStripRawToDigi_EX_LIB   := EventFilterSiStripRawToDigi
ALL_EXTERNAL_PRODS += EventFilterSiStripRawToDigi
endif
ifeq ($(strip $(Validation/RecoEgamma)),)
src_Validation_RecoEgamma := cmssw/Validation/RecoEgamma
Validation/RecoEgamma  := src_Validation_RecoEgamma
src_Validation_RecoEgamma_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
src_Validation_RecoEgamma_EX_USE := $(foreach d, FWCore/Framework cmssw DQMServices/Components DQMServices/Core FWCore/ParameterSet,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_Validation_RecoEgamma
endif

ifeq ($(strip $(L1Trigger/HardwareValidation)),)
L1TriggerHardwareValidation := cmssw/L1Trigger/HardwareValidation
L1Trigger/HardwareValidation := L1TriggerHardwareValidation
L1TriggerHardwareValidation_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
L1TriggerHardwareValidation_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet FWCore/MessageLogger DataFormats/EcalDigi DataFormats/L1CaloTrigger DataFormats/CSCDigi DataFormats/L1DTTrackFinder DataFormats/L1GlobalMuonTrigger DataFormats/L1GlobalTrigger DataFormats/L1Trigger DataFormats/FEDRawData CondTools/L1Trigger,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
L1TriggerHardwareValidation_EX_LIB   := L1TriggerHardwareValidation
ALL_EXTERNAL_PRODS += L1TriggerHardwareValidation
endif
ifeq ($(strip $(RecoTracker/MeasurementDet)),)
RecoTrackerMeasurementDet := cmssw/RecoTracker/MeasurementDet
RecoTracker/MeasurementDet := RecoTrackerMeasurementDet
RecoTrackerMeasurementDet_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoTrackerMeasurementDet_EX_USE := $(foreach d, cmssw  TrackingTools/GeomPropagators CalibFormats/SiStripObjects CondFormats/SiPixelObjects CalibTracker/Records DataFormats/Common DataFormats/GeometrySurface DataFormats/SiPixelCluster DataFormats/TrackerRecHit2D FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Services Geometry/CommonDetUnit Geometry/Records Geometry/TrackerGeometryBuilder RecoLocalTracker/Records RecoLocalTracker/SiPixelRecHits RecoLocalTracker/SiStripRecHitConverter RecoTracker/TransientTrackingRecHit TrackingTools/TrajectoryState TrackingTools/TransientTrackingRecHit rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoTrackerMeasurementDet_EX_LIB   := RecoTrackerMeasurementDet
ALL_EXTERNAL_PRODS += RecoTrackerMeasurementDet
endif
ifeq ($(strip $(RecoLocalCalo/HcalRecAlgos)),)
RecoLocalCaloHcalRecAlgos := cmssw/RecoLocalCalo/HcalRecAlgos
RecoLocalCalo/HcalRecAlgos := RecoLocalCaloHcalRecAlgos
RecoLocalCaloHcalRecAlgos_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoLocalCaloHcalRecAlgos_EX_USE := $(foreach d, cmssw  boost DataFormats/HcalDigi DataFormats/HcalRecHit CalibFormats/HcalObjects CalibFormats/CaloObjects CalibCalorimetry/HcalAlgos RecoMET/METAlgorithms DataFormats/CaloTowers FWCore/Framework FWCore/PluginManager FWCore/ParameterSet,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoLocalCaloHcalRecAlgos_EX_LIB   := RecoLocalCaloHcalRecAlgos
ALL_EXTERNAL_PRODS += RecoLocalCaloHcalRecAlgos
endif
ifeq ($(strip $(RecoTBCalo/EcalTBAnalysisCoreTools)),)
RecoTBCaloEcalTBAnalysisCoreTools := cmssw/RecoTBCalo/EcalTBAnalysisCoreTools
RecoTBCalo/EcalTBAnalysisCoreTools := RecoTBCaloEcalTBAnalysisCoreTools
RecoTBCaloEcalTBAnalysisCoreTools_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoTBCaloEcalTBAnalysisCoreTools_EX_USE := $(foreach d, cmssw  DataFormats/EcalRecHit DataFormats/EgammaReco DataFormats/Math Geometry/CaloGeometry Geometry/CaloTopology Geometry/EcalTestBeam Geometry/EcalAlgo clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoTBCaloEcalTBAnalysisCoreTools_EX_LIB   := RecoTBCaloEcalTBAnalysisCoreTools
ALL_EXTERNAL_PRODS += RecoTBCaloEcalTBAnalysisCoreTools
endif
ifeq ($(strip $(SimTracker/SiStripDigitizer)),)
SimTrackerSiStripDigitizer := cmssw/SimTracker/SiStripDigitizer
SimTracker/SiStripDigitizer := SimTrackerSiStripDigitizer
SimTrackerSiStripDigitizer_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimTrackerSiStripDigitizer_EX_USE := $(foreach d, cmssw  CalibFormats/SiStripObjects CalibTracker/Records DataFormats/Common DataFormats/SiStripDigi FWCore/Framework FWCore/ParameterSet Geometry/TrackerGeometryBuilder MagneticField/Engine MagneticField/Records RecoLocalTracker/SiStripZeroSuppression SimDataFormats/CrossingFrame SimDataFormats/TrackerDigiSimLink SimDataFormats/TrackingHit SimGeneral/HepPDTRecord SimGeneral/MixingModule SimGeneral/NoiseGenerators SimTracker/Common boost gsl vdt,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimTrackerSiStripDigitizer_EX_LIB   := SimTrackerSiStripDigitizer
ALL_EXTERNAL_PRODS += SimTrackerSiStripDigitizer
endif
ifeq ($(strip $(RecoEgamma/ElectronIdentification)),)
RecoEgammaElectronIdentification := cmssw/RecoEgamma/ElectronIdentification
RecoEgamma/ElectronIdentification := RecoEgammaElectronIdentification
RecoEgammaElectronIdentification_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoEgammaElectronIdentification_EX_USE := $(foreach d, cmssw  FWCore/Framework DataFormats/EgammaReco Geometry/CaloGeometry RecoEcal/EgammaCoreTools DataFormats/TrackReco MagneticField/Records MagneticField/Engine RecoEgamma/EgammaTools,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoEgammaElectronIdentification_EX_LIB   := RecoEgammaElectronIdentification
ALL_EXTERNAL_PRODS += RecoEgammaElectronIdentification
endif
ifeq ($(strip $(CalibCalorimetry/CaloMiscalibTools)),)
CalibCalorimetryCaloMiscalibTools := cmssw/CalibCalorimetry/CaloMiscalibTools
CalibCalorimetry/CaloMiscalibTools := CalibCalorimetryCaloMiscalibTools
CalibCalorimetryCaloMiscalibTools_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibCalorimetryCaloMiscalibTools_EX_USE := $(foreach d, cmssw  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet FWCore/Concurrency CondFormats/DataRecord DataFormats/EcalDetId DataFormats/HcalDetId CondFormats/EcalObjects CondFormats/HcalObjects DataFormats/DetId DataFormats/EcalRecHit DataFormats/HcalRecHit Geometry/CaloTopology CondCore/DBCommon CondCore/DBOutputService xerces-c,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibCalorimetryCaloMiscalibTools_EX_LIB   := CalibCalorimetryCaloMiscalibTools
ALL_EXTERNAL_PRODS += CalibCalorimetryCaloMiscalibTools
endif
ifeq ($(strip $(RecoParticleFlow/Benchmark)),)
RecoParticleFlowBenchmark := cmssw/RecoParticleFlow/Benchmark
RecoParticleFlow/Benchmark := RecoParticleFlowBenchmark
RecoParticleFlowBenchmark_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoParticleFlowBenchmark_EX_USE := $(foreach d, cmssw  DQMServices/Core DataFormats/Candidate DataFormats/Common DataFormats/HepMCCandidate DataFormats/JetReco DataFormats/ParticleFlowCandidate DataFormats/TauReco DataFormats/Math FWCore/Utilities SimDataFormats/GeneratorProducts,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoParticleFlowBenchmark_EX_LIB   := RecoParticleFlowBenchmark
ALL_EXTERNAL_PRODS += RecoParticleFlowBenchmark
endif
ifeq ($(strip $(EventFilter/Utilities)),)
EventFilterUtilities := cmssw/EventFilter/Utilities
EventFilter/Utilities := EventFilterUtilities
EventFilterUtilities_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
EventFilterUtilities_EX_USE := $(foreach d, cmssw  FWCore/MessageLogger FWCore/ServiceRegistry EventFilter/FEDInterface curl,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
EventFilterUtilities_EX_LIB   := EventFilterUtilities
ALL_EXTERNAL_PRODS += EventFilterUtilities
endif
ifeq ($(strip $(L1Trigger/GlobalCaloTrigger)),)
L1TriggerGlobalCaloTrigger := cmssw/L1Trigger/GlobalCaloTrigger
L1Trigger/GlobalCaloTrigger := L1TriggerGlobalCaloTrigger
L1TriggerGlobalCaloTrigger_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
L1TriggerGlobalCaloTrigger_EX_USE := $(foreach d, cmssw  boost DataFormats/L1GlobalCaloTrigger CondFormats/L1TObjects CondFormats/DataRecord,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
L1TriggerGlobalCaloTrigger_EX_LIB   := L1TriggerGlobalCaloTrigger
ALL_EXTERNAL_PRODS += L1TriggerGlobalCaloTrigger
endif
ifeq ($(strip $(RecoLocalTracker/ClusterParameterEstimator)),)
RecoLocalTrackerClusterParameterEstimator := cmssw/RecoLocalTracker/ClusterParameterEstimator
RecoLocalTracker/ClusterParameterEstimator := RecoLocalTrackerClusterParameterEstimator
RecoLocalTrackerClusterParameterEstimator_BuildFile    := $(CMSSW_BASE_FULL_RELEASE)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoLocalTrackerClusterParameterEstimator_EX_USE := $(foreach d, cmssw  FWCore/Utilities DataFormats/Common TrackingTools/TrajectoryState clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoLocalTrackerClusterParameterEstimator_EX_LIB   := RecoLocalTrackerClusterParameterEstimator
ALL_EXTERNAL_PRODS += RecoLocalTrackerClusterParameterEstimator
endif
