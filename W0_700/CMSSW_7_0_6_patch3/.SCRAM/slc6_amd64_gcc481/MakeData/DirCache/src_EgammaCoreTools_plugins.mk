ifeq ($(strip $(EgammaCoreTools/plugins)),)
src_EgammaCoreTools_plugins := self/EgammaCoreTools/plugins
EgammaCoreTools/plugins  := src_EgammaCoreTools_plugins
src_EgammaCoreTools_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/EgammaCoreTools/plugins/BuildFile
src_EgammaCoreTools_plugins_LOC_USE := CondFormats/EcalObjects RecoEcal/EgammaCoreTools self CondFormats/DataRecord cmssw
src_EgammaCoreTools_plugins_EX_USE   := $(foreach d,$(src_EgammaCoreTools_plugins_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_EgammaCoreTools_plugins
src_EgammaCoreTools_plugins_INIT_FUNC += $$(eval $$(call EmptyPackage,src_EgammaCoreTools_plugins,src/EgammaCoreTools/plugins))
endif

