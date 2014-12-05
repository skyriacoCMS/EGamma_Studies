ifeq ($(strip $(PhysicsToolsTagAndProbe_plugins)),)
PhysicsToolsTagAndProbe_plugins_files := $(patsubst src/PhysicsTools/TagAndProbe/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/PhysicsTools/TagAndProbe/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/TagAndProbe/plugins/$(file). Please fix src/PhysicsTools/TagAndProbe/plugins/BuildFile.))))
PhysicsToolsTagAndProbe_plugins := self/src/PhysicsTools/TagAndProbe/plugins
PhysicsToolsTagAndProbe_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/TagAndProbe/plugins/BuildFile
PhysicsToolsTagAndProbe_plugins_LOC_USE := self cmssw roofit PhysicsTools/RooStatsCms FWCore/Framework FWCore/MessageLogger FWCore/PluginManager FWCore/ParameterSet FWCore/ServiceRegistry DataFormats/TrackReco DataFormats/EgammaReco DataFormats/Math DataFormats/MuonReco DataFormats/EgammaCandidates RecoEcal/EgammaCoreTools RecoEgamma/EgammaTools DataFormats/RecoCandidate DataFormats/Candidate DataFormats/Common PhysicsTools/TagAndProbe DataFormats/BTauReco DataFormats/PatCandidates DataFormats/HLTReco HLTrigger/HLTcore L1Trigger/GlobalTriggerAnalyzer DataFormats/HcalIsolatedTrack PhysicsTools/HepMCCandAlgos PhysicsTools/PatUtils PhysicsTools/PatAlgos
PhysicsToolsTagAndProbe_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsTagAndProbe_plugins,PhysicsToolsTagAndProbe_plugins,$(SCRAMSTORENAME_LIB),src/PhysicsTools/TagAndProbe/plugins))
PhysicsToolsTagAndProbe_plugins_PACKAGE := self/src/PhysicsTools/TagAndProbe/plugins
ALL_PRODS += PhysicsToolsTagAndProbe_plugins
PhysicsToolsTagAndProbe_plugins_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsTagAndProbe_plugins,src/PhysicsTools/TagAndProbe/plugins,src_PhysicsTools_TagAndProbe_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,PhysicsToolsTagAndProbe_plugins,src/PhysicsTools/TagAndProbe/plugins))
endif
ALL_COMMONRULES += src_PhysicsTools_TagAndProbe_plugins
src_PhysicsTools_TagAndProbe_plugins_parent := PhysicsTools/TagAndProbe
src_PhysicsTools_TagAndProbe_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_TagAndProbe_plugins,src/PhysicsTools/TagAndProbe/plugins,PLUGINS))
