ifeq ($(strip $(EgammaCoreTools/test)),)
src_EgammaCoreTools_test := self/EgammaCoreTools/test
EgammaCoreTools/test  := src_EgammaCoreTools_test
src_EgammaCoreTools_test_BuildFile    := $(WORKINGDIR)/cache/bf/src/EgammaCoreTools/test/BuildFile
src_EgammaCoreTools_test_LOC_USE := CondFormats/EcalObjects SimDataFormats/GeneratorProducts clhep RecoEcal/EgammaCoreTools hepmc self cmssw Geometry/CaloGeometry DataFormats/EcalRecHit Geometry/CaloTopology CondFormats/DataRecord
src_EgammaCoreTools_test_EX_USE   := $(foreach d,$(src_EgammaCoreTools_test_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_EgammaCoreTools_test
src_EgammaCoreTools_test_INIT_FUNC += $$(eval $$(call EmptyPackage,src_EgammaCoreTools_test,src/EgammaCoreTools/test))
endif

