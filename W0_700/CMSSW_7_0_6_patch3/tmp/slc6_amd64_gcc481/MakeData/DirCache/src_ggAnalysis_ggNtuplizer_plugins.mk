ifeq ($(strip $(ggAnalysisggNtuplizerAuto)),)
ggAnalysisggNtuplizerAuto_files := $(patsubst src/ggAnalysis/ggNtuplizer/plugins/%,%,$(wildcard $(foreach dir,src/ggAnalysis/ggNtuplizer/plugins ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
ggAnalysisggNtuplizerAuto := self/src/ggAnalysis/ggNtuplizer/plugins
ggAnalysisggNtuplizerAuto_BuildFile    := $(WORKINGDIR)/cache/bf/src/ggAnalysis/ggNtuplizer/plugins/BuildFile
ggAnalysisggNtuplizerAuto_LOC_USE := self cmssw CommonTools/Utils CommonTools/UtilAlgos FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DataFormats/HepMCCandidate DataFormats/Candidate DataFormats/PatCandidates HiggsAnalysis/HiggsTo2photons RecoEcal/EgammaCoreTools RecoEgamma/PhotonIdentification
ggAnalysisggNtuplizerAuto_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,ggAnalysisggNtuplizerAuto,ggAnalysisggNtuplizerAuto,$(SCRAMSTORENAME_LIB),src/ggAnalysis/ggNtuplizer/plugins))
ggAnalysisggNtuplizerAuto_PACKAGE := self/src/ggAnalysis/ggNtuplizer/plugins
ALL_PRODS += ggAnalysisggNtuplizerAuto
ggAnalysisggNtuplizerAuto_INIT_FUNC        += $$(eval $$(call Library,ggAnalysisggNtuplizerAuto,src/ggAnalysis/ggNtuplizer/plugins,src_ggAnalysis_ggNtuplizer_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,ggAnalysisggNtuplizerAuto,src/ggAnalysis/ggNtuplizer/plugins))
endif
ALL_COMMONRULES += src_ggAnalysis_ggNtuplizer_plugins
src_ggAnalysis_ggNtuplizer_plugins_parent := ggAnalysis/ggNtuplizer
src_ggAnalysis_ggNtuplizer_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_ggAnalysis_ggNtuplizer_plugins,src/ggAnalysis/ggNtuplizer/plugins,PLUGINS))
