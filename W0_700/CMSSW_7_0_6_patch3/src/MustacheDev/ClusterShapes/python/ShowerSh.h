//////////////////////////////////////////////////////////
// This class has been automatically generated on
// Tue Sep 23 11:35:37 2014 by ROOT version 5.34/10
// from TTree photon_tree/Photons  
// found on file: ClusterShapes.root
//////////////////////////////////////////////////////////

#ifndef ShowerSh_h
#define ShowerSh_h


#include <TROOT.h>
#include <TChain.h>
#include <TFile.h>

#include <cstdlib>
#include <iostream>
#include <iomanip>


// Header file for the classes stored in the TTree if any.
#include <vector>
// Fixed size dimensions of array or collections stored in the TTree if any.

class ShowerSh {
public :
   TTree          *fChain;   //!pointer to the analyzed TTree or TChain
   Int_t           fCurrent; //!current Tree number in a TChain

   // Declaration of leaf types
   Float_t         eta;
   Float_t         pt;
   Float_t         phi;
   Float_t         etaWidth;
   vector<float>   *sieie;
   Int_t           Nseedcrys;
   Int_t           NcrysFracAbove;
   Int_t           NClus;
   Float_t         e2x2;
   Float_t         e5x5;
   Float_t         detaMid;
   Float_t         sigmaEta;
   Float_t         seeMid;
   Int_t           nVtx;
   Float_t         Eseed;
   vector<float>   *Ecrys;
   Float_t         EMcrys;
   Int_t           PhoisPrompt;

   Float_t         phoPFChIso;
   Float_t         phoPFPhoIso;
   Float_t         phoPFNeuIso;
   Float_t         phoHoverE;
   Float_t         phoSigmaIEtaIEta;
   

   // List of branches
   TBranch        *b_eta;   //!
   TBranch        *b_pt;   //!
   TBranch        *b_phi;   //!
   TBranch        *b_etaWidth;   //!
   TBranch        *b_sieie;   //!
   TBranch        *b_Nseedcrys;   //!
   TBranch        *b_NcrysFracAbove;   //!
   TBranch        *b_NClus;   //!
   TBranch        *b_e2x2;   //!
   TBranch        *b_e5x5;   //!
   TBranch        *b_detaMid;   //!
   TBranch        *b_sigmaEta;   //!
   TBranch        *b_seeMid;   //!
   TBranch        *b_nVtx;   //!
   TBranch        *b_Eseed;   //!
   TBranch        *b_Ecrys;   //!
   TBranch        *b_EMcrys;   //!
   TBranch        *b_PhoisPrompt;   //!

   ShowerSh(TTree *tree=0);
   virtual ~ShowerSh();
   virtual Int_t    Cut(Long64_t entry);
   virtual Int_t    GetEntry(Long64_t entry);
   virtual Long64_t LoadTree(Long64_t entry);
   virtual void     Init(TTree *tree);
   virtual void     Loop();
   virtual Bool_t   Notify();
   virtual void     Show(Long64_t entry = -1);
   virtual void     ROC_builder(int reg,int pu);
   virtual void     Train_TreeM(int reg,double EFFAr[7][3]);


};

#endif

#ifdef ShowerSh_cxx
ShowerSh::ShowerSh(TTree *tree) : fChain(0) 
{
// if parameter tree is not specified (or zero), connect the file
// used to generate this class and read the Tree.
   if (tree == 0) {
      TFile *f = (TFile*)gROOT->GetListOfFiles()->FindObject("Clus.root");
      if (!f || !f->IsOpen()) {
         f = new TFile("Clus.root");
      }
      f->GetObject("/demo/photon_tree",tree);

   }
   Init(tree);
}

ShowerSh::~ShowerSh()
{
   if (!fChain) return;
   delete fChain->GetCurrentFile();
}

Int_t ShowerSh::GetEntry(Long64_t entry)
{
// Read contents of entry.
   if (!fChain) return 0;
   return fChain->GetEntry(entry);
}
Long64_t ShowerSh::LoadTree(Long64_t entry)
{
// Set the environment to read one entry
   if (!fChain) return -5;
   Long64_t centry = fChain->LoadTree(entry);
   if (centry < 0) return centry;
   if (fChain->GetTreeNumber() != fCurrent) {
      fCurrent = fChain->GetTreeNumber();
      Notify();
   }
   return centry;
}

void ShowerSh::Init(TTree *tree)
{
   // The Init() function is called when the selector needs to initialize
   // a new tree or chain. Typically here the branch addresses and branch
   // pointers of the tree will be set.
   // It is normally not necessary to make changes to the generated
   // code, but the routine can be extended by the user if needed.
   // Init() will be called many times when running on PROOF
   // (once per file to be processed).

   // Set object pointer
   sieie = 0;
   Ecrys = 0;
   // Set branch addresses and branch pointers
   if (!tree) return;
   fChain = tree;
   fCurrent = -1;
   fChain->SetMakeClass(1);

   fChain->SetBranchAddress("eta", &eta, &b_eta);
   fChain->SetBranchAddress("pt", &pt, &b_pt);
   fChain->SetBranchAddress("phi", &phi, &b_phi);
   fChain->SetBranchAddress("etaWidth", &etaWidth, &b_etaWidth);
   fChain->SetBranchAddress("sieie", &sieie, &b_sieie);
   fChain->SetBranchAddress("Nseedcrys", &Nseedcrys, &b_Nseedcrys);
   fChain->SetBranchAddress("NcrysFracAbove", &NcrysFracAbove, &b_NcrysFracAbove);
   fChain->SetBranchAddress("NClus", &NClus, &b_NClus);
   fChain->SetBranchAddress("e2x2", &e2x2, &b_e2x2);
   fChain->SetBranchAddress("e5x5", &e5x5, &b_e5x5);
   fChain->SetBranchAddress("detaMid", &detaMid, &b_detaMid);
   fChain->SetBranchAddress("sigmaEta", &sigmaEta, &b_sigmaEta);
   fChain->SetBranchAddress("seeMid", &seeMid, &b_seeMid);
   fChain->SetBranchAddress("nVtx", &nVtx, &b_nVtx);
   fChain->SetBranchAddress("Eseed", &Eseed, &b_Eseed);
   fChain->SetBranchAddress("Ecrys", &Ecrys, &b_Ecrys);
   fChain->SetBranchAddress("EMcrys", &EMcrys, &b_EMcrys);
   fChain->SetBranchAddress("PhoisPrompt", &PhoisPrompt, &b_PhoisPrompt);
   Notify();
}

Bool_t ShowerSh::Notify()
{
   // The Notify() function is called when a new file is opened. This
   // can be either for a new TTree in a TChain or when when a new TTree
   // is started when using PROOF. It is normally not necessary to make changes
   // to the generated code, but the routine can be extended by the
   // user if needed. The return value is currently not used.

   return kTRUE;
}

void ShowerSh::Show(Long64_t entry)
{
// Print contents of entry.
// If entry is not specified, print current entry
   if (!fChain) return;
   fChain->Show(entry);
}
Int_t ShowerSh::Cut(Long64_t entry)
{
// This function may be called from Loop.
// returns  1 if entry is accepted.
// returns -1 otherwise.
   return 1;
}
#endif // #ifdef ShowerSh_cxx
