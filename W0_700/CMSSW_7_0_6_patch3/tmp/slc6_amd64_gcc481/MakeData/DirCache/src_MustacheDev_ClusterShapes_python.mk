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
