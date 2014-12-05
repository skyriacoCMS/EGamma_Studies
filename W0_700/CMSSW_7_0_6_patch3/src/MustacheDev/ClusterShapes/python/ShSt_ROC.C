#include <TH2.h>
#include <TStyle.h>
#include <TCanvas.h>

void ShowerSh::ROC_builder(int reg,int pu)
{
   if (fChain == 0) return;


   if(reg == 0 && pu == 0) TFile *f1 = new TFile("ROC_histos_All.root","recreate");
   if(reg == 1 && pu == 1) TFile *f2 = new TFile("ROC_histos_BAR_highPU.root","recreate");
   if(reg == 2 && pu == 1) TFile *f3 = new TFile("ROC_histos_END_highPU.root","recreate");
   if(reg == 1 && pu == 2) TFile *f4 = new TFile("ROC_histos_BAR_lowPu.root","recreate");
   if(reg == 2 && pu == 2) TFile *f5 = new TFile("ROC_histos_END_lowPu.root","recreate");

   TTree *t_S = new TTree("t_S","Signal_Tree");
   TTree *t_B = new TTree("t_B","Signal_Tree");
   
   TH1F *PercS = new TH1F("PercS","percentages % ",100,0,100);
   TH1F *PercSL = new TH1F("PercSL","percentages % ",100,0,100);
   
   TH1F *PercSg = new TH1F("PercSg","percentages % ",100,0,100);
   TH1F *PercBg = new TH1F("PercBg","percentages % ",100,0,100);

   TH1F *PercB = new TH1F("PercB","percentages % ",100,0,100);
   TH1F *PercBL = new TH1F("PercBL","percentages % ",100,0,100);

   TH1F *Vert = new TH1F("Vert","Vertices",100,0,100);
   TH1F *Pts = new TH1F("Pts","signal pt ",100,0,100);
   TH1F *Ptb = new TH1F("Ptb","background pt ",100,0,100);
   TH1F *Ptsu = new TH1F("Ptsu","signal pt unweighted     ",100,0,100);
   TH1F *Ptbu = new TH1F("Ptbu","background pt unweighted ",100,0,100);

   //--------------------------------------------------------------    
   TH1F *wa37 = new TH1F("wa37"," sieie  ",1000,0,0.1);
   TH1F *wa38 = new TH1F("wa38","percentages % ",1000,0,0.1);
   TH1F *wa39 = new TH1F("wa39","percentages % ",1000,0,0.1);
   TH1F *wa40 = new TH1F("wa40","percentages % ",1000,0,0.1);
   TH1F *wa41 = new TH1F("wa41","percentages % ",1000,0,0.1);
   TH1F *wa42 = new TH1F("wa42","percentages % ",1000,0,0.1);
   TH1F *wa43 = new TH1F("wa43","percentages % ",1000,0,0.1);
   TH1F *wa44 = new TH1F("wa44","percentages % ",1000,0,0.1);
   TH1F *wa45 = new TH1F("wa45","percentages % ",1000,0,0.1);
   TH1F *wa46 = new TH1F("wa46","percentages % ",1000,0,0.1);
   TH1F *wa47 = new TH1F("wa47","percentages % ",1000,0,0.1);
   TH1F *wa48 = new TH1F("wa48","percentages % ",1000,0,0.1);
   TH1F *wa49 = new TH1F("wa49","percentages % ",1000,0,0.1);
   TH1F *wa50 = new TH1F("wa50","percentages % ",1000,0,0.1);
   TH1F *wa51 = new TH1F("wa51","percentages % ",1000,0,0.1);
   TH1F *wa52 = new TH1F("wa52","percentages % ",1000,0,0.1);
   TH1F *wa53 = new TH1F("wa53","percentages % ",1000,0,0.1);
   TH1F *wa54 = new TH1F("wa54","percentages % ",1000,0,0.1);
   TH1F *wa55 = new TH1F("wa55","percentages % ",1000,0,0.1);
   TH1F *wa56 = new TH1F("wa56","percentages % ",1000,0,0.1);
   TH1F *wa57 = new TH1F("wa57","percentages % ",1000,0,0.1);


   TH1F *wa37b = new TH1F("wa37b"," sieie  ",1000,0,0.1);
   TH1F *wa38b = new TH1F("wa38b","percentages % ",1000,0,0.1);
   TH1F *wa39b = new TH1F("wa39b","percentages % ",1000,0,0.1);
   TH1F *wa40b = new TH1F("wa40b","percentages % ",1000,0,0.1);
   TH1F *wa41b = new TH1F("wa41b","percentages % ",1000,0,0.1);
   TH1F *wa42b = new TH1F("wa42b","percentages % ",1000,0,0.1);
   TH1F *wa43b = new TH1F("wa43b","percentages % ",1000,0,0.1);
   TH1F *wa44b = new TH1F("wa44b","percentages % ",1000,0,0.1);
   TH1F *wa45b = new TH1F("wa45b","percentages % ",1000,0,0.1);
   TH1F *wa46b = new TH1F("wa46b","percentages % ",1000,0,0.1);
   TH1F *wa47b = new TH1F("wa47b","percentages % ",1000,0,0.1);
   TH1F *wa48b = new TH1F("wa48b","percentages % ",1000,0,0.1);
   TH1F *wa49b = new TH1F("wa49b","percentages % ",1000,0,0.1);
   TH1F *wa50b = new TH1F("wa50b","percentages % ",1000,0,0.1);
   TH1F *wa51b = new TH1F("wa51b","percentages % ",1000,0,0.1);
   TH1F *wa52b = new TH1F("wa52b","percentages % ",1000,0,0.1);
   TH1F *wa53b = new TH1F("wa53b","percentages % ",1000,0,0.1);
   TH1F *wa54b = new TH1F("wa54b","percentages % ",1000,0,0.1);
   TH1F *wa55b = new TH1F("wa55b","percentages % ",1000,0,0.1);
   TH1F *wa56b = new TH1F("wa56b","percentages % ",1000,0,0.1);
   TH1F *wa57b = new TH1F("wa57b","percentages % ",1000,0,0.1);


   //---------------------------------------------------------------





 
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

   TH1F *w37b = new TH1F("w37b"," sieie  ",1000,0,0.1);
   TH1F *w38b = new TH1F("w38b","percentages % ",1000,0,0.1);
   TH1F *w39b = new TH1F("w39b","percentages % ",1000,0,0.1);
   TH1F *w40b = new TH1F("w40b","percentages % ",1000,0,0.1);
   TH1F *w41b = new TH1F("w41b","percentages % ",1000,0,0.1);
   TH1F *w42b = new TH1F("w42b","percentages % ",1000,0,0.1);
   TH1F *w43b = new TH1F("w43b","percentages % ",1000,0,0.1);
   TH1F *w44b = new TH1F("w44b","percentages % ",1000,0,0.1);
   TH1F *w45b = new TH1F("w45b","percentages % ",1000,0,0.1);
   TH1F *w46b = new TH1F("w46b","percentages % ",1000,0,0.1);
   TH1F *w47b = new TH1F("w47b","percentages % ",1000,0,0.1);
   TH1F *w48b = new TH1F("w48b","percentages % ",1000,0,0.1);
   TH1F *w49b = new TH1F("w49b","percentages % ",1000,0,0.1);
   TH1F *w50b = new TH1F("w50b","percentages % ",1000,0,0.1);
   TH1F *w51b = new TH1F("w51b","percentages % ",1000,0,0.1);
   TH1F *w52b = new TH1F("w52b","percentages % ",1000,0,0.1);
   TH1F *w53b = new TH1F("w53b","percentages % ",1000,0,0.1);
   TH1F *w54b = new TH1F("w54b","percentages % ",1000,0,0.1);
   TH1F *w55b = new TH1F("w55b","percentages % ",1000,0,0.1);
   TH1F *w56b = new TH1F("w56b","percentages % ",1000,0,0.1);
   TH1F *w57b = new TH1F("w57b","percentages % ",1000,0,0.1);

   TH1F *lw37 = new TH1F("lw37"," sieie  ",1000,0,0.1);
   TH1F *lw38 = new TH1F("lw38","percentages % ",1000,0,0.1);
   TH1F *lw39 = new TH1F("lw39","percentages % ",1000,0,0.1);
   TH1F *lw40 = new TH1F("lw40","percentages % ",1000,0,0.1);
   TH1F *lw41 = new TH1F("lw41","percentages % ",1000,0,0.1);
   TH1F *lw42 = new TH1F("lw42","percentages % ",1000,0,0.1);
   TH1F *lw43 = new TH1F("lw43","percentages % ",1000,0,0.1);
   TH1F *lw44 = new TH1F("lw44","percentages % ",1000,0,0.1);
   TH1F *lw45 = new TH1F("lw45","percentages % ",1000,0,0.1);
   TH1F *lw46 = new TH1F("lw46","percentages % ",1000,0,0.1);
   TH1F *lw47 = new TH1F("lw47","percentages % ",1000,0,0.1);
   TH1F *lw48 = new TH1F("lw48","percentages % ",1000,0,0.1);
   TH1F *lw49 = new TH1F("lw49","percentages % ",1000,0,0.1);
   TH1F *lw50 = new TH1F("lw50","percentages % ",1000,0,0.1);
   TH1F *lw51 = new TH1F("lw51","percentages % ",1000,0,0.1);
   TH1F *lw52 = new TH1F("lw52","percentages % ",1000,0,0.1);
   TH1F *lw53 = new TH1F("lw53","percentages % ",1000,0,0.1);
   TH1F *lw54 = new TH1F("lw54","percentages % ",1000,0,0.1);
   TH1F *lw55 = new TH1F("lw55","percentages % ",1000,0,0.1);
   TH1F *lw56 = new TH1F("lw56","percentages % ",1000,0,0.1);
   TH1F *lw57 = new TH1F("lw57","percentages % ",1000,0,0.1);

   TH1F *lw37b = new TH1F("lw37b"," sieie  ",1000,0,0.1);
   TH1F *lw38b = new TH1F("lw38b","percentages % ",1000,0,0.1);
   TH1F *lw39b = new TH1F("lw39b","percentages % ",1000,0,0.1);
   TH1F *lw40b = new TH1F("lw40b","percentages % ",1000,0,0.1);
   TH1F *lw41b = new TH1F("lw41b","percentages % ",1000,0,0.1);
   TH1F *lw42b = new TH1F("lw42b","percentages % ",1000,0,0.1);
   TH1F *lw43b = new TH1F("lw43b","percentages % ",1000,0,0.1);
   TH1F *lw44b = new TH1F("lw44b","percentages % ",1000,0,0.1);
   TH1F *lw45b = new TH1F("lw45b","percentages % ",1000,0,0.1);
   TH1F *lw46b = new TH1F("lw46b","percentages % ",1000,0,0.1);
   TH1F *lw47b = new TH1F("lw47b","percentages % ",1000,0,0.1);
   TH1F *lw48b = new TH1F("lw48b","percentages % ",1000,0,0.1);
   TH1F *lw49b = new TH1F("lw49b","percentages % ",1000,0,0.1);
   TH1F *lw50b = new TH1F("lw50b","percentages % ",1000,0,0.1);
   TH1F *lw51b = new TH1F("lw51b","percentages % ",1000,0,0.1);
   TH1F *lw52b = new TH1F("lw52b","percentages % ",1000,0,0.1);
   TH1F *lw53b = new TH1F("lw53b","percentages % ",1000,0,0.1);
   TH1F *lw54b = new TH1F("lw54b","percentages % ",1000,0,0.1);
   TH1F *lw55b = new TH1F("lw55b","percentages % ",1000,0,0.1);
   TH1F *lw56b = new TH1F("lw56b","percentages % ",1000,0,0.1);
   TH1F *lw57b = new TH1F("lw57b","percentages % ",1000,0,0.1);

   Long64_t nentries = fChain->GetEntriesFast();
   Long64_t nbytes = 0, nb = 0;
   
   //first a loop to detrmine a pt weight for each case:

   cout<<"Total number of Photons :"<<nentries<<endl;

   
  for (Long64_t jentry=0; jentry<nentries;jentry++) {
      Long64_t ientry = LoadTree(jentry);
      if (ientry < 0) break;
      nb = fChain->GetEntry(jentry);   nbytes += nb;
      // if (Cut(ientry) < 0) continue;
      
      if(pt < 15) continue; 
      if(e5x5 < 0) continue;

      if(reg == 1 && pu == 1 && ( fabs(eta) >  1.47 || nVtx < 30) )continue; 
      if(reg == 2 && pu == 1 && ( fabs(eta) <  1.47 || nVtx < 30) )continue; 
      
      if(reg == 1 && pu == 2 && ( fabs(eta) >  1.47 || nVtx > 30 ) )continue; 
      if(reg == 2 && pu == 2 && ( fabs(eta) <  1.47 || nVtx > 30 ) )continue; 
      
      Vert->Fill(nVtx);


      
      if(PhoisPrompt == 1){
	Ptsu->Fill(pt);	
      }
      
      if(PhoisPrompt == 0){
	Ptbu->Fill(pt);	
      }

  }

  cout<<"finished first loop"<<endl;

  for (Long64_t jentry=0; jentry<nentries;jentry++) {
      Long64_t ientry = LoadTree(jentry);
      if (ientry < 0) break;
      nb = fChain->GetEntry(jentry);   nbytes += nb;
      // if (Cut(ientry) < 0) continue;
      
      

      if(pt < 15) continue; 
      if(e5x5 < 0) continue;

      


      if(reg == 1 && pu == 1 && ( fabs(eta) >  1.47 || nVtx < 30) )continue; 
      if(reg == 2 && pu == 1 && ( fabs(eta) <  1.47 || nVtx < 30) )continue; 
      
      if(reg == 1 && pu == 2 && ( fabs(eta) >  1.47 || nVtx > 30 ) )continue; 
      if(reg == 2 && pu == 2 && ( fabs(eta) <  1.47 || nVtx > 30 ) )continue; 


      for(uint i  = 0; i < (*Ecrys).size();i++){
	int bin = Ptsu->FindBin(pt);
	
	float weight = 1./(Ptsu->GetBinContent(bin));
	
	
	if(PhoisPrompt) PercSg->Fill((*Ecrys)[i]/Eseed*100,weight);
	if(pt < 20 && PhoisPrompt )PercSL->Fill((*Ecrys)[i]/Eseed*100,weight);
	if(pt > 30 && PhoisPrompt )PercS->Fill((*Ecrys)[i]/Eseed*100,weight);
	
	
	weight = 1./(Ptbu->GetBinContent(bin));
	if(PhoisPrompt == 0) PercBg->Fill((*Ecrys)[i]/Eseed*100.0,weight);
	if(pt < 20 && PhoisPrompt == 0 )PercBL->Fill((*Ecrys)[i]/Eseed*100,weight);
	if(pt > 30 && PhoisPrompt == 0 )PercB->Fill((*Ecrys)[i]/Eseed*100,weight);
	

	
      }
      






      if(PhoisPrompt == 1){


	int bin = Ptsu->FindBin(pt);
	float weight = 1./(Ptsu->GetBinContent(bin));
	Pts->Fill(pt,weight);

	weight =1; 



	wa37->Fill((*sieie)[0],weight);
	wa38->Fill((*sieie)[1],weight);
	wa39->Fill((*sieie)[2],weight);
	wa40->Fill((*sieie)[3],weight);
	wa41->Fill((*sieie)[4],weight);
	wa42->Fill((*sieie)[5],weight);
	wa43->Fill((*sieie)[6],weight);
	wa44->Fill((*sieie)[7],weight);
	wa45->Fill((*sieie)[8],weight);
	wa46->Fill((*sieie)[9],weight);
	wa47->Fill((*sieie)[10],weight);
	wa48->Fill((*sieie)[11],weight);
	wa49->Fill((*sieie)[12],weight);
	wa50->Fill((*sieie)[13],weight);
	wa51->Fill((*sieie)[14],weight);
	wa52->Fill((*sieie)[15],weight);
	wa53->Fill((*sieie)[16],weight);
	wa54->Fill((*sieie)[17],weight);
	wa55->Fill((*sieie)[18],weight);
	wa56->Fill((*sieie)[19],weight);
	wa57->Fill((*sieie)[20],weight);
	

	






	
	if(pt > 30){
 
	  
	w37->Fill((*sieie)[0],weight);
	w38->Fill((*sieie)[1],weight);
	w39->Fill((*sieie)[2],weight);
	w40->Fill((*sieie)[3],weight);
	w41->Fill((*sieie)[4],weight);
	w42->Fill((*sieie)[5],weight);
	w43->Fill((*sieie)[6],weight);
	w44->Fill((*sieie)[7],weight);
	w45->Fill((*sieie)[8],weight);
	w46->Fill((*sieie)[9],weight);
	w47->Fill((*sieie)[10],weight);
	w48->Fill((*sieie)[11],weight);
	w49->Fill((*sieie)[12],weight);
	w50->Fill((*sieie)[13],weight);
	w51->Fill((*sieie)[14],weight);
	w52->Fill((*sieie)[15],weight);
	w53->Fill((*sieie)[16],weight);
	w54->Fill((*sieie)[17],weight);
	w55->Fill((*sieie)[18],weight);
	w56->Fill((*sieie)[19],weight);
	w57->Fill((*sieie)[20],weight);
	  
	}

	 
	if(pt < 20){
	  
	  
	  lw37->Fill((*sieie)[0],weight);
	  lw38->Fill((*sieie)[1],weight);
	  lw39->Fill((*sieie)[2],weight);
	  lw40->Fill((*sieie)[3],weight);
	  lw41->Fill((*sieie)[4],weight);
	  lw42->Fill((*sieie)[5],weight);
	  lw43->Fill((*sieie)[6],weight);
	  lw44->Fill((*sieie)[7],weight);
	  lw45->Fill((*sieie)[8],weight);
	  lw46->Fill((*sieie)[9],weight);
	  lw47->Fill((*sieie)[10],weight);
	  lw48->Fill((*sieie)[11],weight);
	  lw49->Fill((*sieie)[12],weight);
	  lw50->Fill((*sieie)[13],weight);
	  lw51->Fill((*sieie)[14],weight);
	  lw52->Fill((*sieie)[15],weight);
	  lw53->Fill((*sieie)[16],weight);
	  lw54->Fill((*sieie)[17],weight);
	  lw55->Fill((*sieie)[18],weight);
	  lw56->Fill((*sieie)[19],weight);
	  lw57->Fill((*sieie)[20],weight);
	  
	}
      }
      
      
      if(PhoisPrompt == 0){

	int bin = Ptbu->FindBin(pt);
	float weight = 1./(Ptbu->GetBinContent(bin));
	Ptb->Fill(pt,weight);
	weight =1; 
	
	
	wa37b->Fill((*sieie)[0],weight);
	wa38b->Fill((*sieie)[1],weight);
	wa39b->Fill((*sieie)[2],weight);
	wa40b->Fill((*sieie)[3],weight);
	wa41b->Fill((*sieie)[4],weight);
	wa42b->Fill((*sieie)[5],weight);
	wa43b->Fill((*sieie)[6],weight);
	wa44b->Fill((*sieie)[7],weight);
	wa45b->Fill((*sieie)[8],weight);
	wa46b->Fill((*sieie)[9],weight);
	wa47b->Fill((*sieie)[10],weight);
	wa48b->Fill((*sieie)[11],weight);
	wa49b->Fill((*sieie)[12],weight);
	wa50b->Fill((*sieie)[13],weight);
	wa51b->Fill((*sieie)[14],weight);
	wa52b->Fill((*sieie)[15],weight);
	wa53b->Fill((*sieie)[16],weight);
	wa54b->Fill((*sieie)[17],weight);
	wa55b->Fill((*sieie)[18],weight);
	wa56b->Fill((*sieie)[19],weight);
	wa57b->Fill((*sieie)[20],weight);
	


	


	if(pt > 30){
	  
	  w37b->Fill((*sieie)[0],weight);
	  w38b->Fill((*sieie)[1],weight);
	  w39b->Fill((*sieie)[2],weight);
	  w40b->Fill((*sieie)[3],weight);
	  w41b->Fill((*sieie)[4],weight);
	  w42b->Fill((*sieie)[5],weight);
	  w43b->Fill((*sieie)[6],weight);
	  w44b->Fill((*sieie)[7],weight);
	  w45b->Fill((*sieie)[8],weight);
	  w46b->Fill((*sieie)[9],weight);
	  w47b->Fill((*sieie)[10],weight);
	  w48b->Fill((*sieie)[11],weight);
	  w49b->Fill((*sieie)[12],weight);
	  w50b->Fill((*sieie)[13],weight);
	  w51b->Fill((*sieie)[14],weight);
	  w52b->Fill((*sieie)[15],weight);
	  w53b->Fill((*sieie)[16],weight);
	  w54b->Fill((*sieie)[17],weight);
	  w55b->Fill((*sieie)[18],weight);
	  w56b->Fill((*sieie)[19],weight);
	  w57b->Fill((*sieie)[20],weight);
	  
	}

	
	if( pt < 20 ){

	  
	  lw37b->Fill((*sieie)[0],weight);
	  lw38b->Fill((*sieie)[1],weight);
	  lw39b->Fill((*sieie)[2],weight);
	lw40b->Fill((*sieie)[3],weight);
	lw41b->Fill((*sieie)[4],weight);
	lw42b->Fill((*sieie)[5],weight);
	lw43b->Fill((*sieie)[6],weight);
	lw44b->Fill((*sieie)[7],weight);
	lw45b->Fill((*sieie)[8],weight);
	lw46b->Fill((*sieie)[9],weight);
	lw47b->Fill((*sieie)[10],weight);
	lw48b->Fill((*sieie)[11],weight);
	lw49b->Fill((*sieie)[12],weight);
	lw50b->Fill((*sieie)[13],weight);
	lw51b->Fill((*sieie)[14],weight);
	lw52b->Fill((*sieie)[15],weight);
	lw53b->Fill((*sieie)[16],weight);
	lw54b->Fill((*sieie)[17],weight);
	lw55b->Fill((*sieie)[18],weight);
	lw56b->Fill((*sieie)[19],weight);
	lw57b->Fill((*sieie)[20],weight);

	}
	

      
      }

   }


   Vert->Write();
 
   
   PercS->Write();
   PercSL->Write();
   PercB->Write();
   PercBL->Write();
   
   PercSg->Write();
   PercBg->Write();



   Pts->Write();
   Ptb->Write();

   Ptsu->Write();
   Ptbu->Write();
 
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


   wa37->Write();
   wa38->Write();
   wa39->Write();
   wa40->Write();
   wa41->Write();
   wa42->Write();
   wa43->Write();
   wa44->Write();
   wa45->Write();
   wa46->Write();
   wa47->Write();
   wa48->Write();
   wa49->Write();
   wa50->Write();
   wa51->Write();
   wa52->Write();
   wa53->Write();
   wa54->Write();
   wa55->Write();
   wa56->Write();
   wa57->Write();


   
   wa37b->Write();
   wa38b->Write();
   wa39b->Write();
   wa40b->Write();
   wa41b->Write();
   wa42b->Write();
   wa43b->Write();
   wa44b->Write();
   wa45b->Write();
   wa46b->Write();
   wa47b->Write();
   wa48b->Write();
   wa49b->Write();
   wa50b->Write();
   wa51b->Write();
   wa52b->Write();
   wa53b->Write();
   wa54b->Write();
   wa55b->Write();
   wa56b->Write();
   wa57b->Write();


   

   lw37->Write();
   lw38->Write();
   lw39->Write();
   lw40->Write();
   lw41->Write();
   lw42->Write();
   lw43->Write();
   lw44->Write();
   lw45->Write();
   lw46->Write();
   lw47->Write();
   lw48->Write();
   lw49->Write();
   lw50->Write();
   lw51->Write();
   lw52->Write();
   lw53->Write();
   lw54->Write();
   lw55->Write();
   lw56->Write();
   lw57->Write();
   

   w37b->Write();
   w38b->Write();
   w39b->Write();
   w40b->Write();
   w41b->Write();
   w42b->Write();
   w43b->Write();
   w44b->Write();
   w45b->Write();
   w46b->Write();
   w47b->Write();
   w48b->Write();
   w49b->Write();
   w50b->Write();
   w51b->Write();
   w52b->Write();
   w53b->Write();
   w54b->Write();
   w55b->Write();
   w56b->Write();
   w57b->Write();
   

   lw37b->Write();
   lw38b->Write();
   lw39b->Write();
   lw40b->Write();
   lw41b->Write();
   lw42b->Write();
   lw43b->Write();
   lw44b->Write();
   lw45b->Write();
   lw46b->Write();
   lw47b->Write();
   lw48b->Write();
   lw49b->Write();
   lw50b->Write();
   lw51b->Write();
   lw52b->Write();
   lw53b->Write();
   lw54b->Write();
   lw55b->Write();
   lw56b->Write();
   lw57b->Write();

}

