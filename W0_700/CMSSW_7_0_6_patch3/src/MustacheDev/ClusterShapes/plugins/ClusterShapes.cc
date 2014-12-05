// -*- C++ -*-
//
// Package:    MustacheDev/ClusterShapes
// Class:      ClusterShapes
// 
/**\class ClusterShapes ClusterShapes.cc MustacheDev/ClusterShapes/plugins/ClusterShapes.cc

 Description: [one line class summary]

 Implementation:
     [Notes on implementation]
*/
//
// Original Author:  Rishi Gautam Patel
//         Created:  Thu, 24 Jul 2014 16:56:56 GMT
//
//


// system include files
#include <memory>
#include <iostream>
// user include files
#include "CommonTools/UtilAlgos/interface/TFileService.h"
#include "ggAnalysis/ggNtuplizer/interface/GenParticleParentage.h"
#include "ggAnalysis/ggNtuplizer/plugins/GenParticleParentage.cc"

//#include "ggAnalysis/ggNtuplizer/interface/ggNtuplizer.h"


#include "DataFormats/EgammaCandidates/interface/Photon.h"
#include "DataFormats/EgammaCandidates/interface/PhotonFwd.h"
#include "DataFormats/HepMCCandidate/interface/GenParticle.h"
#include "DataFormats/Math/interface/deltaR.h"
#include "DataFormats/ParticleFlowCandidate/interface/PFCandidate.h"
#include "DataFormats/ParticleFlowCandidate/interface/PFCandidateFwd.h"
#include "DataFormats/VertexReco/interface/Vertex.h"
#include "DataFormats/VertexReco/interface/VertexFwd.h"
#include "FWCore/Framework/interface/Frameworkfwd.h"
#include "FWCore/Framework/interface/EDAnalyzer.h"

#include "FWCore/Framework/interface/Event.h"
#include "FWCore/Framework/interface/MakerMacros.h"

#include "FWCore/ParameterSet/interface/ParameterSet.h"
#include "FWCore/ServiceRegistry/interface/Service.h"
#include "RecoEcal/EgammaCoreTools/interface/Mustache.h"

#include "RecoEcal/EgammaCoreTools/interface/EcalClusterLazyTools.h"
#include "RecoEcal/EgammaCoreTools/interface/Mustache.h"
#include "DataFormats/ParticleFlowReco/interface/PFClusterFwd.h"
#include "DataFormats/ParticleFlowReco/interface/PFCluster.h"
#include "RecoEcal/EgammaCoreTools/interface/EcalClusterTools.h"
#include "Geometry/CaloGeometry/interface/CaloGeometry.h"
#include "Geometry/CaloTopology/interface/CaloTopology.h"
#include "Geometry/Records/interface/CaloGeometryRecord.h"
#include "Geometry/CaloEventSetup/interface/CaloTopologyRecord.h"
#include <vector>
#include <TROOT.h>
#include <TFile.h>
#include <TTree.h>
#include <TH1F.h>
#include <TH2F.h>
#include <TLorentzVector.h>


#include "FWCore/Framework/interface/Frameworkfwd.h"


#include "CommonTools/UtilAlgos/interface/TFileService.h"
#include "CommonTools/Utils/interface/TFileDirectory.h"
#include "DataFormats/HepMCCandidate/interface/GenParticle.h"
#include "DataFormats/PatCandidates/interface/Electron.h"
#include "DataFormats/PatCandidates/interface/MET.h"
#include "DataFormats/PatCandidates/interface/Photon.h"
#include "DataFormats/PatCandidates/interface/Particle.h"
#include "DataFormats/VertexReco/interface/Vertex.h"
#include "DataFormats/VertexReco/interface/VertexFwd.h"
#include "HiggsAnalysis/HiggsTo2photons/interface/CiCPhotonID.h"
#include "RecoEcal/EgammaCoreTools/interface/EcalClusterLazyTools.h"

#include "RecoEgamma/PhotonIdentification/interface/GEDPhoIDTools.h"
#include "RecoEgamma/PhotonIdentification/src/GEDPhoIDTools.cc"






#include "SimDataFormats/GeneratorProducts/interface/GenEventInfoProduct.h"
#include "SimDataFormats/PileupSummaryInfo/interface/PileupSummaryInfo.h"
#include "RecoEcal/EgammaCoreTools/interface/EcalClusterTools.h"



//
// class declaration
//

class ClusterShapes : public edm::EDAnalyzer {
public:
  explicit ClusterShapes(const edm::ParameterSet&);
  ~ClusterShapes();
  
  static void fillDescriptions(edm::ConfigurationDescriptions& descriptions);
  
  
private:
  virtual void beginJob() override;
  virtual void analyze(const edm::Event&, const edm::EventSetup&) override;
  virtual void endJob() override;
  edm::InputTag MCTruthCollection_;
  edm::InputTag gedPhotonLabel_;
  edm::InputTag EGCollLabel_;
  edm::InputTag ebReducedRecHitCollection_;
  edm::InputTag eeReducedRecHitCollection_;
  edm::InputTag esReducedRecHitCollection_;
  edm::InputTag PrimaryVertices_;

  
  

  
  TFile*f0;
  TTree*photon_tree;

  float etaWidth;
  std::vector<float> sieie;
  std::vector<float> Ecrys;


  // variables for ID
  float phoPFChIso,phoPFPhoIso,phoPFNeuIso;
  float phoHoverE; 
  float phoSigmaIEtaIEta;


  float Rho;
  float phoSigmaIEtaIEta2012;
  float Eseed;
  float EMcrys;
  float pt,eta,phi;
  float lowE;
  float e2x2, e5x5;
  float pionPt, piPho1Pt, piPho2Pt;
  float dRtoPho;
  int Nseedcrys;
  int NcrysFracAbove;      
  int NClus;
  int nPionsdRCone1;
  int nPionsdRCone2;
  float piPho1Dr, piPho2Dr;
  float detaMid, sigmaEta;
  float seeMid;	
  noZS::EcalClusterLazyTools *lazyTool;      
  int nVtx;
  int PhoisPrompt; 
  int Pix; 

  //virtual void beginRun(edm::Run const&, edm::EventSetup const&) override;
  //virtual void endRun(edm::Run const&, edm::EventSetup const&) override;
  //virtual void beginLuminosityBlock(edm::LuminosityBlock const&, edm::EventSetup const&) override;
  //virtual void endLuminosityBlock(edm::LuminosityBlock const&, edm::EventSetup const&) override;
  
      // ----------member data ---------------------------
};

//
// constants, enums and typedefs
//

//
// static data member definitions
//

//
// constructors and destructor
//
ClusterShapes::ClusterShapes(const edm::ParameterSet& iConfig)
  
{
  //now do what ever initialization is needed
  MCTruthCollection_=iConfig.getParameter<edm::InputTag>("genParticleSrc");
  gedPhotonLabel_=iConfig.getParameter<edm::InputTag>("Photons");
  EGCollLabel_=iConfig.getParameter<edm::InputTag>("EGColl");
  ebReducedRecHitCollection_=iConfig.getParameter<edm::InputTag>("ebReducedRecHitCollection");
  eeReducedRecHitCollection_=iConfig.getParameter<edm::InputTag>("eeReducedRecHitCollection");
  esReducedRecHitCollection_ =iConfig.getParameter<edm::InputTag>("esReducedRecHitCollection");
  PrimaryVertices_=iConfig.getParameter<edm::InputTag>("primaryvertices");
}


ClusterShapes::~ClusterShapes()
{
  
  // do anything here that needs to be done at desctruction time
  // (e.g. close files, deallocate resources etc.)
  
}




// ------------ method called for each event  ------------
void
ClusterShapes::analyze(const edm::Event& iEvent, const edm::EventSetup& iSetup)
{
  using namespace 	edm;
  using namespace 	reco;
  edm::Handle<std::vector<reco::GenParticle> > pMCTruth;
  iEvent.getByLabel(MCTruthCollection_,pMCTruth);
  
  Handle<reco::PhotonCollection> 	theGedPhotonCollection;
  iEvent.getByLabel(gedPhotonLabel_,theGedPhotonCollection);
  const PhotonCollection 	theGedPh = *(theGedPhotonCollection.product());
  
  Handle<reco::SuperClusterCollection> 	egcollection;
  iEvent.getByLabel(EGCollLabel_, egcollection);
  std::vector<reco::SuperCluster> 	egcandidates = (*egcollection.product());


  
  edm::Handle<EcalRecHitCollection> 	EBReducedRecHits;
  edm::Handle<EcalRecHitCollection>  	EEReducedRecHits;
  edm::Handle<EcalRecHitCollection>  	ESReducedRecHits;




  InputTag scrho(string("fixedGridRhoFastjetAll")); 
  Handle<double> Rhoo;
  iEvent.getByLabel(scrho,Rhoo);
  const double Rho_o = *(Rhoo.product());
  

  iEvent.getByLabel(ebReducedRecHitCollection_, EBReducedRecHits);
  iEvent.getByLabel(eeReducedRecHitCollection_, EEReducedRecHits);
  iEvent.getByLabel(esReducedRecHitCollection_, ESReducedRecHits);
  edm::Handle<reco::VertexCollection> 	pvertices;
  iEvent.getByLabel(PrimaryVertices_,pvertices);
  nVtx  = pvertices->size();
  //  std::vector<reco::Vertex>  pvProd = & (*pvertices.product());





  /*
    edm::ESHandle<CaloTopology> pTopology;
    iSetup.get<CaloTopologyRecord>().get(pTopology);
    const CaloTopology *topology 	  = pTopology.product();
    return;
  */

  
   GEDPhoIDTools *GEDIdTool = new GEDPhoIDTools(iEvent);


  lazyTool = new noZS::EcalClusterLazyTools(iEvent, iSetup, ebReducedRecHitCollection_, eeReducedRecHitCollection_, esReducedRecHitCollection_);
  reco::Mustache myMustache;
  //number of crystals in seed
  //additional pfPhoton candidate within 0.1
  for(uint je=0; je<theGedPh.size(); ++je){
    //resizing vectors belonging to the photon 
    sieie.resize(0);
    Ecrys.resize(0);


    

    Rho = Rho_o;


  
    // matching 
    int phoId = 0;    
    for(std::vector<reco::GenParticle>::const_iterator cP = pMCTruth->begin(); cP != pMCTruth->end(); cP++ ) {
      
      
      

      //if( ( cP->status() != 1 ||  (cP->pdgId()) != 22 || ( fabs(cP->mother()->pdgId()) != 1 &&  fabs(cP->mother()->pdgId()) != 2 && fabs(cP->mother()->pdgId()) != 3 && fabs(cP->mother()->pdgId()) != 21 && cP->mother()->pdgId() != 22 && fabs(cP->mother()->pdgId()) != 4 && fabs(cP->mother()->pdgId()) != 5 && fabs(cP->mother()->pdgId()) != 6 )  )) continue;


// && (cP->mother()->pdgId()) != 1 && (cP->mother()->pdgId()) != 2 && (cP->mother()->pdgId()) != 3 && (cP->mother()->pdgId.q()) != 4 && (cP->mother()->pdgId()) != 5 && (cP->mother()->pdgId()) != 6) )continue;
 
     


     
     if(  cP->pdgId() != 22 || cP->pt() < 5.0 ) continue; 
     const Candidate *p = (const Candidate*)&(*cP);
     
     
     reco::GenParticleRef partRef = reco::GenParticleRef(pMCTruth,cP-pMCTruth->begin());
     genpartparentage::GenParticleParentage particleHistory(partRef);
     int mom_id = -9999; 
     if ( particleHistory.hasRealParent() ) {
       reco::GenParticleRef momRef = particleHistory.parent();
       if ( momRef.isNonnull() && momRef.isAvailable() ) {
	 mom_id    = momRef->pdgId();
       }
     }

     if( abs(mom_id) != 21 && abs(mom_id) != 1 && abs(mom_id) != 2 && abs(mom_id) != 3 && abs(mom_id) != 4 && abs(mom_id) != 5 && abs(mom_id) != 6 )  continue;  

     float       dR = deltaR(theGedPh[je].eta(), theGedPh[je].phi(), p->eta(), p->phi());
     if(dR<0.3){
       phoId  = 1;
       break; 
     }       
          
    }//matching the Photons to gen objects 
   PhoisPrompt =phoId;
    
   
   
   //std::cout<<"Cluster Size "<<theGedPh[je].superCluster()->clustersSize()<<std::endl;	
   pt	       = theGedPh[je].pt();
   eta	       = theGedPh[je].superCluster()->seed()->position().eta();
   phi         = theGedPh[je].superCluster()->seed()->position().phi();
   Pix         = theGedPh[je].hasPixelSeed();



   etaWidth   = theGedPh[je].superCluster()->etaWidth();
   


    float 	totEsed = 0; 
    std::pair<DetId, float> 	central = lazyTool->getMaximum(*(theGedPh[je].superCluster()->seed()));

    // lets calculate the 5x5 weights
    for(int ieta = -2; ieta < 3; ieta++){
      for(int iph = -2;iph < 3; iph++){
	//getting the det id :
 	float 			Ecris 	= lazyTool->matrixEnergy(*(theGedPh[je].superCluster()->seed()),central.first,iph,iph,ieta,ieta);
	Ecrys.push_back(Ecris);
	totEsed 				= totEsed + Ecris;
	//	EMcrys 				= central.second;
	//	if(ieta ==0 && iph == 0)std::cout<<central.second<<"  crys :"<<Ecris<<std::endl;
		
      }
    }
    
   
    Eseed =	lazyTool->e5x5(*(theGedPh[je].superCluster()->seed()));

    
    // std::cout<<"Eseed :"<<Eseed<<"   e5x5 calculated by me:"<<totEsed<<endl;

    
      
    //standard value SIE 2012 

    std::vector<float> vCov = lazyTool->localCovariances( *(theGedPh[je].superCluster()->seed()) );
   
    phoSigmaIEtaIEta2012 = (isnan(vCov[0]) ? 0. : sqrt(vCov[0]));

    //studing the w0 values
    float w0 = 3.70;
    for(int i=0; i<20; ++i){
      w0 = 3.70+0.1*i;
      std::vector<float>Cov=lazyTool->localCovariances(*(theGedPh[je].superCluster()->seed()), w0);
      float see=(isnan(Cov[0]) ?0. : sqrt(Cov[0]));
      sieie.push_back(see);
    }
    
      
    NClus=theGedPh[je].superCluster()->clustersSize();
    e2x2=lazyTool->e2x2(*(theGedPh[je].superCluster()->seed()));
    e5x5=lazyTool->e5x5(*(theGedPh[je].superCluster()->seed()));
    Nseedcrys=theGedPh[je].superCluster()->seed()->hitsAndFractions().size();
    NcrysFracAbove=0;
    for(unsigned int i=0; i< theGedPh[je].superCluster()->seed()->hitsAndFractions().size(); ++i)if(theGedPh[je].superCluster()->seed()->hitsAndFractions()[i].second>0.95)++NcrysFracAbove;
    float dEtaSum=0;
    float sumSigma=0;
    int seed=0;
    
    for(reco::CaloCluster_iterator cIt = theGedPh[je].superCluster()->clustersBegin(); cIt != theGedPh[je].superCluster()->clustersEnd(); ++cIt) {	
      seed++;	
      if(seed==1)continue;
      myMustache.MustacheMedianDist(detaMid, sigmaEta, eta, phi,(*cIt)->energy(), (*cIt)->position().eta(),(*cIt)->position().phi());
      dEtaSum=dEtaSum+detaMid*detaMid*1.0/sigmaEta;
      sumSigma=sumSigma+1.0/sigmaEta;
    }
    
    seeMid=sqrt(dEtaSum/sumSigma);

    //filling the ID variables 

    size_t rightRecoPho = -1;
    for (size_t iv = 0; iv < theGedPhotonCollection->size(); ++iv) {
      reco::PhotonRef recophoRef2(theGedPhotonCollection, iv);
      if (deltaR(theGedPh[je].eta(),theGedPh[je].phi(), recophoRef2->eta(), recophoRef2->phi()) < 0.01) rightRecoPho = iv;
    }

    

    reco::Vertex pv = pvertices->at(0);
    reco::PhotonRef recophoRef(theGedPhotonCollection,rightRecoPho);
    
    GEDIdTool->setPhotonP4( recophoRef , pvertices->at(0));
    phoPFChIso  = (GEDIdTool->SolidConeIso(0.3, reco::PFCandidate::h));
    phoPFPhoIso = (GEDIdTool->SolidConeIso(0.3, reco::PFCandidate::gamma));
    phoPFNeuIso = (GEDIdTool->SolidConeIso(0.3, reco::PFCandidate::h0));
    
    phoHoverE = theGedPh[je].hadTowOverEm();
    photon_tree->Fill();
    
    
    
  }//eof of reco photons loop


}
  
  



// ------------ method called once each job just before starting event loop  ------------
void 
ClusterShapes::beginJob()
{



  
  edm::Service<TFileService> fs;
  photon_tree = fs->make<TTree>("photon_tree","Photons ");    

  photon_tree->Branch("eta", &eta, "eta/F");
  photon_tree->Branch("pt", &pt, "pt/F");
  photon_tree->Branch("phi", &phi, "phi/F");

  photon_tree->Branch("Rho",&Rho,"Rho/F");
  photon_tree->Branch("Pix",&Pix,"Pix/I");

  photon_tree->Branch("phoPFChIso",&phoPFChIso,"phoPFChIso/F");
  photon_tree->Branch("phoPFPhoIso",&phoPFPhoIso,"phoPFPhoIso/F");
  photon_tree->Branch("phoPFNeuIso",&phoPFNeuIso,"phoPFNeuIso/F");
  photon_tree->Branch("phoHoverE",&phoHoverE,"phoHoverE/F");
  photon_tree->Branch("phoSigmaIEtaIEta",&phoSigmaIEtaIEta,"phoSigmaIEtaIEta/F");



  photon_tree->Branch("etaWidth", &etaWidth, "etaWidth/F");
  photon_tree->Branch("sieie", &sieie);
  photon_tree->Branch("Nseedcrys", &Nseedcrys, "Nseedcrys/I");
  photon_tree->Branch("NcrysFracAbove", &NcrysFracAbove, "NcrysFracAbove/I");
  photon_tree->Branch("NClus", &NClus, "NClus/I");
  photon_tree->Branch("e2x2", &e2x2, "e2x2/F");
  photon_tree->Branch("e5x5", &e5x5, "e5x5/F");
  photon_tree->Branch("detaMid", &detaMid, "detaMid/F");
  photon_tree->Branch("sigmaEta", &sigmaEta, "sigmaEta/F");
  photon_tree->Branch("seeMid", &seeMid, "seeMid/F");
  photon_tree->Branch("nVtx", &nVtx, "nVtx/I");
  photon_tree->Branch("Eseed",&Eseed,"Eseed/F");
  photon_tree->Branch("Ecrys",&Ecrys);
  photon_tree->Branch("EMcrys",&EMcrys,"EMcrys/F");
  photon_tree->Branch("PhoisPrompt",&PhoisPrompt,"PhoisPrompt/I");
  photon_tree->Branch("phoSigmaIEtaIEta2012",&phoSigmaIEtaIEta2012,"phoSigmaIEtaIEta2012/F");

}

// ------------ method called once each job just after ending the event loop  ------------
void 
ClusterShapes::endJob() 
{

}

// ------------ method called when starting to processes a run  ------------
/*
void 
ClusterShapes::beginRun(edm::Run const&, edm::EventSetup const&)
{
}
*/

// ------------ method called when ending the processing of a run  ------------
/*
void 
ClusterShapes::endRun(edm::Run const&, edm::EventSetup const&)
{
}
*/

// ------------ method called when starting to processes a luminosity block  ------------
/*
void 
ClusterShapes::beginLuminosityBlock(edm::LuminosityBlock const&, edm::EventSetup const&)
{
}
*/

// ------------ method called when ending the processing of a luminosity block  ------------
/*
void 
ClusterShapes::endLuminosityBlock(edm::LuminosityBlock const&, edm::EventSetup const&)
{
}
*/

// ------------ method fills 'descriptions' with the allowed parameters for the module  ------------
void
ClusterShapes::fillDescriptions(edm::ConfigurationDescriptions& descriptions) {
  //The following says we do not know what parameters are allowed so do no validation
  // Please change this to state exactly what you do use, even if it is no parameters
  edm::ParameterSetDescription 	desc;
  desc.setUnknown();
  descriptions.addDefault(desc);
}

//define this as a plug-in
DEFINE_FWK_MODULE(ClusterShapes);
