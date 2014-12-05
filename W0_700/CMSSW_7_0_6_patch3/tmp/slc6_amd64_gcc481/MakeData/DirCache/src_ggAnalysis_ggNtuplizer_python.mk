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
