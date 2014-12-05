ifeq ($(strip $(RecoEgammaPhotonIdentificationPlugins)),)
RecoEgammaPhotonIdentificationPlugins_files := $(patsubst src/RecoEgamma/PhotonIdentification/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoEgamma/PhotonIdentification/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEgamma/PhotonIdentification/plugins/$(file). Please fix src/RecoEgamma/PhotonIdentification/plugins/BuildFile.))))
RecoEgammaPhotonIdentificationPlugins := self/src/RecoEgamma/PhotonIdentification/plugins
RecoEgammaPhotonIdentificationPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEgamma/PhotonIdentification/plugins/BuildFile
RecoEgammaPhotonIdentificationPlugins_LOC_USE := self cmssw FWCore/Framework FWCore/PluginManager DataFormats/EgammaReco DataFormats/EgammaCandidates CondFormats/PhysicsToolsObjects Geometry/CaloGeometry RecoCaloTools/MetaCollections RecoEgamma/PhotonIdentification
RecoEgammaPhotonIdentificationPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoEgammaPhotonIdentificationPlugins,RecoEgammaPhotonIdentificationPlugins,$(SCRAMSTORENAME_LIB),src/RecoEgamma/PhotonIdentification/plugins))
RecoEgammaPhotonIdentificationPlugins_PACKAGE := self/src/RecoEgamma/PhotonIdentification/plugins
ALL_PRODS += RecoEgammaPhotonIdentificationPlugins
RecoEgammaPhotonIdentificationPlugins_INIT_FUNC        += $$(eval $$(call Library,RecoEgammaPhotonIdentificationPlugins,src/RecoEgamma/PhotonIdentification/plugins,src_RecoEgamma_PhotonIdentification_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,RecoEgammaPhotonIdentificationPlugins,src/RecoEgamma/PhotonIdentification/plugins))
endif
ALL_COMMONRULES += src_RecoEgamma_PhotonIdentification_plugins
src_RecoEgamma_PhotonIdentification_plugins_parent := RecoEgamma/PhotonIdentification
src_RecoEgamma_PhotonIdentification_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoEgamma_PhotonIdentification_plugins,src/RecoEgamma/PhotonIdentification/plugins,PLUGINS))
