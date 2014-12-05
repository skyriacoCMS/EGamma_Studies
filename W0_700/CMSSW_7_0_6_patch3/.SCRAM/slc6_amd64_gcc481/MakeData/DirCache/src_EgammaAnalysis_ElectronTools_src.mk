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
