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
