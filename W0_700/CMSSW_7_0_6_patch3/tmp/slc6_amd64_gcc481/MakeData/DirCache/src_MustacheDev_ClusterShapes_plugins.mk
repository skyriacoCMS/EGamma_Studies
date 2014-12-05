ifeq ($(strip $(MustacheDevClusterShapesAuto)),)
MustacheDevClusterShapesAuto_files := $(patsubst src/MustacheDev/ClusterShapes/plugins/%,%,$(wildcard $(foreach dir,src/MustacheDev/ClusterShapes/plugins ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
MustacheDevClusterShapesAuto := self/src/MustacheDev/ClusterShapes/plugins
MustacheDevClusterShapesAuto_BuildFile    := $(WORKINGDIR)/cache/bf/src/MustacheDev/ClusterShapes/plugins/BuildFile
MustacheDevClusterShapesAuto_LOC_USE := self cmssw DataFormats/Common DataFormats/EgammaReco DataFormats/ParticleFlowCandidate DataFormats/ParticleFlowReco RecoParticleFlow/PFProducer CommonTools/UtilAlgos Geometry/CaloGeometry Geometry/CaloTopology FWCore/Framework FWCore/PluginManager FWCore/ParameterSet
MustacheDevClusterShapesAuto_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,MustacheDevClusterShapesAuto,MustacheDevClusterShapesAuto,$(SCRAMSTORENAME_LIB),src/MustacheDev/ClusterShapes/plugins))
MustacheDevClusterShapesAuto_PACKAGE := self/src/MustacheDev/ClusterShapes/plugins
ALL_PRODS += MustacheDevClusterShapesAuto
MustacheDevClusterShapesAuto_INIT_FUNC        += $$(eval $$(call Library,MustacheDevClusterShapesAuto,src/MustacheDev/ClusterShapes/plugins,src_MustacheDev_ClusterShapes_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,MustacheDevClusterShapesAuto,src/MustacheDev/ClusterShapes/plugins))
endif
ALL_COMMONRULES += src_MustacheDev_ClusterShapes_plugins
src_MustacheDev_ClusterShapes_plugins_parent := MustacheDev/ClusterShapes
src_MustacheDev_ClusterShapes_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_MustacheDev_ClusterShapes_plugins,src/MustacheDev/ClusterShapes/plugins,PLUGINS))
