ALL_COMMONRULES += src_MustacheDev_ClusterShapes_test
src_MustacheDev_ClusterShapes_test_parent := MustacheDev/ClusterShapes
src_MustacheDev_ClusterShapes_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_MustacheDev_ClusterShapes_test,src/MustacheDev/ClusterShapes/test,TEST))
