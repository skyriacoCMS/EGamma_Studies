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
