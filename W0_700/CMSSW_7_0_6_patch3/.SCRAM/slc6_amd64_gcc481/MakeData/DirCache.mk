ifeq ($(strip $(DataFormats/PatCandidates)),)
ALL_COMMONRULES += src_DataFormats_PatCandidates_src
src_DataFormats_PatCandidates_src_parent := DataFormats/PatCandidates
src_DataFormats_PatCandidates_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DataFormats_PatCandidates_src,src/DataFormats/PatCandidates/src,LIBRARY))
DataFormatsPatCandidates := self/DataFormats/PatCandidates
DataFormats/PatCandidates := DataFormatsPatCandidates
DataFormatsPatCandidates_files := $(patsubst src/DataFormats/PatCandidates/src/%,%,$(wildcard $(foreach dir,src/DataFormats/PatCandidates/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DataFormatsPatCandidates_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/PatCandidates/BuildFile
DataFormatsPatCandidates_LOC_USE := self cmssw FWCore/Utilities FWCore/Common DataFormats/Common DataFormats/StdDictionaries DataFormats/Candidate DataFormats/MuonReco DataFormats/TauReco DataFormats/JetReco DataFormats/METReco DataFormats/EgammaCandidates DataFormats/ParticleFlowCandidate DataFormats/TrackReco DataFormats/HepMCCandidate DataFormats/BTauReco CondFormats/L1TObjects DataFormats/L1Trigger DataFormats/HLTReco boost rootrflx
DataFormatsPatCandidates_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DataFormatsPatCandidatesCapabilities,DataFormatsPatCandidates,$(SCRAMSTORENAME_LIB),src/DataFormats/PatCandidates/src))
DataFormatsPatCandidates_PRE_INIT_FUNC += $$(eval $$(call LCGDict,DataFormatsPatCandidates,0,src/DataFormats/PatCandidates/src/classes_other.h src/DataFormats/PatCandidates/src/classes_trigger.h src/DataFormats/PatCandidates/src/classes_user.h src/DataFormats/PatCandidates/src/classes_objects.h,src/DataFormats/PatCandidates/src/classes_def_other.xml src/DataFormats/PatCandidates/src/classes_def_trigger.xml src/DataFormats/PatCandidates/src/classes_def_user.xml src/DataFormats/PatCandidates/src/classes_def_objects.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
DataFormatsPatCandidates_EX_LIB   := DataFormatsPatCandidates
DataFormatsPatCandidates_EX_USE   := $(foreach d,$(DataFormatsPatCandidates_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsPatCandidates_PACKAGE := self/src/DataFormats/PatCandidates/src
ALL_PRODS += DataFormatsPatCandidates
DataFormatsPatCandidates_INIT_FUNC        += $$(eval $$(call Library,DataFormatsPatCandidates,src/DataFormats/PatCandidates/src,src_DataFormats_PatCandidates_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(EgammaAnalysis/ElectronTools)),)
ALL_COMMONRULES += src_EgammaAnalysis_ElectronTools_src
src_EgammaAnalysis_ElectronTools_src_parent := EgammaAnalysis/ElectronTools
src_EgammaAnalysis_ElectronTools_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_EgammaAnalysis_ElectronTools_src,src/EgammaAnalysis/ElectronTools/src,LIBRARY))
EgammaAnalysisElectronTools := self/EgammaAnalysis/ElectronTools
EgammaAnalysis/ElectronTools := EgammaAnalysisElectronTools
EgammaAnalysisElectronTools_files := $(patsubst src/EgammaAnalysis/ElectronTools/src/%,%,$(wildcard $(foreach dir,src/EgammaAnalysis/ElectronTools/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
EgammaAnalysisElectronTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/EgammaAnalysis/ElectronTools/BuildFile
EgammaAnalysisElectronTools_LOC_USE := self cmssw FWCore/Framework FWCore/ServiceRegistry FWCore/Utilities FWCore/MessageLogger FWCore/ParameterSet Geometry/CaloTopology CondCore/DBOutputService CondFormats/EgammaObjects CondFormats/PhysicsToolsObjects RecoEgamma/EgammaTools RecoEcal/EgammaCoreTools DataFormats/Candidate DataFormats/Common DataFormats/EgammaCandidates DataFormats/PatCandidates DataFormats/EgammaReco DataFormats/TrackReco TrackingTools/IPTools PhysicsTools/UtilAlgos clhep root roottmva
EgammaAnalysisElectronTools_EX_LIB   := EgammaAnalysisElectronTools
EgammaAnalysisElectronTools_EX_USE   := $(foreach d,$(EgammaAnalysisElectronTools_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
EgammaAnalysisElectronTools_PACKAGE := self/src/EgammaAnalysis/ElectronTools/src
ALL_PRODS += EgammaAnalysisElectronTools
EgammaAnalysisElectronTools_INIT_FUNC        += $$(eval $$(call Library,EgammaAnalysisElectronTools,src/EgammaAnalysis/ElectronTools/src,src_EgammaAnalysis_ElectronTools_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(EgammaCoreTools/plugins)),)
src_EgammaCoreTools_plugins := self/EgammaCoreTools/plugins
EgammaCoreTools/plugins  := src_EgammaCoreTools_plugins
src_EgammaCoreTools_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/EgammaCoreTools/plugins/BuildFile
src_EgammaCoreTools_plugins_LOC_USE := CondFormats/EcalObjects RecoEcal/EgammaCoreTools self CondFormats/DataRecord cmssw
src_EgammaCoreTools_plugins_EX_USE   := $(foreach d,$(src_EgammaCoreTools_plugins_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_EgammaCoreTools_plugins
src_EgammaCoreTools_plugins_INIT_FUNC += $$(eval $$(call EmptyPackage,src_EgammaCoreTools_plugins,src/EgammaCoreTools/plugins))
endif

ifeq ($(strip $(EgammaCoreTools/test)),)
src_EgammaCoreTools_test := self/EgammaCoreTools/test
EgammaCoreTools/test  := src_EgammaCoreTools_test
src_EgammaCoreTools_test_BuildFile    := $(WORKINGDIR)/cache/bf/src/EgammaCoreTools/test/BuildFile
src_EgammaCoreTools_test_LOC_USE := CondFormats/EcalObjects SimDataFormats/GeneratorProducts clhep RecoEcal/EgammaCoreTools hepmc self cmssw Geometry/CaloGeometry DataFormats/EcalRecHit Geometry/CaloTopology CondFormats/DataRecord
src_EgammaCoreTools_test_EX_USE   := $(foreach d,$(src_EgammaCoreTools_test_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_EgammaCoreTools_test
src_EgammaCoreTools_test_INIT_FUNC += $$(eval $$(call EmptyPackage,src_EgammaCoreTools_test,src/EgammaCoreTools/test))
endif

ifeq ($(strip $(HiggsAnalysis/HiggsTo2photons)),)
ALL_COMMONRULES += src_HiggsAnalysis_HiggsTo2photons_src
src_HiggsAnalysis_HiggsTo2photons_src_parent := HiggsAnalysis/HiggsTo2photons
src_HiggsAnalysis_HiggsTo2photons_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_HiggsAnalysis_HiggsTo2photons_src,src/HiggsAnalysis/HiggsTo2photons/src,LIBRARY))
HiggsAnalysisHiggsTo2photons := self/HiggsAnalysis/HiggsTo2photons
HiggsAnalysis/HiggsTo2photons := HiggsAnalysisHiggsTo2photons
HiggsAnalysisHiggsTo2photons_files := $(patsubst src/HiggsAnalysis/HiggsTo2photons/src/%,%,$(wildcard $(foreach dir,src/HiggsAnalysis/HiggsTo2photons/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
HiggsAnalysisHiggsTo2photons_BuildFile    := $(WORKINGDIR)/cache/bf/src/HiggsAnalysis/HiggsTo2photons/BuildFile
HiggsAnalysisHiggsTo2photons_LOC_USE := self cmssw FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DataFormats/EgammaCandidates DataFormats/MuonReco DataFormats/JetReco Geometry/Records Geometry/EcalAlgo RecoEcal/EgammaCoreTools RecoEgamma/EgammaTools HLTrigger/HLTcore TrackingTools/TrackAssociator RecoEgamma/EgammaElectronAlgos RecoEgamma/ElectronIdentification TrackingTools/TransientTrack SimDataFormats/Track SimDataFormats/Vertex SimTracker/TrackAssociation SimTracker/Records SimTracker/TrackerHitAssociation JetMETCorrections/Objects CMGTools/External TrackingTools/IPTools heppdt root boost
HiggsAnalysisHiggsTo2photons_EX_LIB   := HiggsAnalysisHiggsTo2photons
HiggsAnalysisHiggsTo2photons_EX_USE   := $(foreach d,$(HiggsAnalysisHiggsTo2photons_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
HiggsAnalysisHiggsTo2photons_PACKAGE := self/src/HiggsAnalysis/HiggsTo2photons/src
ALL_PRODS += HiggsAnalysisHiggsTo2photons
HiggsAnalysisHiggsTo2photons_INIT_FUNC        += $$(eval $$(call Library,HiggsAnalysisHiggsTo2photons,src/HiggsAnalysis/HiggsTo2photons/src,src_HiggsAnalysis_HiggsTo2photons_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(PhysicsTools/PatAlgos)),)
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_src
src_PhysicsTools_PatAlgos_src_parent := PhysicsTools/PatAlgos
src_PhysicsTools_PatAlgos_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_src,src/PhysicsTools/PatAlgos/src,LIBRARY))
PhysicsToolsPatAlgos := self/PhysicsTools/PatAlgos
PhysicsTools/PatAlgos := PhysicsToolsPatAlgos
PhysicsToolsPatAlgos_files := $(patsubst src/PhysicsTools/PatAlgos/src/%,%,$(wildcard $(foreach dir,src/PhysicsTools/PatAlgos/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PhysicsToolsPatAlgos_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/BuildFile
PhysicsToolsPatAlgos_LOC_USE := self cmssw DataFormats/Candidate DataFormats/Common DataFormats/EgammaCandidates DataFormats/EgammaReco DataFormats/JetReco DataFormats/Math DataFormats/METReco DataFormats/MuonReco DataFormats/PatCandidates DataFormats/TauReco DataFormats/TrackReco DataFormats/VertexReco FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities PhysicsTools/PatUtils PhysicsTools/Utilities PhysicsTools/IsolationAlgos Geometry/CaloTopology RecoEgamma/EgammaTools clhep
PhysicsToolsPatAlgos_EX_LIB   := PhysicsToolsPatAlgos
PhysicsToolsPatAlgos_EX_USE   := $(foreach d,$(PhysicsToolsPatAlgos_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsPatAlgos_PACKAGE := self/src/PhysicsTools/PatAlgos/src
ALL_PRODS += PhysicsToolsPatAlgos
PhysicsToolsPatAlgos_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/src,src_PhysicsTools_PatAlgos_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(PhysicsTools/PatExamples)),)
ALL_COMMONRULES += src_PhysicsTools_PatExamples_src
src_PhysicsTools_PatExamples_src_parent := PhysicsTools/PatExamples
src_PhysicsTools_PatExamples_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_PhysicsTools_PatExamples_src,src/PhysicsTools/PatExamples/src,LIBRARY))
PhysicsToolsPatExamples := self/PhysicsTools/PatExamples
PhysicsTools/PatExamples := PhysicsToolsPatExamples
PhysicsToolsPatExamples_files := $(patsubst src/PhysicsTools/PatExamples/src/%,%,$(wildcard $(foreach dir,src/PhysicsTools/PatExamples/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PhysicsToolsPatExamples_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatExamples/BuildFile
PhysicsToolsPatExamples_LOC_USE := self cmssw DataFormats/Math DataFormats/Common DataFormats/JetReco DataFormats/MuonReco DataFormats/PatCandidates FWCore/Utilities FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry PhysicsTools/PatUtils PhysicsTools/UtilAlgos PhysicsTools/Utilities clhep
PhysicsToolsPatExamples_EX_LIB   := PhysicsToolsPatExamples
PhysicsToolsPatExamples_EX_USE   := $(foreach d,$(PhysicsToolsPatExamples_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsPatExamples_PACKAGE := self/src/PhysicsTools/PatExamples/src
ALL_PRODS += PhysicsToolsPatExamples
PhysicsToolsPatExamples_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatExamples,src/PhysicsTools/PatExamples/src,src_PhysicsTools_PatExamples_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(PhysicsTools/PatUtils)),)
ALL_COMMONRULES += src_PhysicsTools_PatUtils_src
src_PhysicsTools_PatUtils_src_parent := PhysicsTools/PatUtils
src_PhysicsTools_PatUtils_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_PhysicsTools_PatUtils_src,src/PhysicsTools/PatUtils/src,LIBRARY))
PhysicsToolsPatUtils := self/PhysicsTools/PatUtils
PhysicsTools/PatUtils := PhysicsToolsPatUtils
PhysicsToolsPatUtils_files := $(patsubst src/PhysicsTools/PatUtils/src/%,%,$(wildcard $(foreach dir,src/PhysicsTools/PatUtils/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PhysicsToolsPatUtils_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatUtils/BuildFile
PhysicsToolsPatUtils_LOC_USE := self cmssw TrackingTools/Records CommonTools/Utils DataFormats/Math DataFormats/Candidate DataFormats/PatCandidates DataFormats/TrackReco DataFormats/MuonReco DataFormats/GsfTrackReco DataFormats/VertexReco TrackingTools/TransientTrack Utilities/General root
PhysicsToolsPatUtils_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsPatUtilsCapabilities,PhysicsToolsPatUtils,$(SCRAMSTORENAME_LIB),src/PhysicsTools/PatUtils/src))
PhysicsToolsPatUtils_PRE_INIT_FUNC += $$(eval $$(call LCGDict,PhysicsToolsPatUtils,0,src/PhysicsTools/PatUtils/src/classes.h,src/PhysicsTools/PatUtils/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
PhysicsToolsPatUtils_EX_LIB   := PhysicsToolsPatUtils
PhysicsToolsPatUtils_EX_USE   := $(foreach d,$(PhysicsToolsPatUtils_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsPatUtils_PACKAGE := self/src/PhysicsTools/PatUtils/src
ALL_PRODS += PhysicsToolsPatUtils
PhysicsToolsPatUtils_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatUtils,src/PhysicsTools/PatUtils/src,src_PhysicsTools_PatUtils_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(PhysicsTools/TagAndProbe)),)
ALL_COMMONRULES += src_PhysicsTools_TagAndProbe_src
src_PhysicsTools_TagAndProbe_src_parent := PhysicsTools/TagAndProbe
src_PhysicsTools_TagAndProbe_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_PhysicsTools_TagAndProbe_src,src/PhysicsTools/TagAndProbe/src,LIBRARY))
PhysicsToolsTagAndProbe := self/PhysicsTools/TagAndProbe
PhysicsTools/TagAndProbe := PhysicsToolsTagAndProbe
PhysicsToolsTagAndProbe_files := $(patsubst src/PhysicsTools/TagAndProbe/src/%,%,$(wildcard $(foreach dir,src/PhysicsTools/TagAndProbe/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PhysicsToolsTagAndProbe_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/TagAndProbe/BuildFile
PhysicsToolsTagAndProbe_LOC_USE := self cmssw roofit FWCore/MessageLogger FWCore/PluginManager FWCore/ParameterSet DataFormats/TrackReco DataFormats/EgammaReco DataFormats/METReco DataFormats/Math DataFormats/RecoCandidate DataFormats/Candidate DataFormats/Common CommonTools/Utils CommonTools/UtilAlgos PhysicsTools/UtilAlgos
PhysicsToolsTagAndProbe_PRE_INIT_FUNC += $$(eval $$(call RootDict,PhysicsToolsTagAndProbe,src/PhysicsTools/TagAndProbe/src, PhysicsToolsTagAndProbeLinkDef.h))
PhysicsToolsTagAndProbe_EX_LIB   := PhysicsToolsTagAndProbe
PhysicsToolsTagAndProbe_EX_USE   := $(foreach d,$(PhysicsToolsTagAndProbe_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsTagAndProbe_PACKAGE := self/src/PhysicsTools/TagAndProbe/src
ALL_PRODS += PhysicsToolsTagAndProbe
PhysicsToolsTagAndProbe_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsTagAndProbe,src/PhysicsTools/TagAndProbe/src,src_PhysicsTools_TagAndProbe_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(RecoEcal/EgammaCoreTools)),)
ALL_COMMONRULES += src_RecoEcal_EgammaCoreTools_src
src_RecoEcal_EgammaCoreTools_src_parent := RecoEcal/EgammaCoreTools
src_RecoEcal_EgammaCoreTools_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoEcal_EgammaCoreTools_src,src/RecoEcal/EgammaCoreTools/src,LIBRARY))
RecoEcalEgammaCoreTools := self/RecoEcal/EgammaCoreTools
RecoEcal/EgammaCoreTools := RecoEcalEgammaCoreTools
RecoEcalEgammaCoreTools_files := $(patsubst src/RecoEcal/EgammaCoreTools/src/%,%,$(wildcard $(foreach dir,src/RecoEcal/EgammaCoreTools/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoEcalEgammaCoreTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEcal/EgammaCoreTools/BuildFile
RecoEcalEgammaCoreTools_LOC_USE := self cmssw DataFormats/EcalRecHit DataFormats/EgammaReco DataFormats/Math FWCore/Framework FWCore/Utilities FWCore/MessageLogger Geometry/CaloGeometry Geometry/CaloTopology Geometry/EcalAlgo RecoLocalCalo/EcalRecAlgos Geometry/Records CalibCalorimetry/EcalLaserCorrection clhep
RecoEcalEgammaCoreTools_EX_LIB   := RecoEcalEgammaCoreTools
RecoEcalEgammaCoreTools_EX_USE   := $(foreach d,$(RecoEcalEgammaCoreTools_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoEcalEgammaCoreTools_PACKAGE := self/src/RecoEcal/EgammaCoreTools/src
ALL_PRODS += RecoEcalEgammaCoreTools
RecoEcalEgammaCoreTools_INIT_FUNC        += $$(eval $$(call Library,RecoEcalEgammaCoreTools,src/RecoEcal/EgammaCoreTools/src,src_RecoEcal_EgammaCoreTools_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(RecoEgamma/PhotonIdentification)),)
ALL_COMMONRULES += src_RecoEgamma_PhotonIdentification_src
src_RecoEgamma_PhotonIdentification_src_parent := RecoEgamma/PhotonIdentification
src_RecoEgamma_PhotonIdentification_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoEgamma_PhotonIdentification_src,src/RecoEgamma/PhotonIdentification/src,LIBRARY))
RecoEgammaPhotonIdentification := self/RecoEgamma/PhotonIdentification
RecoEgamma/PhotonIdentification := RecoEgammaPhotonIdentification
RecoEgammaPhotonIdentification_files := $(patsubst src/RecoEgamma/PhotonIdentification/src/%,%,$(wildcard $(foreach dir,src/RecoEgamma/PhotonIdentification/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoEgammaPhotonIdentification_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEgamma/PhotonIdentification/BuildFile
RecoEgammaPhotonIdentification_LOC_USE := self cmssw FWCore/Framework FWCore/PluginManager DataFormats/HcalRecHit DataFormats/EgammaReco DataFormats/ParticleFlowCandidate RecoEcal/EgammaCoreTools DataFormats/BeamSpot Geometry/CaloGeometry RecoEgamma/EgammaIsolationAlgos
RecoEgammaPhotonIdentification_EX_LIB   := RecoEgammaPhotonIdentification
RecoEgammaPhotonIdentification_EX_USE   := $(foreach d,$(RecoEgammaPhotonIdentification_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoEgammaPhotonIdentification_PACKAGE := self/src/RecoEgamma/PhotonIdentification/src
ALL_PRODS += RecoEgammaPhotonIdentification
RecoEgammaPhotonIdentification_INIT_FUNC        += $$(eval $$(call Library,RecoEgammaPhotonIdentification,src/RecoEgamma/PhotonIdentification/src,src_RecoEgamma_PhotonIdentification_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(RecoHI/HiEgammaAlgos)),)
ALL_COMMONRULES += src_RecoHI_HiEgammaAlgos_src
src_RecoHI_HiEgammaAlgos_src_parent := RecoHI/HiEgammaAlgos
src_RecoHI_HiEgammaAlgos_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoHI_HiEgammaAlgos_src,src/RecoHI/HiEgammaAlgos/src,LIBRARY))
RecoHIHiEgammaAlgos := self/RecoHI/HiEgammaAlgos
RecoHI/HiEgammaAlgos := RecoHIHiEgammaAlgos
RecoHIHiEgammaAlgos_files := $(patsubst src/RecoHI/HiEgammaAlgos/src/%,%,$(wildcard $(foreach dir,src/RecoHI/HiEgammaAlgos/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoHIHiEgammaAlgos_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoHI/HiEgammaAlgos/BuildFile
RecoHIHiEgammaAlgos_LOC_USE := self cmssw FWCore/Framework FWCore/ParameterSet DataFormats/EgammaReco DataFormats/Candidate DataFormats/HepMCCandidate Geometry/CaloGeometry RecoEcal/EgammaClusterAlgos DataFormats/EgammaCandidates clhep root
RecoHIHiEgammaAlgos_EX_LIB   := RecoHIHiEgammaAlgos
RecoHIHiEgammaAlgos_EX_USE   := $(foreach d,$(RecoHIHiEgammaAlgos_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoHIHiEgammaAlgos_PACKAGE := self/src/RecoHI/HiEgammaAlgos/src
ALL_PRODS += RecoHIHiEgammaAlgos
RecoHIHiEgammaAlgos_INIT_FUNC        += $$(eval $$(call Library,RecoHIHiEgammaAlgos,src/RecoHI/HiEgammaAlgos/src,src_RecoHI_HiEgammaAlgos_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
