#define ShSt_cxx
#include "ShSt.h"
#include <TH2.h>
#include <TStyle.h>
#include <TCanvas.h>

void ShSt::Loop()
{
   if (fChain == 0) return;

   TFile *f1 = new TFile("Histos.root","recreate");
   
   
   TH1F *Perc = new TH1F("Perc","percentages % ",100,0,100);



   TH1F *w37 = new TH1F("w37"," sieie  ",1000,0,0.1);
   TH1F *w38 = new TH1F("w38","percentages % ",1000,0,0.1);
   TH1F *w39 = new TH1F("w39","percentages % ",1000,0,0.1);
   TH1F *w40 = new TH1F("w40","percentages % ",1000,0,0.1);
   TH1F *w41 = new TH1F("w41","percentages % ",1000,0,0.1);
   TH1F *w42 = new TH1F("w42","percentages % ",1000,0,0.1);
   TH1F *w43 = new TH1F("w43","percentages % ",1000,0,0.1);
   TH1F *w44 = new TH1F("w44","percentages % ",1000,0,0.1);
   TH1F *w45 = new TH1F("w45","percentages % ",1000,0,0.1);
   TH1F *w46 = new TH1F("w46","percentages % ",1000,0,0.1);
   TH1F *w47 = new TH1F("w47","percentages % ",1000,0,0.1);
   TH1F *w48 = new TH1F("w48","percentages % ",1000,0,0.1);
   TH1F *w49 = new TH1F("w49","percentages % ",1000,0,0.1);
   TH1F *w50 = new TH1F("w50","percentages % ",1000,0,0.1);
   TH1F *w51 = new TH1F("w51","percentages % ",1000,0,0.1);
   TH1F *w52 = new TH1F("w52","percentages % ",1000,0,0.1);
   TH1F *w53 = new TH1F("w53","percentages % ",1000,0,0.1);
   TH1F *w54 = new TH1F("w54","percentages % ",1000,0,0.1);
   TH1F *w55 = new TH1F("w55","percentages % ",1000,0,0.1);
   TH1F *w56 = new TH1F("w56","percentages % ",1000,0,0.1);
   TH1F *w57 = new TH1F("w57","percentages % ",1000,0,0.1);
  
       


   Long64_t nentries = fChain->GetEntriesFast();
   Long64_t nbytes = 0, nb = 0;
   for (Long64_t jentry=0; jentry<nentries;jentry++) {
      Long64_t ientry = LoadTree(jentry);
      if (ientry < 0) break;
      nb = fChain->GetEntry(jentry);   nbytes += nb;
      // if (Cut(ientry) < 0) continue;
      
      
      for(int i  = 0; i < (*Ecrys).size();i++){
	

	Perc->Fill((*Ecrys)[i]/Eseed*100);
	

      }



      if(fabs(eta) < 1.47){

      w37->Fill((*sieie)[0]);
      w38->Fill((*sieie)[0]);
      w39->Fill((*sieie)[1]);
      w40->Fill((*sieie)[2]);
      w41->Fill((*sieie)[3]);
      w42->Fill((*sieie)[4]);
      w43->Fill((*sieie)[5]);
      w44->Fill((*sieie)[6]);
      w45->Fill((*sieie)[7]);
      w46->Fill((*sieie)[8]);
      w47->Fill((*sieie)[9]);
      w48->Fill((*sieie)[10]);
      w49->Fill((*sieie)[11]);
      w50->Fill((*sieie)[12]);
      w51->Fill((*sieie)[13]);
      w52->Fill((*sieie)[14]);
      w53->Fill((*sieie)[15]);
      w54->Fill((*sieie)[16]);
      w55->Fill((*sieie)[17]);
      w56->Fill((*sieie)[18]);
      w57->Fill((*sieie)[19]);
      }



   }

   Perc->Write();
   w37->Write();
   w38->Write();
   w39->Write();
   w40->Write();
   w41->Write();
   w42->Write();
   w43->Write();
   w44->Write();
   w45->Write();
   w46->Write();
   w47->Write();
   w48->Write();
   w49->Write();
   w50->Write();
   w51->Write();
   w52->Write();
   w53->Write();
   w54->Write();
   w55->Write();
   w56->Write();
   w57->Write();
   
}

