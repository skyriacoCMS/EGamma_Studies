//////////////////////////////////////////////////////////
// This class has been automatically generated on
// Sat Sep 13 18:16:27 2014 by ROOT version 5.34/10
// from TTree sig/Signal Shapes 
// found on file: ClusterShapes.root
//////////////////////////////////////////////////////////

#ifndef ShSt_h
#define ShSt_h

#include <TROOT.h>
#include <TChain.h>
#include <TFile.h>
#include <cstdlib>
#include <iostream>


// Header file for the classes stored in the TTree if any.
#include <vector>

// Fixed size dimensions of array or collections stored in the TTree if any.

class ShSt {
public :
   TTree          *fChain;   //!pointer to the analyzed TTree or TChain
   Int_t           fCurrent; //!current Tree number in a TChain

   // Declaration of leaf types
   Float_t         eta;
   Float_t         pt;
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

   // List of branches
   TBranch        *b_eta;   //!
   TBranch        *b_pt;   //!
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

   ShSt(TTree *tree=0);
   virtual ~ShSt();
   virtual Int_t    Cut(Long64_t entry);
   virtual Int_t    GetEntry(Long64_t entry);
   virtual Long64_t LoadTree(Long64_t entry);
   virtual void     Init(TTree *tree);
   virtual void     Loop();
   virtual Bool_t   Notify();
   virtual void     Show(Long64_t entry = -1);
};

#endif

#ifdef ShSt_cxx
ShSt::ShSt(TTree *tree) : fChain(0) 
{
// if parameter tree is not specified (or zero), connect the file
// used to generate this class and read the Tree.
   if (tree == 0) {
      TFile *f = (TFile*)gROOT->GetListOfFiles()->FindObject("ClusterShapes.root");
      if (!f || !f->IsOpen()) {
         f = new TFile("ClusterShapes.root");
      }
      f->GetObject("sig",tree);

   }
   Init(tree);
}

ShSt::~ShSt()
{
   if (!fChain) return;
   delete fChain->GetCurrentFile();
}

Int_t ShSt::GetEntry(Long64_t entry)
{
// Read contents of entry.
   if (!fChain) return 0;
   return fChain->GetEntry(entry);
}
Long64_t ShSt::LoadTree(Long64_t entry)
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

void ShSt::Init(TTree *tree)
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
   Notify();
}

Bool_t ShSt::Notify()
{
   // The Notify() function is called when a new file is opened. This
   // can be either for a new TTree in a TChain or when when a new TTree
   // is started when using PROOF. It is normally not necessary to make changes
   // to the generated code, but the routine can be extended by the
   // user if needed. The return value is currently not used.

   return kTRUE;
}

void ShSt::Show(Long64_t entry)
{
// Print contents of entry.
// If entry is not specified, print current entry
   if (!fChain) return;
   fChain->Show(entry);
}
Int_t ShSt::Cut(Long64_t entry)
{
// This function may be called from Loop.
// returns  1 if entry is accepted.
// returns -1 otherwise.
   return 1;
}
#endif // #ifdef ShSt_cxx
