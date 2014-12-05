ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/DataFormats)
subdirs_src_DataFormats = src_DataFormats_PatCandidates
ALL_PACKAGES += $(patsubst src/%,%,src/DataFormats/PatCandidates)
subdirs_src_DataFormats_PatCandidates := src_DataFormats_PatCandidates_test src_DataFormats_PatCandidates_src
ifeq ($(strip $(testKinResolutions)),)
testKinResolutions_files := $(patsubst src/DataFormats/PatCandidates/test/%,%,$(foreach file,testKinParametrizations.cc testKinResolutions.cc testRunner.cpp,$(eval xfile:=$(wildcard src/DataFormats/PatCandidates/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DataFormats/PatCandidates/test/$(file). Please fix src/DataFormats/PatCandidates/test/BuildFile.))))
testKinResolutions := self/src/DataFormats/PatCandidates/test
testKinResolutions_TEST_RUNNER_CMD := echo
testKinResolutions_NO_TESTRUN := yes
testKinResolutions_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/PatCandidates/test/BuildFile
testKinResolutions_LOC_USE := self cmssw boost cppunit DataFormats/PatCandidates
testKinResolutions_PACKAGE := self/src/DataFormats/PatCandidates/test
ALL_PRODS += testKinResolutions
testKinResolutions_INIT_FUNC        += $$(eval $$(call Binary,testKinResolutions,src/DataFormats/PatCandidates/test,src_DataFormats_PatCandidates_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,testKinResolutions,src/DataFormats/PatCandidates/test))
endif
ALL_COMMONRULES += src_DataFormats_PatCandidates_test
src_DataFormats_PatCandidates_test_parent := DataFormats/PatCandidates
src_DataFormats_PatCandidates_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DataFormats_PatCandidates_test,src/DataFormats/PatCandidates/test,TEST))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/EgammaAnalysis)
subdirs_src_EgammaAnalysis = src_EgammaAnalysis_ElectronTools
ALL_PACKAGES += $(patsubst src/%,%,src/EgammaAnalysis/ElectronTools)
subdirs_src_EgammaAnalysis_ElectronTools := src_EgammaAnalysis_ElectronTools_test src_EgammaAnalysis_ElectronTools_python src_EgammaAnalysis_ElectronTools_src src_EgammaAnalysis_ElectronTools_plugins
ifeq ($(strip $(EgammaAnalysisElectronToolsPlugins)),)
EgammaAnalysisElectronToolsPlugins_files := $(patsubst src/EgammaAnalysis/ElectronTools/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/EgammaAnalysis/ElectronTools/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/EgammaAnalysis/ElectronTools/plugins/$(file). Please fix src/EgammaAnalysis/ElectronTools/plugins/BuildFile.))))
EgammaAnalysisElectronToolsPlugins := self/src/EgammaAnalysis/ElectronTools/plugins
EgammaAnalysisElectronToolsPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/EgammaAnalysis/ElectronTools/plugins/BuildFile
EgammaAnalysisElectronToolsPlugins_LOC_USE := self cmssw FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DataFormats/PatCandidates DataFormats/Common DataFormats/VertexReco PhysicsTools/UtilAlgos FWCore/ServiceRegistry Geometry/CaloTopology Geometry/Records EgammaAnalysis/ElectronTools RecoEcal/EgammaCoreTools
EgammaAnalysisElectronToolsPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,EgammaAnalysisElectronToolsPlugins,EgammaAnalysisElectronToolsPlugins,$(SCRAMSTORENAME_LIB),src/EgammaAnalysis/ElectronTools/plugins))
EgammaAnalysisElectronToolsPlugins_PACKAGE := self/src/EgammaAnalysis/ElectronTools/plugins
ALL_PRODS += EgammaAnalysisElectronToolsPlugins
EgammaAnalysisElectronToolsPlugins_INIT_FUNC        += $$(eval $$(call Library,EgammaAnalysisElectronToolsPlugins,src/EgammaAnalysis/ElectronTools/plugins,src_EgammaAnalysis_ElectronTools_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,EgammaAnalysisElectronToolsPlugins,src/EgammaAnalysis/ElectronTools/plugins))
endif
ALL_COMMONRULES += src_EgammaAnalysis_ElectronTools_plugins
src_EgammaAnalysis_ElectronTools_plugins_parent := EgammaAnalysis/ElectronTools
src_EgammaAnalysis_ElectronTools_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_EgammaAnalysis_ElectronTools_plugins,src/EgammaAnalysis/ElectronTools/plugins,PLUGINS))
ifeq ($(strip $(PyEgammaAnalysisElectronTools)),)
PyEgammaAnalysisElectronTools := self/src/EgammaAnalysis/ElectronTools/python
src_EgammaAnalysis_ElectronTools_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/EgammaAnalysis/ElectronTools/python)
PyEgammaAnalysisElectronTools_files := $(patsubst src/EgammaAnalysis/ElectronTools/python/%,%,$(wildcard $(foreach dir,src/EgammaAnalysis/ElectronTools/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyEgammaAnalysisElectronTools_LOC_USE := self cmssw 
PyEgammaAnalysisElectronTools_PACKAGE := self/src/EgammaAnalysis/ElectronTools/python
ALL_PRODS += PyEgammaAnalysisElectronTools
PyEgammaAnalysisElectronTools_INIT_FUNC        += $$(eval $$(call PythonProduct,PyEgammaAnalysisElectronTools,src/EgammaAnalysis/ElectronTools/python,src_EgammaAnalysis_ElectronTools_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyEgammaAnalysisElectronTools,src/EgammaAnalysis/ElectronTools/python))
endif
ALL_COMMONRULES += src_EgammaAnalysis_ElectronTools_python
src_EgammaAnalysis_ElectronTools_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_EgammaAnalysis_ElectronTools_python,src/EgammaAnalysis/ElectronTools/python,PYTHON))
ifeq ($(strip $(EgammaEGammaAnalysisToolsTest)),)
EgammaEGammaAnalysisToolsTest_files := $(patsubst src/EgammaAnalysis/ElectronTools/test/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/EgammaAnalysis/ElectronTools/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/EgammaAnalysis/ElectronTools/test/$(file). Please fix src/EgammaAnalysis/ElectronTools/test/BuildFile.))))
EgammaEGammaAnalysisToolsTest := self/src/EgammaAnalysis/ElectronTools/test
EgammaEGammaAnalysisToolsTest_BuildFile    := $(WORKINGDIR)/cache/bf/src/EgammaAnalysis/ElectronTools/test/BuildFile
EgammaEGammaAnalysisToolsTest_LOC_USE := self cmssw DataFormats/Common DataFormats/EgammaReco DataFormats/GsfTrackReco DataFormats/ParticleFlowCandidate DataFormats/ParticleFlowReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet RecoParticleFlow/PFProducer EgammaAnalysis/ElectronTools clhep root roottmva
EgammaEGammaAnalysisToolsTest_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,EgammaEGammaAnalysisToolsTest,EgammaEGammaAnalysisToolsTest,$(SCRAMSTORENAME_LIB),src/EgammaAnalysis/ElectronTools/test))
EgammaEGammaAnalysisToolsTest_PACKAGE := self/src/EgammaAnalysis/ElectronTools/test
ALL_PRODS += EgammaEGammaAnalysisToolsTest
EgammaEGammaAnalysisToolsTest_INIT_FUNC        += $$(eval $$(call Library,EgammaEGammaAnalysisToolsTest,src/EgammaAnalysis/ElectronTools/test,src_EgammaAnalysis_ElectronTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,EgammaEGammaAnalysisToolsTest,src/EgammaAnalysis/ElectronTools/test))
endif
ALL_COMMONRULES += src_EgammaAnalysis_ElectronTools_test
src_EgammaAnalysis_ElectronTools_test_parent := EgammaAnalysis/ElectronTools
src_EgammaAnalysis_ElectronTools_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_EgammaAnalysis_ElectronTools_test,src/EgammaAnalysis/ElectronTools/test,TEST))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/EgammaCoreTools)
subdirs_src_EgammaCoreTools = src_EgammaCoreTools_python src_EgammaCoreTools_doc src_EgammaCoreTools_src src_EgammaCoreTools_plugins src_EgammaCoreTools_interface src_EgammaCoreTools_test
ALL_PACKAGES += $(patsubst src/%,%,src/EgammaCoreTools/doc)
subdirs_src_EgammaCoreTools_doc := 
ALL_PACKAGES += $(patsubst src/%,%,src/EgammaCoreTools/interface)
subdirs_src_EgammaCoreTools_interface := 
ALL_PACKAGES += $(patsubst src/%,%,src/EgammaCoreTools/plugins)
subdirs_src_EgammaCoreTools_plugins := 
ALL_PACKAGES += $(patsubst src/%,%,src/EgammaCoreTools/python)
subdirs_src_EgammaCoreTools_python := 
ALL_PACKAGES += $(patsubst src/%,%,src/EgammaCoreTools/src)
subdirs_src_EgammaCoreTools_src := 
ALL_PACKAGES += $(patsubst src/%,%,src/EgammaCoreTools/test)
subdirs_src_EgammaCoreTools_test := 
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/HiggsAnalysis)
subdirs_src_HiggsAnalysis = src_HiggsAnalysis_HiggsTo2photons
ALL_PACKAGES += $(patsubst src/%,%,src/HiggsAnalysis/HiggsTo2photons)
subdirs_src_HiggsAnalysis_HiggsTo2photons := src_HiggsAnalysis_HiggsTo2photons_python src_HiggsAnalysis_HiggsTo2photons_src
ifeq ($(strip $(PyHiggsAnalysisHiggsTo2photons)),)
PyHiggsAnalysisHiggsTo2photons := self/src/HiggsAnalysis/HiggsTo2photons/python
src_HiggsAnalysis_HiggsTo2photons_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/HiggsAnalysis/HiggsTo2photons/python)
PyHiggsAnalysisHiggsTo2photons_files := $(patsubst src/HiggsAnalysis/HiggsTo2photons/python/%,%,$(wildcard $(foreach dir,src/HiggsAnalysis/HiggsTo2photons/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyHiggsAnalysisHiggsTo2photons_LOC_USE := self cmssw 
PyHiggsAnalysisHiggsTo2photons_PACKAGE := self/src/HiggsAnalysis/HiggsTo2photons/python
ALL_PRODS += PyHiggsAnalysisHiggsTo2photons
PyHiggsAnalysisHiggsTo2photons_INIT_FUNC        += $$(eval $$(call PythonProduct,PyHiggsAnalysisHiggsTo2photons,src/HiggsAnalysis/HiggsTo2photons/python,src_HiggsAnalysis_HiggsTo2photons_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyHiggsAnalysisHiggsTo2photons,src/HiggsAnalysis/HiggsTo2photons/python))
endif
ALL_COMMONRULES += src_HiggsAnalysis_HiggsTo2photons_python
src_HiggsAnalysis_HiggsTo2photons_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_HiggsAnalysis_HiggsTo2photons_python,src/HiggsAnalysis/HiggsTo2photons/python,PYTHON))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/MustacheDev)
subdirs_src_MustacheDev = src_MustacheDev_ClusterShapes
ALL_PACKAGES += $(patsubst src/%,%,src/MustacheDev/ClusterShapes)
subdirs_src_MustacheDev_ClusterShapes := src_MustacheDev_ClusterShapes_plugins src_MustacheDev_ClusterShapes_python src_MustacheDev_ClusterShapes_test src_MustacheDev_ClusterShapes_doc
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
ifeq ($(strip $(PyMustacheDevClusterShapes)),)
PyMustacheDevClusterShapes := self/src/MustacheDev/ClusterShapes/python
src_MustacheDev_ClusterShapes_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/MustacheDev/ClusterShapes/python)
PyMustacheDevClusterShapes_files := $(patsubst src/MustacheDev/ClusterShapes/python/%,%,$(wildcard $(foreach dir,src/MustacheDev/ClusterShapes/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyMustacheDevClusterShapes_LOC_USE := self cmssw 
PyMustacheDevClusterShapes_PACKAGE := self/src/MustacheDev/ClusterShapes/python
ALL_PRODS += PyMustacheDevClusterShapes
PyMustacheDevClusterShapes_INIT_FUNC        += $$(eval $$(call PythonProduct,PyMustacheDevClusterShapes,src/MustacheDev/ClusterShapes/python,src_MustacheDev_ClusterShapes_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyMustacheDevClusterShapes,src/MustacheDev/ClusterShapes/python))
endif
ALL_COMMONRULES += src_MustacheDev_ClusterShapes_python
src_MustacheDev_ClusterShapes_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_MustacheDev_ClusterShapes_python,src/MustacheDev/ClusterShapes/python,PYTHON))
ALL_COMMONRULES += src_MustacheDev_ClusterShapes_test
src_MustacheDev_ClusterShapes_test_parent := MustacheDev/ClusterShapes
src_MustacheDev_ClusterShapes_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_MustacheDev_ClusterShapes_test,src/MustacheDev/ClusterShapes/test,TEST))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/PhysicsTools)
subdirs_src_PhysicsTools = src_PhysicsTools_TagAndProbe src_PhysicsTools_PatUtils src_PhysicsTools_PatAlgos src_PhysicsTools_PatExamples
ALL_PACKAGES += $(patsubst src/%,%,src/PhysicsTools/PatAlgos)
subdirs_src_PhysicsTools_PatAlgos := src_PhysicsTools_PatAlgos_test src_PhysicsTools_PatAlgos_scripts src_PhysicsTools_PatAlgos_python src_PhysicsTools_PatAlgos_src src_PhysicsTools_PatAlgos_plugins
ifeq ($(strip $(PhysicsToolsPatAlgos_plugins)),)
PhysicsToolsPatAlgos_plugins_files := $(patsubst src/PhysicsTools/PatAlgos/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatAlgos/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatAlgos/plugins/$(file). Please fix src/PhysicsTools/PatAlgos/plugins/BuildFile.))))
PhysicsToolsPatAlgos_plugins := self/src/PhysicsTools/PatAlgos/plugins
PhysicsToolsPatAlgos_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/plugins/BuildFile
PhysicsToolsPatAlgos_plugins_LOC_USE := self cmssw PhysicsTools/PatAlgos FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/MessageService L1Trigger/GlobalTriggerAnalyzer HLTrigger/HLTcore DataFormats/PatCandidates DataFormats/BTauReco DataFormats/JetReco DataFormats/TrackReco DataFormats/Candidate DataFormats/HeavyIonEvent PhysicsTools/PatUtils CondFormats/JetMETObjects JetMETCorrections/Objects TrackingTools/TransientTrack SimDataFormats/Track SimDataFormats/Vertex SimGeneral/HepPDTRecord RecoMET/METAlgorithms RecoEgamma/EgammaTools TrackingTools/IPTools root
PhysicsToolsPatAlgos_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsPatAlgos_plugins,PhysicsToolsPatAlgos_plugins,$(SCRAMSTORENAME_LIB),src/PhysicsTools/PatAlgos/plugins))
PhysicsToolsPatAlgos_plugins_PACKAGE := self/src/PhysicsTools/PatAlgos/plugins
ALL_PRODS += PhysicsToolsPatAlgos_plugins
PhysicsToolsPatAlgos_plugins_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatAlgos_plugins,src/PhysicsTools/PatAlgos/plugins,src_PhysicsTools_PatAlgos_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,PhysicsToolsPatAlgos_plugins,src/PhysicsTools/PatAlgos/plugins))
endif
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_plugins
src_PhysicsTools_PatAlgos_plugins_parent := PhysicsTools/PatAlgos
src_PhysicsTools_PatAlgos_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_plugins,src/PhysicsTools/PatAlgos/plugins,PLUGINS))
ifeq ($(strip $(PyPhysicsToolsPatAlgos)),)
PyPhysicsToolsPatAlgos := self/src/PhysicsTools/PatAlgos/python
src_PhysicsTools_PatAlgos_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/PhysicsTools/PatAlgos/python)
PyPhysicsToolsPatAlgos_files := $(patsubst src/PhysicsTools/PatAlgos/python/%,%,$(wildcard $(foreach dir,src/PhysicsTools/PatAlgos/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyPhysicsToolsPatAlgos_LOC_USE := self cmssw 
PyPhysicsToolsPatAlgos_PACKAGE := self/src/PhysicsTools/PatAlgos/python
ALL_PRODS += PyPhysicsToolsPatAlgos
PyPhysicsToolsPatAlgos_INIT_FUNC        += $$(eval $$(call PythonProduct,PyPhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/python,src_PhysicsTools_PatAlgos_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyPhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/python))
endif
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_python
src_PhysicsTools_PatAlgos_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_python,src/PhysicsTools/PatAlgos/python,PYTHON))
src_PhysicsTools_PatAlgos_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/PhysicsTools/PatAlgos/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_PhysicsTools_PatAlgos_scripts,src/PhysicsTools/PatAlgos/scripts,$(SCRAMSTORENAME_BIN),*))
ifeq ($(strip $(runtestPhysicsToolsPatAlgos)),)
runtestPhysicsToolsPatAlgos_files := $(patsubst src/PhysicsTools/PatAlgos/test/%,%,$(foreach file,runtestPhysicsToolsPatAlgos.cpp,$(eval xfile:=$(wildcard src/PhysicsTools/PatAlgos/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatAlgos/test/$(file). Please fix src/PhysicsTools/PatAlgos/test/BuildFile.))))
runtestPhysicsToolsPatAlgos := self/src/PhysicsTools/PatAlgos/test
runtestPhysicsToolsPatAlgos_TEST_RUNNER_CMD :=  runtestPhysicsToolsPatAlgos  /bin/bash PhysicsTools/PatAlgos/test runtests.sh
runtestPhysicsToolsPatAlgos_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/test/BuildFile
runtestPhysicsToolsPatAlgos_LOC_USE := self cmssw FWCore/Utilities
runtestPhysicsToolsPatAlgos_PACKAGE := self/src/PhysicsTools/PatAlgos/test
ALL_PRODS += runtestPhysicsToolsPatAlgos
runtestPhysicsToolsPatAlgos_INIT_FUNC        += $$(eval $$(call Binary,runtestPhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/test,src_PhysicsTools_PatAlgos_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,runtestPhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/test))
endif
ifeq ($(strip $(PhysicsToolsPatAlgos_testAnalyzers)),)
PhysicsToolsPatAlgos_testAnalyzers_files := $(patsubst src/PhysicsTools/PatAlgos/test/%,%,$(foreach file,private/*.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatAlgos/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatAlgos/test/$(file). Please fix src/PhysicsTools/PatAlgos/test/BuildFile.))))
PhysicsToolsPatAlgos_testAnalyzers := self/src/PhysicsTools/PatAlgos/test
PhysicsToolsPatAlgos_testAnalyzers_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/test/BuildFile
PhysicsToolsPatAlgos_testAnalyzers_LOC_USE := self cmssw FWCore/Framework FWCore/ParameterSet DataFormats/BTauReco PhysicsTools/PatUtils DataFormats/PatCandidates root
PhysicsToolsPatAlgos_testAnalyzers_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsPatAlgos_testAnalyzers,PhysicsToolsPatAlgos_testAnalyzers,$(SCRAMSTORENAME_LIB),src/PhysicsTools/PatAlgos/test))
PhysicsToolsPatAlgos_testAnalyzers_PACKAGE := self/src/PhysicsTools/PatAlgos/test
ALL_PRODS += PhysicsToolsPatAlgos_testAnalyzers
PhysicsToolsPatAlgos_testAnalyzers_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatAlgos_testAnalyzers,src/PhysicsTools/PatAlgos/test,src_PhysicsTools_PatAlgos_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,PhysicsToolsPatAlgos_testAnalyzers,src/PhysicsTools/PatAlgos/test))
endif
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_test
src_PhysicsTools_PatAlgos_test_parent := PhysicsTools/PatAlgos
src_PhysicsTools_PatAlgos_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_test,src/PhysicsTools/PatAlgos/test,TEST))
ALL_PACKAGES += $(patsubst src/%,%,src/PhysicsTools/PatExamples)
subdirs_src_PhysicsTools_PatExamples := src_PhysicsTools_PatExamples_bin src_PhysicsTools_PatExamples_test src_PhysicsTools_PatExamples_python src_PhysicsTools_PatExamples_src src_PhysicsTools_PatExamples_plugins
ifeq ($(strip $(PatMuonEDMAnalyzer)),)
PatMuonEDMAnalyzer_files := $(patsubst src/PhysicsTools/PatExamples/bin/%,%,$(foreach file,PatMuonEDMAnalyzer.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatExamples/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatExamples/bin/$(file). Please fix src/PhysicsTools/PatExamples/bin/BuildFile.))))
PatMuonEDMAnalyzer := self/src/PhysicsTools/PatExamples/bin
PatMuonEDMAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatExamples/bin/BuildFile
PatMuonEDMAnalyzer_LOC_USE := self cmssw root boost rootcintex FWCore/FWLite DataFormats/FWLite FWCore/PythonParameterSet DataFormats/PatCandidates CommonTools/Utils PhysicsTools/FWLite PhysicsTools/Utilities PhysicsTools/PatUtils PhysicsTools/PatExamples PhysicsTools/SelectorUtils
PatMuonEDMAnalyzer_PACKAGE := self/src/PhysicsTools/PatExamples/bin
ALL_PRODS += PatMuonEDMAnalyzer
PatMuonEDMAnalyzer_INIT_FUNC        += $$(eval $$(call Binary,PatMuonEDMAnalyzer,src/PhysicsTools/PatExamples/bin,src_PhysicsTools_PatExamples_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,PatMuonEDMAnalyzer,src/PhysicsTools/PatExamples/bin))
endif
ifeq ($(strip $(PatCleaningExercise)),)
PatCleaningExercise_files := $(patsubst src/PhysicsTools/PatExamples/bin/%,%,$(foreach file,PatCleaningExercise.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatExamples/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatExamples/bin/$(file). Please fix src/PhysicsTools/PatExamples/bin/BuildFile.))))
PatCleaningExercise := self/src/PhysicsTools/PatExamples/bin
PatCleaningExercise_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatExamples/bin/BuildFile
PatCleaningExercise_LOC_USE := self cmssw root boost rootcintex FWCore/FWLite DataFormats/FWLite FWCore/PythonParameterSet DataFormats/PatCandidates CommonTools/Utils PhysicsTools/FWLite PhysicsTools/Utilities PhysicsTools/PatUtils PhysicsTools/PatExamples PhysicsTools/SelectorUtils
PatCleaningExercise_PACKAGE := self/src/PhysicsTools/PatExamples/bin
ALL_PRODS += PatCleaningExercise
PatCleaningExercise_INIT_FUNC        += $$(eval $$(call Binary,PatCleaningExercise,src/PhysicsTools/PatExamples/bin,src_PhysicsTools_PatExamples_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,PatCleaningExercise,src/PhysicsTools/PatExamples/bin))
endif
ifeq ($(strip $(PatBasicFWLiteJetAnalyzer)),)
PatBasicFWLiteJetAnalyzer_files := $(patsubst src/PhysicsTools/PatExamples/bin/%,%,$(foreach file,PatBasicFWLiteJetAnalyzer.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatExamples/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatExamples/bin/$(file). Please fix src/PhysicsTools/PatExamples/bin/BuildFile.))))
PatBasicFWLiteJetAnalyzer := self/src/PhysicsTools/PatExamples/bin
PatBasicFWLiteJetAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatExamples/bin/BuildFile
PatBasicFWLiteJetAnalyzer_LOC_USE := self cmssw root boost rootcintex FWCore/FWLite DataFormats/FWLite FWCore/PythonParameterSet DataFormats/PatCandidates CommonTools/Utils PhysicsTools/FWLite PhysicsTools/Utilities PhysicsTools/PatUtils PhysicsTools/PatExamples PhysicsTools/SelectorUtils
PatBasicFWLiteJetAnalyzer_PACKAGE := self/src/PhysicsTools/PatExamples/bin
ALL_PRODS += PatBasicFWLiteJetAnalyzer
PatBasicFWLiteJetAnalyzer_INIT_FUNC        += $$(eval $$(call Binary,PatBasicFWLiteJetAnalyzer,src/PhysicsTools/PatExamples/bin,src_PhysicsTools_PatExamples_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,PatBasicFWLiteJetAnalyzer,src/PhysicsTools/PatExamples/bin))
endif
ifeq ($(strip $(PatBasicFWLiteAnalyzer)),)
PatBasicFWLiteAnalyzer_files := $(patsubst src/PhysicsTools/PatExamples/bin/%,%,$(foreach file,PatBasicFWLiteAnalyzer.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatExamples/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatExamples/bin/$(file). Please fix src/PhysicsTools/PatExamples/bin/BuildFile.))))
PatBasicFWLiteAnalyzer := self/src/PhysicsTools/PatExamples/bin
PatBasicFWLiteAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatExamples/bin/BuildFile
PatBasicFWLiteAnalyzer_LOC_USE := self cmssw root boost rootcintex FWCore/FWLite DataFormats/FWLite FWCore/PythonParameterSet DataFormats/PatCandidates CommonTools/Utils PhysicsTools/FWLite PhysicsTools/Utilities PhysicsTools/PatUtils PhysicsTools/PatExamples PhysicsTools/SelectorUtils
PatBasicFWLiteAnalyzer_PACKAGE := self/src/PhysicsTools/PatExamples/bin
ALL_PRODS += PatBasicFWLiteAnalyzer
PatBasicFWLiteAnalyzer_INIT_FUNC        += $$(eval $$(call Binary,PatBasicFWLiteAnalyzer,src/PhysicsTools/PatExamples/bin,src_PhysicsTools_PatExamples_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,PatBasicFWLiteAnalyzer,src/PhysicsTools/PatExamples/bin))
endif
ifeq ($(strip $(PatAnalysisTasksExercise)),)
PatAnalysisTasksExercise_files := $(patsubst src/PhysicsTools/PatExamples/bin/%,%,$(foreach file,PatAnalysisTasksExercise.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatExamples/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatExamples/bin/$(file). Please fix src/PhysicsTools/PatExamples/bin/BuildFile.))))
PatAnalysisTasksExercise := self/src/PhysicsTools/PatExamples/bin
PatAnalysisTasksExercise_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatExamples/bin/BuildFile
PatAnalysisTasksExercise_LOC_USE := self cmssw root boost rootcintex FWCore/FWLite DataFormats/FWLite FWCore/PythonParameterSet DataFormats/PatCandidates CommonTools/Utils PhysicsTools/FWLite PhysicsTools/Utilities PhysicsTools/PatUtils PhysicsTools/PatExamples PhysicsTools/SelectorUtils
PatAnalysisTasksExercise_PACKAGE := self/src/PhysicsTools/PatExamples/bin
ALL_PRODS += PatAnalysisTasksExercise
PatAnalysisTasksExercise_INIT_FUNC        += $$(eval $$(call Binary,PatAnalysisTasksExercise,src/PhysicsTools/PatExamples/bin,src_PhysicsTools_PatExamples_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,PatAnalysisTasksExercise,src/PhysicsTools/PatExamples/bin))
endif
ifeq ($(strip $(PatBasicFWLiteJetAnalyzer_Selector)),)
PatBasicFWLiteJetAnalyzer_Selector_files := $(patsubst src/PhysicsTools/PatExamples/bin/%,%,$(foreach file,PatBasicFWLiteJetAnalyzer_Selector.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatExamples/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatExamples/bin/$(file). Please fix src/PhysicsTools/PatExamples/bin/BuildFile.))))
PatBasicFWLiteJetAnalyzer_Selector := self/src/PhysicsTools/PatExamples/bin
PatBasicFWLiteJetAnalyzer_Selector_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatExamples/bin/BuildFile
PatBasicFWLiteJetAnalyzer_Selector_LOC_USE := self cmssw root boost rootcintex FWCore/FWLite DataFormats/FWLite FWCore/PythonParameterSet DataFormats/PatCandidates CommonTools/Utils PhysicsTools/FWLite PhysicsTools/Utilities PhysicsTools/PatUtils PhysicsTools/PatExamples PhysicsTools/SelectorUtils
PatBasicFWLiteJetAnalyzer_Selector_PACKAGE := self/src/PhysicsTools/PatExamples/bin
ALL_PRODS += PatBasicFWLiteJetAnalyzer_Selector
PatBasicFWLiteJetAnalyzer_Selector_INIT_FUNC        += $$(eval $$(call Binary,PatBasicFWLiteJetAnalyzer_Selector,src/PhysicsTools/PatExamples/bin,src_PhysicsTools_PatExamples_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,PatBasicFWLiteJetAnalyzer_Selector,src/PhysicsTools/PatExamples/bin))
endif
ifeq ($(strip $(PatBasicFWLiteJetUnitTest)),)
PatBasicFWLiteJetUnitTest_files := $(patsubst src/PhysicsTools/PatExamples/bin/%,%,$(foreach file,PatBasicFWLiteJetUnitTest.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatExamples/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatExamples/bin/$(file). Please fix src/PhysicsTools/PatExamples/bin/BuildFile.))))
PatBasicFWLiteJetUnitTest := self/src/PhysicsTools/PatExamples/bin
PatBasicFWLiteJetUnitTest_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatExamples/bin/BuildFile
PatBasicFWLiteJetUnitTest_LOC_USE := self cmssw root boost rootcintex FWCore/FWLite DataFormats/FWLite FWCore/PythonParameterSet DataFormats/PatCandidates CommonTools/Utils PhysicsTools/FWLite PhysicsTools/Utilities PhysicsTools/PatUtils PhysicsTools/PatExamples PhysicsTools/SelectorUtils
PatBasicFWLiteJetUnitTest_PACKAGE := self/src/PhysicsTools/PatExamples/bin
ALL_PRODS += PatBasicFWLiteJetUnitTest
PatBasicFWLiteJetUnitTest_INIT_FUNC        += $$(eval $$(call Binary,PatBasicFWLiteJetUnitTest,src/PhysicsTools/PatExamples/bin,src_PhysicsTools_PatExamples_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,PatBasicFWLiteJetUnitTest,src/PhysicsTools/PatExamples/bin))
endif
ifeq ($(strip $(PatMuonFWLiteAnalyzer)),)
PatMuonFWLiteAnalyzer_files := $(patsubst src/PhysicsTools/PatExamples/bin/%,%,$(foreach file,PatMuonFWLiteAnalyzer.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatExamples/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatExamples/bin/$(file). Please fix src/PhysicsTools/PatExamples/bin/BuildFile.))))
PatMuonFWLiteAnalyzer := self/src/PhysicsTools/PatExamples/bin
PatMuonFWLiteAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatExamples/bin/BuildFile
PatMuonFWLiteAnalyzer_LOC_USE := self cmssw root boost rootcintex FWCore/FWLite DataFormats/FWLite FWCore/PythonParameterSet DataFormats/PatCandidates CommonTools/Utils PhysicsTools/FWLite PhysicsTools/Utilities PhysicsTools/PatUtils PhysicsTools/PatExamples PhysicsTools/SelectorUtils
PatMuonFWLiteAnalyzer_PACKAGE := self/src/PhysicsTools/PatExamples/bin
ALL_PRODS += PatMuonFWLiteAnalyzer
PatMuonFWLiteAnalyzer_INIT_FUNC        += $$(eval $$(call Binary,PatMuonFWLiteAnalyzer,src/PhysicsTools/PatExamples/bin,src_PhysicsTools_PatExamples_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,PatMuonFWLiteAnalyzer,src/PhysicsTools/PatExamples/bin))
endif
ALL_COMMONRULES += src_PhysicsTools_PatExamples_bin
src_PhysicsTools_PatExamples_bin_parent := PhysicsTools/PatExamples
src_PhysicsTools_PatExamples_bin_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatExamples_bin,src/PhysicsTools/PatExamples/bin,BINARY))
ifeq ($(strip $(PhysicsToolsPatExamples_plugins)),)
PhysicsToolsPatExamples_plugins_files := $(patsubst src/PhysicsTools/PatExamples/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatExamples/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatExamples/plugins/$(file). Please fix src/PhysicsTools/PatExamples/plugins/BuildFile.))))
PhysicsToolsPatExamples_plugins := self/src/PhysicsTools/PatExamples/plugins
PhysicsToolsPatExamples_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatExamples/plugins/BuildFile
PhysicsToolsPatExamples_plugins_LOC_USE := self cmssw FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/MessageService FWCore/ServiceRegistry FWCore/Utilities DataFormats/Common DataFormats/BeamSpot DataFormats/TrackReco DataFormats/VertexReco DataFormats/BTauReco DataFormats/PatCandidates HLTrigger/HLTcore PhysicsTools/PatExamples PhysicsTools/PatAlgos PhysicsTools/PatUtils PhysicsTools/CandUtils PhysicsTools/UtilAlgos root
PhysicsToolsPatExamples_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsPatExamples_plugins,PhysicsToolsPatExamples_plugins,$(SCRAMSTORENAME_LIB),src/PhysicsTools/PatExamples/plugins))
PhysicsToolsPatExamples_plugins_PACKAGE := self/src/PhysicsTools/PatExamples/plugins
ALL_PRODS += PhysicsToolsPatExamples_plugins
PhysicsToolsPatExamples_plugins_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatExamples_plugins,src/PhysicsTools/PatExamples/plugins,src_PhysicsTools_PatExamples_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,PhysicsToolsPatExamples_plugins,src/PhysicsTools/PatExamples/plugins))
endif
ALL_COMMONRULES += src_PhysicsTools_PatExamples_plugins
src_PhysicsTools_PatExamples_plugins_parent := PhysicsTools/PatExamples
src_PhysicsTools_PatExamples_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatExamples_plugins,src/PhysicsTools/PatExamples/plugins,PLUGINS))
ifeq ($(strip $(PyPhysicsToolsPatExamples)),)
PyPhysicsToolsPatExamples := self/src/PhysicsTools/PatExamples/python
src_PhysicsTools_PatExamples_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/PhysicsTools/PatExamples/python)
PyPhysicsToolsPatExamples_files := $(patsubst src/PhysicsTools/PatExamples/python/%,%,$(wildcard $(foreach dir,src/PhysicsTools/PatExamples/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyPhysicsToolsPatExamples_LOC_USE := self cmssw 
PyPhysicsToolsPatExamples_PACKAGE := self/src/PhysicsTools/PatExamples/python
ALL_PRODS += PyPhysicsToolsPatExamples
PyPhysicsToolsPatExamples_INIT_FUNC        += $$(eval $$(call PythonProduct,PyPhysicsToolsPatExamples,src/PhysicsTools/PatExamples/python,src_PhysicsTools_PatExamples_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyPhysicsToolsPatExamples,src/PhysicsTools/PatExamples/python))
endif
ALL_COMMONRULES += src_PhysicsTools_PatExamples_python
src_PhysicsTools_PatExamples_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatExamples_python,src/PhysicsTools/PatExamples/python,PYTHON))
ALL_COMMONRULES += src_PhysicsTools_PatExamples_test
src_PhysicsTools_PatExamples_test_parent := PhysicsTools/PatExamples
src_PhysicsTools_PatExamples_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatExamples_test,src/PhysicsTools/PatExamples/test,TEST))
ALL_PACKAGES += $(patsubst src/%,%,src/PhysicsTools/PatUtils)
subdirs_src_PhysicsTools_PatUtils := src_PhysicsTools_PatUtils_python src_PhysicsTools_PatUtils_src src_PhysicsTools_PatUtils_plugins src_PhysicsTools_PatUtils_data
ifeq ($(strip $(PhysicsToolsPatUtils_plugins)),)
PhysicsToolsPatUtils_plugins_files := $(patsubst src/PhysicsTools/PatUtils/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatUtils/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatUtils/plugins/$(file). Please fix src/PhysicsTools/PatUtils/plugins/BuildFile.))))
PhysicsToolsPatUtils_plugins := self/src/PhysicsTools/PatUtils/plugins
PhysicsToolsPatUtils_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatUtils/plugins/BuildFile
PhysicsToolsPatUtils_plugins_LOC_USE := self cmssw FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities CommonTools/Utils CondFormats/JetMETObjects DataFormats/Candidate DataFormats/JetReco DataFormats/METReco DataFormats/MuonReco DataFormats/ParticleFlowCandidate DataFormats/PatCandidates JetMETCorrections/Objects JetMETCorrections/Type1MET RecoMET/METAlgorithms
PhysicsToolsPatUtils_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsPatUtils_plugins,PhysicsToolsPatUtils_plugins,$(SCRAMSTORENAME_LIB),src/PhysicsTools/PatUtils/plugins))
PhysicsToolsPatUtils_plugins_PACKAGE := self/src/PhysicsTools/PatUtils/plugins
ALL_PRODS += PhysicsToolsPatUtils_plugins
PhysicsToolsPatUtils_plugins_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatUtils_plugins,src/PhysicsTools/PatUtils/plugins,src_PhysicsTools_PatUtils_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,PhysicsToolsPatUtils_plugins,src/PhysicsTools/PatUtils/plugins))
endif
ALL_COMMONRULES += src_PhysicsTools_PatUtils_plugins
src_PhysicsTools_PatUtils_plugins_parent := PhysicsTools/PatUtils
src_PhysicsTools_PatUtils_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatUtils_plugins,src/PhysicsTools/PatUtils/plugins,PLUGINS))
ifeq ($(strip $(PyPhysicsToolsPatUtils)),)
PyPhysicsToolsPatUtils := self/src/PhysicsTools/PatUtils/python
src_PhysicsTools_PatUtils_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/PhysicsTools/PatUtils/python)
PyPhysicsToolsPatUtils_files := $(patsubst src/PhysicsTools/PatUtils/python/%,%,$(wildcard $(foreach dir,src/PhysicsTools/PatUtils/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyPhysicsToolsPatUtils_LOC_USE := self cmssw 
PyPhysicsToolsPatUtils_PACKAGE := self/src/PhysicsTools/PatUtils/python
ALL_PRODS += PyPhysicsToolsPatUtils
PyPhysicsToolsPatUtils_INIT_FUNC        += $$(eval $$(call PythonProduct,PyPhysicsToolsPatUtils,src/PhysicsTools/PatUtils/python,src_PhysicsTools_PatUtils_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyPhysicsToolsPatUtils,src/PhysicsTools/PatUtils/python))
endif
ALL_COMMONRULES += src_PhysicsTools_PatUtils_python
src_PhysicsTools_PatUtils_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatUtils_python,src/PhysicsTools/PatUtils/python,PYTHON))
ALL_PACKAGES += $(patsubst src/%,%,src/PhysicsTools/TagAndProbe)
subdirs_src_PhysicsTools_TagAndProbe := src_PhysicsTools_TagAndProbe_test src_PhysicsTools_TagAndProbe_interface src_PhysicsTools_TagAndProbe_python src_PhysicsTools_TagAndProbe_src src_PhysicsTools_TagAndProbe_plugins
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
ifeq ($(strip $(PyPhysicsToolsTagAndProbe)),)
PyPhysicsToolsTagAndProbe := self/src/PhysicsTools/TagAndProbe/python
src_PhysicsTools_TagAndProbe_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/PhysicsTools/TagAndProbe/python)
PyPhysicsToolsTagAndProbe_files := $(patsubst src/PhysicsTools/TagAndProbe/python/%,%,$(wildcard $(foreach dir,src/PhysicsTools/TagAndProbe/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyPhysicsToolsTagAndProbe_LOC_USE := self cmssw 
PyPhysicsToolsTagAndProbe_PACKAGE := self/src/PhysicsTools/TagAndProbe/python
ALL_PRODS += PyPhysicsToolsTagAndProbe
PyPhysicsToolsTagAndProbe_INIT_FUNC        += $$(eval $$(call PythonProduct,PyPhysicsToolsTagAndProbe,src/PhysicsTools/TagAndProbe/python,src_PhysicsTools_TagAndProbe_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyPhysicsToolsTagAndProbe,src/PhysicsTools/TagAndProbe/python))
endif
ALL_COMMONRULES += src_PhysicsTools_TagAndProbe_python
src_PhysicsTools_TagAndProbe_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_TagAndProbe_python,src/PhysicsTools/TagAndProbe/python,PYTHON))
ALL_COMMONRULES += src_PhysicsTools_TagAndProbe_test
src_PhysicsTools_TagAndProbe_test_parent := PhysicsTools/TagAndProbe
src_PhysicsTools_TagAndProbe_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_TagAndProbe_test,src/PhysicsTools/TagAndProbe/test,TEST))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/RecoEcal)
subdirs_src_RecoEcal = src_RecoEcal_EgammaCoreTools
ALL_PACKAGES += $(patsubst src/%,%,src/RecoEcal/EgammaCoreTools)
subdirs_src_RecoEcal_EgammaCoreTools := src_RecoEcal_EgammaCoreTools_python src_RecoEcal_EgammaCoreTools_doc src_RecoEcal_EgammaCoreTools_src src_RecoEcal_EgammaCoreTools_plugins src_RecoEcal_EgammaCoreTools_test
ifeq ($(strip $(RecoEcalEcalClusterFunctions)),)
RecoEcalEcalClusterFunctions_files := $(patsubst src/RecoEcal/EgammaCoreTools/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoEcal/EgammaCoreTools/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEcal/EgammaCoreTools/plugins/$(file). Please fix src/RecoEcal/EgammaCoreTools/plugins/BuildFile.))))
RecoEcalEcalClusterFunctions := self/src/RecoEcal/EgammaCoreTools/plugins
RecoEcalEcalClusterFunctions_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEcal/EgammaCoreTools/plugins/BuildFile
RecoEcalEcalClusterFunctions_LOC_USE := self cmssw RecoEcal/EgammaCoreTools CondFormats/DataRecord CondFormats/EcalObjects
RecoEcalEcalClusterFunctions_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoEcalEcalClusterFunctions,RecoEcalEcalClusterFunctions,$(SCRAMSTORENAME_LIB),src/RecoEcal/EgammaCoreTools/plugins))
RecoEcalEcalClusterFunctions_PACKAGE := self/src/RecoEcal/EgammaCoreTools/plugins
ALL_PRODS += RecoEcalEcalClusterFunctions
RecoEcalEcalClusterFunctions_INIT_FUNC        += $$(eval $$(call Library,RecoEcalEcalClusterFunctions,src/RecoEcal/EgammaCoreTools/plugins,src_RecoEcal_EgammaCoreTools_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,RecoEcalEcalClusterFunctions,src/RecoEcal/EgammaCoreTools/plugins))
endif
ALL_COMMONRULES += src_RecoEcal_EgammaCoreTools_plugins
src_RecoEcal_EgammaCoreTools_plugins_parent := RecoEcal/EgammaCoreTools
src_RecoEcal_EgammaCoreTools_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoEcal_EgammaCoreTools_plugins,src/RecoEcal/EgammaCoreTools/plugins,PLUGINS))
ifeq ($(strip $(PyRecoEcalEgammaCoreTools)),)
PyRecoEcalEgammaCoreTools := self/src/RecoEcal/EgammaCoreTools/python
src_RecoEcal_EgammaCoreTools_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoEcal/EgammaCoreTools/python)
PyRecoEcalEgammaCoreTools_files := $(patsubst src/RecoEcal/EgammaCoreTools/python/%,%,$(wildcard $(foreach dir,src/RecoEcal/EgammaCoreTools/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRecoEcalEgammaCoreTools_LOC_USE := self cmssw 
PyRecoEcalEgammaCoreTools_PACKAGE := self/src/RecoEcal/EgammaCoreTools/python
ALL_PRODS += PyRecoEcalEgammaCoreTools
PyRecoEcalEgammaCoreTools_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoEcalEgammaCoreTools,src/RecoEcal/EgammaCoreTools/python,src_RecoEcal_EgammaCoreTools_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoEcalEgammaCoreTools,src/RecoEcal/EgammaCoreTools/python))
endif
ALL_COMMONRULES += src_RecoEcal_EgammaCoreTools_python
src_RecoEcal_EgammaCoreTools_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoEcal_EgammaCoreTools_python,src/RecoEcal/EgammaCoreTools/python,PYTHON))
ifeq ($(strip $(testEcalClusterSeverityAlgo)),)
testEcalClusterSeverityAlgo_files := $(patsubst src/RecoEcal/EgammaCoreTools/test/%,%,$(foreach file,testEcalClusterSeverityAlgo.cc,$(eval xfile:=$(wildcard src/RecoEcal/EgammaCoreTools/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEcal/EgammaCoreTools/test/$(file). Please fix src/RecoEcal/EgammaCoreTools/test/BuildFile.))))
testEcalClusterSeverityAlgo := self/src/RecoEcal/EgammaCoreTools/test
testEcalClusterSeverityAlgo_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEcal/EgammaCoreTools/test/BuildFile
testEcalClusterSeverityAlgo_LOC_USE := self cmssw RecoEcal/EgammaCoreTools DataFormats/EcalRecHit Geometry/CaloGeometry Geometry/CaloTopology CondFormats/EcalObjects CondFormats/DataRecord hepmc clhep SimDataFormats/GeneratorProducts
testEcalClusterSeverityAlgo_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,testEcalClusterSeverityAlgo,testEcalClusterSeverityAlgo,$(SCRAMSTORENAME_LIB),src/RecoEcal/EgammaCoreTools/test))
testEcalClusterSeverityAlgo_PACKAGE := self/src/RecoEcal/EgammaCoreTools/test
ALL_PRODS += testEcalClusterSeverityAlgo
testEcalClusterSeverityAlgo_INIT_FUNC        += $$(eval $$(call Library,testEcalClusterSeverityAlgo,src/RecoEcal/EgammaCoreTools/test,src_RecoEcal_EgammaCoreTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,testEcalClusterSeverityAlgo,src/RecoEcal/EgammaCoreTools/test))
endif
ifeq ($(strip $(filterProbClusters)),)
filterProbClusters_files := $(patsubst src/RecoEcal/EgammaCoreTools/test/%,%,$(foreach file,filterProbClusters.cc,$(eval xfile:=$(wildcard src/RecoEcal/EgammaCoreTools/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEcal/EgammaCoreTools/test/$(file). Please fix src/RecoEcal/EgammaCoreTools/test/BuildFile.))))
filterProbClusters := self/src/RecoEcal/EgammaCoreTools/test
filterProbClusters_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEcal/EgammaCoreTools/test/BuildFile
filterProbClusters_LOC_USE := self cmssw RecoEcal/EgammaCoreTools DataFormats/EcalRecHit Geometry/CaloGeometry Geometry/CaloTopology CondFormats/EcalObjects CondFormats/DataRecord hepmc clhep SimDataFormats/GeneratorProducts
filterProbClusters_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,filterProbClusters,filterProbClusters,$(SCRAMSTORENAME_LIB),src/RecoEcal/EgammaCoreTools/test))
filterProbClusters_PACKAGE := self/src/RecoEcal/EgammaCoreTools/test
ALL_PRODS += filterProbClusters
filterProbClusters_INIT_FUNC        += $$(eval $$(call Library,filterProbClusters,src/RecoEcal/EgammaCoreTools/test,src_RecoEcal_EgammaCoreTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,filterProbClusters,src/RecoEcal/EgammaCoreTools/test))
endif
ifeq ($(strip $(testEcalClusterTools)),)
testEcalClusterTools_files := $(patsubst src/RecoEcal/EgammaCoreTools/test/%,%,$(foreach file,testEcalClusterTools.cc,$(eval xfile:=$(wildcard src/RecoEcal/EgammaCoreTools/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEcal/EgammaCoreTools/test/$(file). Please fix src/RecoEcal/EgammaCoreTools/test/BuildFile.))))
testEcalClusterTools := self/src/RecoEcal/EgammaCoreTools/test
testEcalClusterTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEcal/EgammaCoreTools/test/BuildFile
testEcalClusterTools_LOC_USE := self cmssw RecoEcal/EgammaCoreTools DataFormats/EcalRecHit Geometry/CaloGeometry Geometry/CaloTopology CondFormats/EcalObjects CondFormats/DataRecord hepmc clhep SimDataFormats/GeneratorProducts
testEcalClusterTools_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,testEcalClusterTools,testEcalClusterTools,$(SCRAMSTORENAME_LIB),src/RecoEcal/EgammaCoreTools/test))
testEcalClusterTools_PACKAGE := self/src/RecoEcal/EgammaCoreTools/test
ALL_PRODS += testEcalClusterTools
testEcalClusterTools_INIT_FUNC        += $$(eval $$(call Library,testEcalClusterTools,src/RecoEcal/EgammaCoreTools/test,src_RecoEcal_EgammaCoreTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,testEcalClusterTools,src/RecoEcal/EgammaCoreTools/test))
endif
ifeq ($(strip $(testEcalClusterFunctions)),)
testEcalClusterFunctions_files := $(patsubst src/RecoEcal/EgammaCoreTools/test/%,%,$(foreach file,testEcalClusterFunctions.cc,$(eval xfile:=$(wildcard src/RecoEcal/EgammaCoreTools/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEcal/EgammaCoreTools/test/$(file). Please fix src/RecoEcal/EgammaCoreTools/test/BuildFile.))))
testEcalClusterFunctions := self/src/RecoEcal/EgammaCoreTools/test
testEcalClusterFunctions_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEcal/EgammaCoreTools/test/BuildFile
testEcalClusterFunctions_LOC_USE := self cmssw RecoEcal/EgammaCoreTools DataFormats/EcalRecHit Geometry/CaloGeometry Geometry/CaloTopology CondFormats/EcalObjects CondFormats/DataRecord hepmc clhep SimDataFormats/GeneratorProducts
testEcalClusterFunctions_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,testEcalClusterFunctions,testEcalClusterFunctions,$(SCRAMSTORENAME_LIB),src/RecoEcal/EgammaCoreTools/test))
testEcalClusterFunctions_PACKAGE := self/src/RecoEcal/EgammaCoreTools/test
ALL_PRODS += testEcalClusterFunctions
testEcalClusterFunctions_INIT_FUNC        += $$(eval $$(call Library,testEcalClusterFunctions,src/RecoEcal/EgammaCoreTools/test,src_RecoEcal_EgammaCoreTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,testEcalClusterFunctions,src/RecoEcal/EgammaCoreTools/test))
endif
ifeq ($(strip $(testEcalClusterLazyTools)),)
testEcalClusterLazyTools_files := $(patsubst src/RecoEcal/EgammaCoreTools/test/%,%,$(foreach file,testEcalClusterLazyTools.cc,$(eval xfile:=$(wildcard src/RecoEcal/EgammaCoreTools/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEcal/EgammaCoreTools/test/$(file). Please fix src/RecoEcal/EgammaCoreTools/test/BuildFile.))))
testEcalClusterLazyTools := self/src/RecoEcal/EgammaCoreTools/test
testEcalClusterLazyTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEcal/EgammaCoreTools/test/BuildFile
testEcalClusterLazyTools_LOC_USE := self cmssw RecoEcal/EgammaCoreTools DataFormats/EcalRecHit Geometry/CaloGeometry Geometry/CaloTopology CondFormats/EcalObjects CondFormats/DataRecord hepmc clhep SimDataFormats/GeneratorProducts
testEcalClusterLazyTools_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,testEcalClusterLazyTools,testEcalClusterLazyTools,$(SCRAMSTORENAME_LIB),src/RecoEcal/EgammaCoreTools/test))
testEcalClusterLazyTools_PACKAGE := self/src/RecoEcal/EgammaCoreTools/test
ALL_PRODS += testEcalClusterLazyTools
testEcalClusterLazyTools_INIT_FUNC        += $$(eval $$(call Library,testEcalClusterLazyTools,src/RecoEcal/EgammaCoreTools/test,src_RecoEcal_EgammaCoreTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,testEcalClusterLazyTools,src/RecoEcal/EgammaCoreTools/test))
endif
ALL_COMMONRULES += src_RecoEcal_EgammaCoreTools_test
src_RecoEcal_EgammaCoreTools_test_parent := RecoEcal/EgammaCoreTools
src_RecoEcal_EgammaCoreTools_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoEcal_EgammaCoreTools_test,src/RecoEcal/EgammaCoreTools/test,TEST))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/RecoEgamma)
subdirs_src_RecoEgamma = src_RecoEgamma_PhotonIdentification
ALL_PACKAGES += $(patsubst src/%,%,src/RecoEgamma/PhotonIdentification)
subdirs_src_RecoEgamma_PhotonIdentification := src_RecoEgamma_PhotonIdentification_test src_RecoEgamma_PhotonIdentification_interface src_RecoEgamma_PhotonIdentification_python src_RecoEgamma_PhotonIdentification_src src_RecoEgamma_PhotonIdentification_plugins
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
ifeq ($(strip $(PyRecoEgammaPhotonIdentification)),)
PyRecoEgammaPhotonIdentification := self/src/RecoEgamma/PhotonIdentification/python
src_RecoEgamma_PhotonIdentification_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoEgamma/PhotonIdentification/python)
PyRecoEgammaPhotonIdentification_files := $(patsubst src/RecoEgamma/PhotonIdentification/python/%,%,$(wildcard $(foreach dir,src/RecoEgamma/PhotonIdentification/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRecoEgammaPhotonIdentification_LOC_USE := self cmssw 
PyRecoEgammaPhotonIdentification_PACKAGE := self/src/RecoEgamma/PhotonIdentification/python
ALL_PRODS += PyRecoEgammaPhotonIdentification
PyRecoEgammaPhotonIdentification_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoEgammaPhotonIdentification,src/RecoEgamma/PhotonIdentification/python,src_RecoEgamma_PhotonIdentification_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoEgammaPhotonIdentification,src/RecoEgamma/PhotonIdentification/python))
endif
ALL_COMMONRULES += src_RecoEgamma_PhotonIdentification_python
src_RecoEgamma_PhotonIdentification_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoEgamma_PhotonIdentification_python,src/RecoEgamma/PhotonIdentification/python,PYTHON))
ALL_COMMONRULES += src_RecoEgamma_PhotonIdentification_test
src_RecoEgamma_PhotonIdentification_test_parent := RecoEgamma/PhotonIdentification
src_RecoEgamma_PhotonIdentification_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoEgamma_PhotonIdentification_test,src/RecoEgamma/PhotonIdentification/test,TEST))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/RecoHI)
subdirs_src_RecoHI = src_RecoHI_HiEgammaAlgos
ALL_PACKAGES += $(patsubst src/%,%,src/RecoHI/HiEgammaAlgos)
subdirs_src_RecoHI_HiEgammaAlgos := src_RecoHI_HiEgammaAlgos_src src_RecoHI_HiEgammaAlgos_test src_RecoHI_HiEgammaAlgos_python src_RecoHI_HiEgammaAlgos_plugins
ifeq ($(strip $(RecoHIHiEgammaAlgosPlugins)),)
RecoHIHiEgammaAlgosPlugins_files := $(patsubst src/RecoHI/HiEgammaAlgos/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoHI/HiEgammaAlgos/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoHI/HiEgammaAlgos/plugins/$(file). Please fix src/RecoHI/HiEgammaAlgos/plugins/BuildFile.))))
RecoHIHiEgammaAlgosPlugins := self/src/RecoHI/HiEgammaAlgos/plugins
RecoHIHiEgammaAlgosPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoHI/HiEgammaAlgos/plugins/BuildFile
RecoHIHiEgammaAlgosPlugins_LOC_USE := self cmssw FWCore/Framework FWCore/ParameterSet FWCore/Utilities FWCore/ServiceRegistry DataFormats/Common DataFormats/BTauReco DataFormats/EgammaCandidates RecoHI/HiEgammaAlgos RecoLocalCalo/EcalRecAlgos RecoEcal/EgammaCoreTools CondFormats/DataRecord CondFormats/EcalObjects FWCore/MessageLogger  root
RecoHIHiEgammaAlgosPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoHIHiEgammaAlgosPlugins,RecoHIHiEgammaAlgosPlugins,$(SCRAMSTORENAME_LIB),src/RecoHI/HiEgammaAlgos/plugins))
RecoHIHiEgammaAlgosPlugins_PACKAGE := self/src/RecoHI/HiEgammaAlgos/plugins
ALL_PRODS += RecoHIHiEgammaAlgosPlugins
RecoHIHiEgammaAlgosPlugins_INIT_FUNC        += $$(eval $$(call Library,RecoHIHiEgammaAlgosPlugins,src/RecoHI/HiEgammaAlgos/plugins,src_RecoHI_HiEgammaAlgos_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,RecoHIHiEgammaAlgosPlugins,src/RecoHI/HiEgammaAlgos/plugins))
endif
ALL_COMMONRULES += src_RecoHI_HiEgammaAlgos_plugins
src_RecoHI_HiEgammaAlgos_plugins_parent := RecoHI/HiEgammaAlgos
src_RecoHI_HiEgammaAlgos_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoHI_HiEgammaAlgos_plugins,src/RecoHI/HiEgammaAlgos/plugins,PLUGINS))
ifeq ($(strip $(PyRecoHIHiEgammaAlgos)),)
PyRecoHIHiEgammaAlgos := self/src/RecoHI/HiEgammaAlgos/python
src_RecoHI_HiEgammaAlgos_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoHI/HiEgammaAlgos/python)
PyRecoHIHiEgammaAlgos_files := $(patsubst src/RecoHI/HiEgammaAlgos/python/%,%,$(wildcard $(foreach dir,src/RecoHI/HiEgammaAlgos/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRecoHIHiEgammaAlgos_LOC_USE := self cmssw 
PyRecoHIHiEgammaAlgos_PACKAGE := self/src/RecoHI/HiEgammaAlgos/python
ALL_PRODS += PyRecoHIHiEgammaAlgos
PyRecoHIHiEgammaAlgos_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoHIHiEgammaAlgos,src/RecoHI/HiEgammaAlgos/python,src_RecoHI_HiEgammaAlgos_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoHIHiEgammaAlgos,src/RecoHI/HiEgammaAlgos/python))
endif
ALL_COMMONRULES += src_RecoHI_HiEgammaAlgos_python
src_RecoHI_HiEgammaAlgos_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoHI_HiEgammaAlgos_python,src/RecoHI/HiEgammaAlgos/python,PYTHON))
ifeq ($(strip $(RecoHIHiEgammaAlgos_testAnalyzers)),)
RecoHIHiEgammaAlgos_testAnalyzers_files := $(patsubst src/RecoHI/HiEgammaAlgos/test/%,%,$(foreach file,patTest/*.cc,$(eval xfile:=$(wildcard src/RecoHI/HiEgammaAlgos/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoHI/HiEgammaAlgos/test/$(file). Please fix src/RecoHI/HiEgammaAlgos/test/BuildFile.))))
RecoHIHiEgammaAlgos_testAnalyzers := self/src/RecoHI/HiEgammaAlgos/test
RecoHIHiEgammaAlgos_testAnalyzers_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoHI/HiEgammaAlgos/test/BuildFile
RecoHIHiEgammaAlgos_testAnalyzers_LOC_USE := self cmssw FWCore/Framework FWCore/ParameterSet DataFormats/BTauReco PhysicsTools/PatUtils PhysicsTools/PatAlgos CommonTools/UtilAlgos DataFormats/PatCandidates root
RecoHIHiEgammaAlgos_testAnalyzers_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoHIHiEgammaAlgos_testAnalyzers,RecoHIHiEgammaAlgos_testAnalyzers,$(SCRAMSTORENAME_LIB),src/RecoHI/HiEgammaAlgos/test))
RecoHIHiEgammaAlgos_testAnalyzers_PACKAGE := self/src/RecoHI/HiEgammaAlgos/test
ALL_PRODS += RecoHIHiEgammaAlgos_testAnalyzers
RecoHIHiEgammaAlgos_testAnalyzers_INIT_FUNC        += $$(eval $$(call Library,RecoHIHiEgammaAlgos_testAnalyzers,src/RecoHI/HiEgammaAlgos/test,src_RecoHI_HiEgammaAlgos_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,RecoHIHiEgammaAlgos_testAnalyzers,src/RecoHI/HiEgammaAlgos/test))
endif
ALL_COMMONRULES += src_RecoHI_HiEgammaAlgos_test
src_RecoHI_HiEgammaAlgos_test_parent := RecoHI/HiEgammaAlgos
src_RecoHI_HiEgammaAlgos_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoHI_HiEgammaAlgos_test,src/RecoHI/HiEgammaAlgos/test,TEST))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/ggAnalysis)
subdirs_src_ggAnalysis = src_ggAnalysis_ggNtuplizer
ALL_PACKAGES += $(patsubst src/%,%,src/ggAnalysis/ggNtuplizer)
subdirs_src_ggAnalysis_ggNtuplizer := src_ggAnalysis_ggNtuplizer_test src_ggAnalysis_ggNtuplizer_interface src_ggAnalysis_ggNtuplizer_python src_ggAnalysis_ggNtuplizer_plugins
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
ifeq ($(strip $(PyggAnalysisggNtuplizer)),)
PyggAnalysisggNtuplizer := self/src/ggAnalysis/ggNtuplizer/python
src_ggAnalysis_ggNtuplizer_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/ggAnalysis/ggNtuplizer/python)
PyggAnalysisggNtuplizer_files := $(patsubst src/ggAnalysis/ggNtuplizer/python/%,%,$(wildcard $(foreach dir,src/ggAnalysis/ggNtuplizer/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyggAnalysisggNtuplizer_LOC_USE := self cmssw 
PyggAnalysisggNtuplizer_PACKAGE := self/src/ggAnalysis/ggNtuplizer/python
ALL_PRODS += PyggAnalysisggNtuplizer
PyggAnalysisggNtuplizer_INIT_FUNC        += $$(eval $$(call PythonProduct,PyggAnalysisggNtuplizer,src/ggAnalysis/ggNtuplizer/python,src_ggAnalysis_ggNtuplizer_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyggAnalysisggNtuplizer,src/ggAnalysis/ggNtuplizer/python))
endif
ALL_COMMONRULES += src_ggAnalysis_ggNtuplizer_python
src_ggAnalysis_ggNtuplizer_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_ggAnalysis_ggNtuplizer_python,src/ggAnalysis/ggNtuplizer/python,PYTHON))
ALL_COMMONRULES += src_ggAnalysis_ggNtuplizer_test
src_ggAnalysis_ggNtuplizer_test_parent := ggAnalysis/ggNtuplizer
src_ggAnalysis_ggNtuplizer_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_ggAnalysis_ggNtuplizer_test,src/ggAnalysis/ggNtuplizer/test,TEST))
