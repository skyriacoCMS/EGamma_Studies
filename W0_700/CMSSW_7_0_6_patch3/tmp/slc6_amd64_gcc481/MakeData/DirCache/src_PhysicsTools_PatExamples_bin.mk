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
