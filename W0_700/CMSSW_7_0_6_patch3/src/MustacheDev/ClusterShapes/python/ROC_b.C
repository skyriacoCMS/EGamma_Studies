#include <TGraph.h>

void ROC_b(){





  TFile *f1 = new TFile("ROC_histos_BAR_highPU.root");
  
  
    
  w40->Scale(1./w40->GetEntries()); 
  w40b->Scale(1./w40b->GetEntries()); 
  w41->Scale(1./w41->GetEntries()); 
  w41b->Scale(1./w41b->GetEntries()); 
  w42->Scale(1./w42->GetEntries()); 
  w42b->Scale(1./w42b->GetEntries()); 
  w43->Scale(1./w43->GetEntries()); 
  w43b->Scale(1./w43b->GetEntries()); 
  w44->Scale(1./w44->GetEntries()); 
  w44b->Scale(1./w44b->GetEntries()); 
  w45->Scale(1./w45->GetEntries()); 
  w45b->Scale(1./w45b->GetEntries()); 
  w46->Scale(1./w46->GetEntries()); 
  w46b->Scale(1./w46b->GetEntries()); 
  w47->Scale(1./w47->GetEntries()); 
  w47b->Scale(1./w47b->GetEntries()); 
  w48->Scale(1./w48->GetEntries()); 
  w48b->Scale(1./w48b->GetEntries()); 
  w49->Scale(1./w49->GetEntries()); 
  w49b->Scale(1./w49b->GetEntries()); 




  
  cout<<"ROC CURVE USING FILE :" <<f1->GetName()<<endl; 



  double ef1[1000],ef2[1000],ef3[1000],ef4[1000],ef5[1000],ef6[1000],ef7[1000],ef8[1000],ef9[1000],ef10[1000],ef11[1000],ef12[1000],ef13[1000],ef14[1000],ef15[1000],ef16[1000]; 
 
  double bck1[1000],bck2[1000],bck3[1000],bck4[1000],bck5[1000],bck6[1000],bck7[1000],bck8[1000],bck9[1000],bck10[1000],bck11[1000],bck12[1000],bck13[1000],bck14[1000],bck15[1000],bck16[1000];

  double lef1[1000],lef2[1000],lef3[1000],lef4[1000],lef5[1000],lef6[1000],lef7[1000],lef8[1000],lef9[1000],lef10[1000],lef11[1000],lef12[1000],lef13[1000],lef14[1000],lef15[1000],lef16[1000]; 
 
  double lbck1[1000],lbck2[1000],lbck3[1000],lbck4[1000],lbck5[1000],lbck6[1000],lbck7[1000],lbck8[1000],lbck9[1000],lbck10[1000],lbck11[1000],lbck12[1000],lbck13[1000],lbck14[1000],lbck15[1000],lbck16[1000];
  



  for(int i  = 0; i < 1000;  i ++){
    double xax = 0.1*i/1000; 


    

    int bin = w40->FindBin(xax);
    ef1[i] = w40->Integral(0,bin)*1.0/w40->Integral(0,1000);
    bin = w41->FindBin(xax);
    ef2[i] = w41->Integral(0,bin)*1.0/w41->Integral(0,1000);
    bin = w42->FindBin(xax);
    ef3[i] = w42->Integral(0,bin)*1.0/w42->Integral(0,1000);
    bin = w43->FindBin(xax);
    ef4[i] = w43->Integral(0,bin)*1.0/w43->Integral(0,1000);
    bin = w44->FindBin(xax);
    ef5[i] = w44->Integral(0,bin)*1.0/w44->Integral(0,1000);
    bin = w45->FindBin(xax);
    ef6[i] = w45->Integral(0,bin)*1.0/w45->Integral(0,1000);
    bin = w46->FindBin(xax);
    ef7[i] = w46->Integral(0,bin)*1.0/w46->Integral(0,1000);
    bin = w47->FindBin(xax);
    ef8[i] = w47->Integral(0,bin)*1.0/w47->Integral(0,1000);
    bin = w48->FindBin(xax);
    ef9[i] = w48->Integral(0,bin)*1.0/w48->Integral(0,1000);
    bin = w49->FindBin(xax);
    ef10[i] = w49->Integral(0,bin)*1.0/w49->Integral(0,1000);
    bin = w50->FindBin(xax);
    ef11[i] = w50->Integral(0,bin)*1.0/w50->Integral(0,1000);
    bin = w51->FindBin(xax);
    ef12[i] = w51->Integral(0,bin)*1.0/w51->Integral(0,1000);
    bin = w52->FindBin(xax);
    ef13[i] = w52->Integral(0,bin)*1.0/w52->Integral(0,1000);
    bin = w53->FindBin(xax);
    ef14[i] = w53->Integral(0,bin)*1.0/w53->Integral(0,1000);
    bin = w54->FindBin(xax);
    ef15[i] = w54->Integral(0,bin)*1.0/w54->Integral(0,1000);
    bin = w55->FindBin(xax);
    ef16[i] = w55->Integral(0,bin)*1.0/w55->Integral(0,1000);


    bin = w40b->FindBin(xax);
    bck1[i] =1- w40b->Integral(0,bin)*1.0/w41b->Integral(0,1000);
    bin = w41b->FindBin(xax);
    bck2[i] = 1 -w41b->Integral(0,bin)*1.0/w42b->Integral(0,1000);
    bin = w42b->FindBin(xax);
    bck3[i] = 1-w42b->Integral(0,bin)*1.0/w43b->Integral(0,1000);
    bin = w43b->FindBin(xax);  
    bck4[i] = 1-w43b->Integral(0,bin)*1.0/w44b->Integral(0,1000);
    bin = w44b->FindBin(xax);  
    bck5[i] = 1-w44b->Integral(0,bin)*1.0/w45b->Integral(0,1000);
    bin = w45b->FindBin(xax);   
    bck6[i] = 1-w45b->Integral(0,bin)*1.0/w46b->Integral(0,1000);
    bin = w46b->FindBin(xax);   
    bck7[i] = 1-w46b->Integral(0,bin)*1.0/w47b->Integral(0,1000);
    bin = w47b->FindBin(xax);
    bck8[i] = 1-w47b->Integral(0,bin)*1.0/w48b->Integral(0,1000);
    bin = w48b->FindBin(xax);
    bck9[i] = 1-w48b->Integral(0,bin)*1.0/w49b->Integral(0,1000);
    bin = w49b->FindBin(xax);
    bck10[i] = 1-w49b->Integral(0,bin)*1.0/w50b->Integral(0,1000);
    bin = w50b->FindBin(xax);
    bck11[i] = 1-w50b->Integral(0,bin)*1.0/w50b->Integral(0,1000);
    bin = w51b->FindBin(xax);
    bck12[i] = 1-w51b->Integral(0,bin)*1.0/w50b->Integral(0,1000);
    bin = w52b->FindBin(xax);
    bck13[i] = 1-w52b->Integral(0,bin)*1.0/w50b->Integral(0,1000);
    bin = w53b->FindBin(xax);
    bck14[i] = 1-w53b->Integral(0,bin)*1.0/w50b->Integral(0,1000);
    bin = w54b->FindBin(xax);
    bck15[i] = 1-w54b->Integral(0,bin)*1.0/w50b->Integral(0,1000);
    bin = w55b->FindBin(xax);
    bck16[i] = 1-w55b->Integral(0,bin)*1.0/w50b->Integral(0,1000);



   
    bin = lw40->FindBin(xax);
    lef1[i] = lw40->Integral(0,bin)*1.0/lw40->Integral(0,1000);
    bin = lw41->FindBin(xax);
    lef2[i] = lw41->Integral(0,bin)*1.0/lw41->Integral(0,1000);
    bin = lw42->FindBin(xax);
    lef3[i] = lw42->Integral(0,bin)*1.0/lw42->Integral(0,1000);
    bin = lw43->FindBin(xax);
    lef4[i] = lw43->Integral(0,bin)*1.0/lw43->Integral(0,1000);
    bin = lw44->FindBin(xax);
    lef5[i] = lw44->Integral(0,bin)*1.0/lw44->Integral(0,1000);
    bin = lw45->FindBin(xax);
    lef6[i] = lw45->Integral(0,bin)*1.0/lw45->Integral(0,1000);
    bin = lw46->FindBin(xax);
    lef7[i] = lw46->Integral(0,bin)*1.0/lw46->Integral(0,1000);
    bin = lw47->FindBin(xax);
    lef8[i] = lw47->Integral(0,bin)*1.0/lw47->Integral(0,1000);
    bin = lw48->FindBin(xax);
    lef9[i] = lw48->Integral(0,bin)*1.0/lw48->Integral(0,1000);
    bin = lw49->FindBin(xax);
    lef10[i] = lw49->Integral(0,bin)*1.0/lw49->Integral(0,1000);
    bin = lw50->FindBin(xax);
    lef11[i] = lw50->Integral(0,bin)*1.0/lw50->Integral(0,1000);
    bin = lw51->FindBin(xax);
    lef12[i] = lw51->Integral(0,bin)*1.0/lw51->Integral(0,1000);
    bin = lw52->FindBin(xax);
    lef13[i] = lw52->Integral(0,bin)*1.0/lw52->Integral(0,1000);
    bin = lw53->FindBin(xax);
    lef14[i] = lw53->Integral(0,bin)*1.0/lw53->Integral(0,1000);
    bin = lw54->FindBin(xax);
    lef15[i] = lw54->Integral(0,bin)*1.0/lw54->Integral(0,1000);
    bin = lw55->FindBin(xax);
    lef16[i] = lw55->Integral(0,bin)*1.0/lw55->Integral(0,1000);
    
    
    bin = lw40b->FindBin(xax);
    lbck1[i] = 1-lw40b->Integral(0,bin)*1.0/lw40b->Integral(0,1000);
    



    bin = lw41b->FindBin(xax);
    lbck2[i] = 1-lw41b->Integral(0,bin)*1.0/lw41b->Integral(0,1000);
    bin = lw42b->FindBin(xax);
    lbck3[i] = 1-lw42b->Integral(0,bin)*1.0/lw42b->Integral(0,1000);
    bin = lw43b->FindBin(xax);
    lbck4[i] = 1-lw43b->Integral(0,bin)*1.0/lw43b->Integral(0,1000);
    bin = lw44b->FindBin(xax);
    lbck5[i] = 1-lw44b->Integral(0,bin)*1.0/lw44b->Integral(0,1000);
    bin = lw45b->FindBin(xax);
    lbck6[i] = 1-lw45b->Integral(0,bin)*1.0/lw45b->Integral(0,1000);
    bin = lw46b->FindBin(xax);
    lbck7[i] = 1-lw46b->Integral(0,bin)*1.0/lw46b->Integral(0,1000);
    bin = lw47b->FindBin(xax);
    lbck8[i] = 1-lw47b->Integral(0,bin)*1.0/lw47b->Integral(0,1000);
    bin = lw48b->FindBin(xax);
    lbck9[i] = 1-lw48b->Integral(0,bin)*1.0/lw48b->Integral(0,1000);
    bin = lw49b->FindBin(xax);
    lbck10[i] =1-lw49b->Integral(0,bin)*1.0/lw49b->Integral(0,1000);
    bin = lw50b->FindBin(xax);   
    lbck11[i] = 1-lw50b->Integral(0,bin)*1.0/lw50b->Integral(0,1000);
    bin = lw51b->FindBin(xax);
    lbck12[i] = 1-lw51b->Integral(0,bin)*1.0/lw51b->Integral(0,1000);
    bin = lw52b->FindBin(xax);
    lbck13[i] = 1-lw52b->Integral(0,bin)*1.0/lw52b->Integral(0,1000);
    bin = lw53b->FindBin(xax);
    lbck14[i] = 1-lw53b->Integral(0,bin)*1.0/lw53b->Integral(0,1000);
    bin = lw54b->FindBin(xax);
    lbck15[i] = 1-lw54b->Integral(0,bin)*1.0/lw54b->Integral(0,1000);
    bin = lw55b->FindBin(xax);

    lbck16[i] = 1-lw55b->Integral(0,bin)*1.0/lw55b->Integral(0,1000);


    

  }
  
    cout<<" 50 :  "<<ef11[110]<<" 47 : "<<ef8[110]<<"42 :" <<ef3[110]<<endl;
    cout<<" 50 :  "<<bck11[110]<<" 47 : "<<bck8[110]<<"42 :" <<bck3[110]<<endl;
    cout<<" 50 :  "<<lef11[110]<<" 47 : "<<lef8[110]<<"42 :" <<lef3[110]<<endl;
    cout<<" 50 :  "<<lbck11[110]<<" 47 : "<<lbck8[110]<<"42 :" <<lbck3[110]<<endl;

    TH1F *H_dum0 = new TH1F("H_dum0","",100,0,1);
    TH1F *H_dum1 = new TH1F("H_dum1","",100,0,1);
    TH1F *H_dum2 = new TH1F("H_dum2","",100,0,1);
    TH1F *H_dum3 = new TH1F("H_dum3","",100,0,1);
    TH1F *H_dum4 = new TH1F("H_dum4","",100,0,1);




    TH1F *H_dum5 = new TH1F("H_dum5","",100,0,1);
    TH1F *H_dum6 = new TH1F("H_dum6","",100,0,1);
    TH1F *H_dum7 = new TH1F("H_dum7","",100,0,1);
    TH1F *H_dum8 = new TH1F("H_dum8","",100,0,1);
    TH1F *H_dum9 = new TH1F("H_dum9","",100,0,1);

    TH1F *H_dum10 = new TH1F("H_dum10","",100,0,1);
    TH1F *H_dum11 = new TH1F("H_dum11","",100,0,1);
    TH1F *H_dum12 = new TH1F("H_dum12","",100,0,1);
    TH1F *H_dum13 = new TH1F("H_dum13","",100,0,1);
    TH1F *H_dum14 = new TH1F("H_dum14","",100,0,1);
    TH1F *H_dum15 = new TH1F("H_dum15","",100,0,1);
  
    H_dum0->Fill(0.5); 
    H_dum1->Fill(0.5); 
    H_dum2->Fill(0.5); 
    H_dum3->Fill(0.5); 
    H_dum4->Fill(0.5); 
    H_dum5->Fill(0.5); 
    H_dum6->Fill(0.5); 
    H_dum7->Fill(0.5); 
    H_dum8->Fill(0.5); 
    H_dum9->Fill(0.5); 
    H_dum10->Fill(0.5);


  TGraph *ROC1 = new TGraph(1000,bck1,ef1);
   ROC1->SetMarkerStyle(21);
  ROC1->SetMarkerSize(0.5);

  ROC1->SetMarkerColor(kRed);
  H_dum0->SetLineColor(kRed);

  TGraph *ROC2 = new TGraph(1000,bck2,ef2);
   ROC2->SetMarkerStyle(21);
  ROC2->SetMarkerSize(0.5);
    
  ROC2->SetMarkerColor(kRed-7);
  H_dum1->SetLineColor(kRed-7);

  TGraph *ROC3 = new TGraph(1000,bck3,ef3);
   ROC3->SetMarkerStyle(21);
  ROC3->SetMarkerSize(0.5);

  ROC3->SetMarkerColor(kRed-5 );
  H_dum2->SetLineColor(kRed);



  TGraph *ROC4 = new TGraph(1000,bck4,ef4);
   ROC4->SetMarkerStyle(21);
  ROC4->SetMarkerSize(0.5);

  ROC4->SetMarkerColor(kOrange);
  H_dum3->SetLineColor(kOrange);


  TGraph *ROC5 = new TGraph(1000,bck5,ef5);
   ROC5->SetMarkerStyle(21);
  ROC5->SetMarkerSize(0.5);
  
  ROC5->SetMarkerColor(kOrange-4);
  H_dum4->SetLineColor(kOrange-4);
    

  TGraph *ROC6 = new TGraph(1000,bck6,ef6);
   ROC6->SetMarkerStyle(20);
  ROC6->SetMarkerSize(0.5);
  
  ROC6->SetMarkerColor(kBlack);
  H_dum5->SetLineColor(kBlack);



  TGraph *ROC7 = new TGraph(1000,bck7,ef7);
     ROC7->SetMarkerStyle(20);
  ROC7->SetMarkerSize(0.5);

  ROC7->SetMarkerColor(kBlue);
  H_dum6->SetLineColor(kBlue);


  TGraph *ROC8 = new TGraph(1000,bck8,ef8);
    ROC8->SetMarkerStyle(20);
  ROC8->SetMarkerSize(0.5);

  ROC8->SetMarkerColor(kBlue-7);
  H_dum7->SetLineColor(kBlue-7);



  TGraph *ROC9 = new TGraph(1000,bck9,ef9);
    ROC9->SetMarkerStyle(20);
  ROC9->SetMarkerSize(0.5);

  ROC9->SetMarkerColor(kMagenta-10);
  H_dum8->SetLineColor(kMagenta-10);



  TGraph *ROC10 = new TGraph(1000,bck10,ef10);
    ROC10->SetMarkerStyle(20);
  ROC10->SetMarkerSize(0.5);

  ROC10->SetMarkerColor(kMagenta);
  H_dum9->SetLineColor(kMagenta);
    


  TGraph *ROC11 = new TGraph(1000,bck11,ef11);
     ROC11->SetMarkerStyle(20);
  ROC11->SetMarkerSize(0.5);

  ROC11->SetMarkerColor(kMagenta-7);
  H_dum10->SetLineColor(kMagenta-7);
  


  TGraph *ROC12 = new TGraph(1000,bck12,ef12);
    ROC12->SetMarkerStyle(20);
    ROC12->SetMarkerSize(0.5);
    
  ROC12->SetMarkerColor(kMagenta-10);
  H_dum11->SetLineColor(kMagenta-10);



  TGraph *ROC13 = new TGraph(1000,bck13,ef13);
     ROC13->SetMarkerStyle(20);
  ROC13->SetMarkerSize(0.5);
    
  ROC13->SetMarkerColor(kCyan);
  H_dum12->SetLineColor(kCyan);


  TGraph *ROC14 = new TGraph(1000,bck14,ef14);
     ROC14->SetMarkerStyle(20);
  ROC14->SetMarkerSize(0.5);

  ROC14->SetMarkerColor(kCyan-7);
  H_dum13->SetLineColor(kCyan-7);



  TGraph *ROC15 = new TGraph(1000,bck15,ef15);
     ROC15->SetMarkerStyle(20);
  ROC15->SetMarkerSize(0.5);

  ROC15->SetMarkerColor(kCyan-10);
  H_dum14->SetLineColor(kCyan-10);



  TGraph *ROC16 = new TGraph(1000,bck16,ef16);
     ROC16->SetMarkerStyle(20);
  ROC16->SetMarkerSize(0.5);
  ROC16->SetMarkerColor(kCyan-8);
  H_dum15->SetLineColor(kCyan-8);
    
   




  
  TGraph *lROC1 = new TGraph(1000,lbck1,lef1);
     lROC1->SetMarkerStyle(33);
   lROC1->SetMarkerSize(0.5);
  lROC1->SetMarkerColor(kRed);
  H_dum0->SetLineColor(kRed);

  TGraph *lROC2 = new TGraph(1000,lbck2,lef2);
    lROC2->SetMarkerStyle(33);
  lROC2->SetMarkerSize(0.5);
   lROC2->SetMarkerColor(kRed-7);
  H_dum1->SetLineColor(kRed-7);

  TGraph *lROC3 = new TGraph(1000,lbck3,lef3);
     lROC3->SetMarkerStyle(33);
  lROC3->SetMarkerSize(0.5);
  lROC3->SetMarkerColor(kRed-5 );
  H_dum2->SetLineColor(kRed);



  TGraph *lROC4 = new TGraph(1000,lbck4,lef4);
     lROC4->SetMarkerStyle(33);
  lROC4->SetMarkerSize(0.5);
  lROC4->SetMarkerColor(kOrange);
  H_dum3->SetLineColor(kOrange);


  TGraph *lROC5 = new TGraph(1000,lbck5,lef5);
     lROC5->SetMarkerStyle(33);
  lROC5->SetMarkerSize(0.5);
  lROC5->SetMarkerColor(kOrange-4);
  H_dum4->SetLineColor(kOrange-4);
    

  TGraph *lROC6 = new TGraph(1000,lbck6,lef6);
     lROC6->SetMarkerStyle(29);
  lROC6->SetMarkerSize(0.5);
  lROC6->SetMarkerColor(kBlack);
  H_dum5->SetLineColor(kBlack);



  TGraph *lROC7 = new TGraph(1000,lbck7,lef7);
     lROC7->SetMarkerStyle(29);
  lROC7->SetMarkerSize(0.5);
  lROC7->SetMarkerColor(kBlue);
  H_dum6->SetLineColor(kBlue);


  TGraph *lROC8 = new TGraph(1000,lbck8,lef8);
     lROC8->SetMarkerStyle(29);
  lROC8->SetMarkerSize(0.5);
  lROC8->SetMarkerColor(kBlue-7);
  H_dum7->SetLineColor(kBlue-7);



  TGraph *lROC9 = new TGraph(1000,lbck9,lef9);
  lROC9->SetMarkerStyle(29);
  lROC9->SetMarkerSize(0.5);
  lROC9->SetMarkerColor(kMagenta-10);
  H_dum8->SetLineColor(kMagenta-10);



  TGraph *lROC10 = new TGraph(1000,lbck10,lef10);
     lROC10->SetMarkerStyle(29);
   lROC10->SetMarkerSize(0.5);
  lROC10->SetMarkerColor(kMagenta);
  H_dum9->SetLineColor(kMagenta);
    


  TGraph *lROC11 = new TGraph(1000,lbck11,lef11);
     lROC11->SetMarkerStyle(29);
  lROC11->SetMarkerSize(0.5);
  lROC11->SetMarkerColor(kMagenta-7);
  H_dum10->SetLineColor(kMagenta-7);
  


  TGraph *lROC12 = new TGraph(1000,lbck12,lef12);
     lROC12->SetMarkerStyle(29);
   lROC12->SetMarkerSize(0.5);
  lROC12->SetMarkerColor(kMagenta-10);
  H_dum11->SetLineColor(kMagenta-10);



  TGraph *lROC13 = new TGraph(1000,lbck13,lef13);
     lROC13->SetMarkerStyle(29);
   lROC13->SetMarkerSize(0.5);
  lROC13->SetMarkerColor(kCyan);
  H_dum12->SetLineColor(kCyan);


  TGraph *lROC14 = new TGraph(1000,lbck14,lef14);
     lROC14->SetMarkerStyle(29);
   lROC14->SetMarkerSize(0.5);
  lROC14->SetMarkerColor(kCyan-7);
  H_dum13->SetLineColor(kCyan-7);



  TGraph *lROC15 = new TGraph(1000,lbck15,lef15);
  lROC15->SetMarkerStyle(29); lROC15->SetMarkerSize(0.5);
  lROC15->SetMarkerColor(kCyan-10);
  H_dum14->SetLineColor(kCyan-10);



  TGraph *lROC16 = new TGraph(1000,lbck16,lef16);
  lROC16->SetMarkerStyle(29);
  lROC16->SetMarkerSize(0.5);

  lROC16->SetMarkerColor(kCyan-8);
  H_dum15->SetLineColor(kCyan-8);



  TMultiGraph *Rocks_l = new TMultiGraph(); 
  Rocks_l->Add(lROC1,"p");
  Rocks_l->Add(lROC2,"p");
  Rocks_l->Add(lROC3,"p");
  // Rocks_l->Add(lROC4,"p");
  //  Rocks_l->Add(lROC5,"p");
  Rocks_l->Add(lROC6,"p");
  //  Rocks_l->Add(lROC7,"p");
  // Rocks_l->Add(lROC8,"p");
  //  Rocks_l->Add(lROC9,"p");
  //  Rocks_l->Add(lROC10,"p");
  // Rocks_l->Add(lROC11,"p");
  // Rocks_l->Add(lROC12,"p");
  //  Rocks_l->Add(lROC13,"p");
  Rocks_l->Add(lROC14,"p");
  Rocks_l->Add(lROC15,"p");

  //Rocks_l->Add(lROC16,"p");

  
  TMultiGraph *Rocks = new TMultiGraph(); 
  Rocks->Add(ROC1,"p");
  //  Rocks->Add(ROC2,"p");
  Rocks->Add(ROC3,"p");
  //  Rocks->Add(ROC4,"p");
  //  Rocks->Add(ROC5,"p");
   Rocks->Add(ROC6,"p");
  //  Rocks->Add(ROC7,"p");
  // Rocks->Add(ROC8,"p");
   Rocks->Add(ROC9,"p");
  // Rocks->Add(ROC10,"p");
  //  Rocks->Add(ROC11,"p");
  // Rocks->Add(ROC12,"p");
  // Rocks->Add(ROC13,"p");
  Rocks->Add(ROC14,"p");
  Rocks->Add(ROC15,"p");
  //Rocks->Add(ROC16,"p");


  TMultiGraph *RocH_L1 = new TMultiGraph(); 
  
  RocH_L1->Add(ROC1,"p");
  RocH_L1->Add(lROC1,"p");

  TMultiGraph *RocH_L2 = new TMultiGraph(); 
  
  RocH_L2->Add(ROC2,"p");
  RocH_L2->Add(lROC2,"p");

  TMultiGraph *RocH_L3 = new TMultiGraph(); 
  
  RocH_L3->Add(ROC3,"p");
  RocH_L3->Add(lROC3,"p");

  TMultiGraph *RocH_L4 = new TMultiGraph(); 
  
  RocH_L4->Add(ROC4,"p");
  RocH_L4->Add(lROC4,"p");

  TMultiGraph *RocH_L5 = new TMultiGraph(); 
  
  RocH_L5->Add(ROC5,"p");
  RocH_L5->Add(lROC5,"p");

  TMultiGraph *RocH_L6 = new TMultiGraph(); 
  
  RocH_L6->Add(ROC6,"p");
  RocH_L6->Add(lROC6,"p");

  
  TMultiGraph *RocH_L7 = new TMultiGraph(); 
  
  RocH_L7->Add(ROC7,"p");
  RocH_L7->Add(lROC7,"p");



  TMultiGraph *RocH_L8 = new TMultiGraph(); 
  
  RocH_L8->Add(ROC8,"p");
  RocH_L8->Add(lROC8,"p");

  TMultiGraph *RocH_L9 = new TMultiGraph(); 
  
  RocH_L9->Add(ROC9,"p");
  RocH_L9->Add(lROC9,"p");

  TMultiGraph *RocH_L10= new TMultiGraph(); 
  
  RocH_L10->Add(ROC10,"p");
  RocH_L10->Add(lROC10,"p");

  TMultiGraph *RocH_L11 = new TMultiGraph(); 
  
  RocH_L11->Add(ROC11,"p");
  RocH_L11->Add(lROC11,"p");

  TMultiGraph *RocH_L12 = new TMultiGraph(); 
  
  RocH_L12->Add(ROC12,"p");
  RocH_L12->Add(lROC12,"p");

  
  TMultiGraph *RocH_L13 = new TMultiGraph(); 
  
  RocH_L13->Add(ROC13,"p");
  RocH_L13->Add(lROC13,"p");

  TMultiGraph *RocH_L14 = new TMultiGraph(); 
  
  RocH_L14->Add(ROC14,"p");
  RocH_L14->Add(lROC14,"p");

  TMultiGraph *RocH_L15 = new TMultiGraph(); 
  
  RocH_L15->Add(ROC15,"p");
  RocH_L15->Add(lROC15,"p");

  TMultiGraph *RocH_L16 = new TMultiGraph(); 
  
  RocH_L16->Add(ROC16,"p");
  RocH_L16->Add(lROC16,"p");



  TCanvas *c4 = new TCanvas("c4"," roc low high comp",900,900);
  c4->Divide(2,2);
  c4->cd(1); 
  
  RocH_L1->Draw("APL");

  c4->cd(2); 
  
  RocH_L2->Draw("APL");

  c4->cd(3);  
  RocH_L3->Draw("APL");

  c4->cd(4);  
  RocH_L4->Draw("APL");

  c4->SaveAs("40_44_rocs.png");

  
  TCanvas *c5 = new TCanvas("c5"," roc low high comp",900,900);
  c5->Divide(2,2);
  c5->cd(1); 
  
  RocH_L5->Draw("APL");

  c5->cd(2); 
  
  RocH_L6->Draw("APL");

  c5->cd(3);  
  RocH_L7->Draw("APL");

  c5->cd(4);  
  RocH_L8->Draw("APL");

  
  c5->SaveAs("45_48_rocs.png");

 
  TCanvas *c6 = new TCanvas("c6"," roc low high comp",900,900);
  c6->Divide(2,2);
  c6->cd(1); 
  
  RocH_L9->Draw("APL");

  c6->cd(2);  
  RocH_L10->Draw("APL");

  c6->cd(3);  
  RocH_L11->Draw("APL");

  c6->cd(4);  
  RocH_L12->Draw("APL");

  
  c6->SaveAs("49_52_rocs.png");



  TCanvas *c7 = new TCanvas("c7"," roc low high comp",900,900);
  c7->Divide(2,2);
  c7->cd(1); 
  
  RocH_L13->Draw("APL");

  c7->cd(2);  
  RocH_L14->Draw("APL");

  c7->cd(3);  
  RocH_L15->Draw("APL");

  c7->cd(4);  
  RocH_L16->Draw("APL");


  c7->SaveAs("53_56_rocs.png");
  








  TCanvas *C1 = new TCanvas("C1","comparison",900,900); 

  C1->Divide(3,3);
  C1->cd(1); 

  
  w40->Draw(); 
  w40->SetLineColor(kRed); 
  w40b->Draw("same"); 


  C1->cd(2); 
  
  
  w41->Draw(); 
  w41->SetLineColor(kRed); 
  w41b->Draw("same"); 

  
  C1->cd(3); 


  //42->Scale(1./w42->GetEntries()); 
  //42b->Scale(1./w42b->GetEntries()); 

  
  w42->Draw(); 
  w42->SetLineColor(kRed); 
  w42b->Draw("same"); 



  
  C1->cd(4); 

  
  //43->Scale(1./w43->GetEntries()); 
  //43b->Scale(1./w43b->GetEntries()); 

  
  w43->Draw(); 
  w43->SetLineColor(kRed); 
  w43b->Draw("same"); 


  
  C1->cd(5); 

  
  
  //w44->Scale(1./w44->GetEntries()); 
  //44b->Scale(1./w44b->GetEntries()); 

  
  w44->Draw(); 
  w44->SetLineColor(kRed); 
  w44b->Draw("same"); 

  
  C1->cd(6); 

  
  
  //45->Scale(1./w45->GetEntries()); 
  //45b->Scale(1./w45b->GetEntries()); 

  
  w45->Draw(); 
  w45->SetLineColor(kRed); 
  w45b->Draw("same"); 


  
  C1->cd(7); 

  
  
  //w46->Scale(1./w46->GetEntries()); 
  //46b->Scale(1./w46b->GetEntries()); 

  
  w46->Draw(); 
  w46->SetLineColor(kRed); 
  w46b->Draw("same"); 

  
  C1->cd(8); 


  //47->Scale(1./w47->GetEntries()); 
  //47b->Scale(1./w47b->GetEntries()); 

    

  w47->Draw(); 
  w47->SetLineColor(kRed); 
  w47b->Draw("same"); 

  
  C1->cd(9); 


  //48->Scale(1./w48->GetEntries()); 
  //48b->Scale(1./w48b->GetEntries()); 

  
  w48->Draw(); 
  w48->SetLineColor(kRed); 
  w48b->Draw("same"); 


  C1->SaveAs("Comp_l_high.png");






  
  


  TCanvas *c1  = new TCanvas("c1"," rocs low pt ",700,700);
  c1->cd();
  Rocks_l->Draw("APL");
  

  //  c1->BuildLegend();


  TCanvas *c2  = new TCanvas("c2"," rocs high pt  ",700,700);
  c2->cd();
  Rocks->Draw("APL");


  l1 = new TLegend(0.4961983,0.6604796,0.6976886,0.8603222);
  l1->AddEntry("H_dum0","w0 = 0.40","lp");
  l1->AddEntry("H_dum1","w0 = 0.41","lp");
  l1->AddEntry("H_dum2","w0 = 0.42","lp");
  l1->AddEntry("H_dum3","w0 = 0.43","lp");
  l1->AddEntry("H_dum4","w0 = 0.44","lp");
  l1->AddEntry("H_dum5","w0 = 0.45","lp");
  l1->AddEntry("H_dum6","w0 = 0.46","lp");
  l1->AddEntry("H_dum7","w0 = 0.47","lp");
  l1->AddEntry("H_dum8","w0 = 0.48","lp");
  l1->AddEntry("H_dum9","w0 = 0.49","lp");
  l1->AddEntry("H_dum10","w0 = 0.50","lp");
  l1->AddEntry("H_dum11","w0 = 0.51","lp");
  l1->AddEntry("H_dum12","w0 = 0.52","lp");
  l1->AddEntry("H_dum13","w0 = 0.53","lp");
  l1->AddEntry("H_dum14","w0 = 0.54","lp");
  l1->AddEntry("H_dum15","w0 = 0.55","lp");
  l1->AddEntry("H_dum16","w0 = 0.56","lp");

  
  
  l1->SetFillColor(0);
  l1->SetBorderSize(0);
  //l1->SetTextSize(0.06);

 

 
  l1->Draw();  



  //  c2->BuildLegend();

  //  return c2; 

}
