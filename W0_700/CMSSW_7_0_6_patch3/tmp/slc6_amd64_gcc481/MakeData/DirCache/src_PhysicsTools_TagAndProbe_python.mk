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
