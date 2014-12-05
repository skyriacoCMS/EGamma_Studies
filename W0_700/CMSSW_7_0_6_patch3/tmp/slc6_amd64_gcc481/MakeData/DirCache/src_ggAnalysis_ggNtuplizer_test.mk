ALL_COMMONRULES += src_ggAnalysis_ggNtuplizer_test
src_ggAnalysis_ggNtuplizer_test_parent := ggAnalysis/ggNtuplizer
src_ggAnalysis_ggNtuplizer_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_ggAnalysis_ggNtuplizer_test,src/ggAnalysis/ggNtuplizer/test,TEST))
