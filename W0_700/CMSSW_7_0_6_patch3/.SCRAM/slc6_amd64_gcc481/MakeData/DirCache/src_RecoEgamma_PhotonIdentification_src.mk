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
