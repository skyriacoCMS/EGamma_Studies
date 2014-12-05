ALL_COMMONRULES += src_PhysicsTools_TagAndProbe_test
src_PhysicsTools_TagAndProbe_test_parent := PhysicsTools/TagAndProbe
src_PhysicsTools_TagAndProbe_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_TagAndProbe_test,src/PhysicsTools/TagAndProbe/test,TEST))
