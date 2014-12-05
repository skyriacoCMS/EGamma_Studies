#import FWCore.ParameterSet.Config as cms
import sys
from FWCore.ParameterSet.Config import *
process = cms.Process("Demo")


OUTPUTFILE = sys.argv[3]


process.load("FWCore.MessageService.MessageLogger_cfi")
process.load("MustacheDev.ClusterShapes.CfiFile_cfi")
process.load("Configuration.StandardSequences.GeometryDB_cff")
process.load("Configuration.StandardSequences.FrontierConditions_GlobalTag_cff")
process.GlobalTag.globaltag = cms.string('START70_V7::All')
#process.extend(include("RecoEcal/EgammaClusterProducers/data/geometryForClustering.cff"))





process.maxEvents = cms.untracked.PSet( input = cms.untracked.int32(1000))


#process.source = cms.Source("PoolSource",
    # replace 'myfile.root' with the source file you want to use
 #   fileNames = cms.untracked.vstring(
        #'file:/tmp/rpatel/78B2377C-ECD1-E311-B111-00266CF25490.root'
  #  )
#)

#process.demo = cms.EDAnalyzer('ClusterShapes'

#)


process.p = cms.Path(process.demo)


process.TFileService = cms.Service(
    "TFileService",
    fileName = cms.string(OUTPUTFILE) 
    )