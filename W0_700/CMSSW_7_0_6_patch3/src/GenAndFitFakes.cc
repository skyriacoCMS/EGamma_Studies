
#include <cstring>
#include <cerrno>
#include <iostream>
#include <cstdlib>
#include <cmath>
#include <vector>
#include <string>
#include <stdexcept>
#include <algorithm>
#include <unistd.h>
#include <errno.h>
#include <iomanip>
// ROOT headers
#include "TCanvas.h"
#include "TAxis.h"
#include "TH1F.h"
#include "TF1.h"
#include "TFile.h"
#include "TTree.h"
#include "TIterator.h"

#include "TLatex.h"
#include "TString.h"
#include "TLegend.h"
#include "TGraphAsymmErrors.h"


// RooFit headers

#include "RooAbsPdf.h"
#include "RooDataHist.h"
#include "RooDataSet.h"
#include "RooHistPdf.h"
#include "RooMsgService.h"
#include "RooNLLVar.h"
#include "RooPlot.h"
#include "RooRandom.h"
#include "RooRealVar.h"
#include "RooWorkspace.h"
#include "TStyle.h"
// RooStats headers
#include "RooStats/HLFactory.h"
#include "RooAbsPdf.h"
#include "RooAddPdf.h"
#include "RooProdPdf.h"
#include "RooAbsData.h"
#include "RooPlot.h"
#include "RooGaussian.h"
#include "RooProduct.h"
#include "RooExtendPdf.h"
#include "RooBernstein.h"
#include "RooFitResult.h"
#include "RooMinimizer.h"
#include "RooCmdArg.h"
#include "RooConstVar.h"
#include "RooRealVar.h"

using namespace RooFit;
using namespace RooStats ;

void AddSigData(RooWorkspace*w);
//void SigModelFit(RooWorkspace*w);

RooArgSet* defineVariables()
{
  // define variables of the input ntuple
  //Fill instead PFEta, PFCalibE, genE, nVtx, BDTG, PFRawE

  RooRealVar* BDT   = new RooRealVar("BDT","BDT SS",-1.0,1.0,"AU");
  RooRealVar* BDT2   = new RooRealVar("BDT2","BDT Iso",-1.0,1.0,"AU");
  RooRealVar* classID   = new RooRealVar("classID","Category",0.0,1.0,"AU");
  RooRealVar* sieie   = new RooRealVar("sieie","sigIeIe",0.0,1.0,"AU");
  RooRealVar* E2x2_D_E5x5=new RooRealVar("E2x2_D_E5x5","EnergyRatio",0.0,1.0,"AU");
  /*
  RooRealVar* nVtx   = new RooRealVar("nVtx","Num of Vtx",0.0,50,"GeV"); //rename correctly in tree
  RooRealVar* genE   = new RooRealVar("genE","E_{gen}",0.0,2000,"GeV");
  RooRealVar* phoE  = new RooRealVar("phoE","PFE_{RecoRaw}",0,2000,"GeV");
  RooRealVar* Escale  = new RooRealVar("Escale","PFE_{Reco}",0,5,"GeV");
  RooRealVar* EscaleLCorr  = new RooRealVar("EscaleLCorr","PFE_{Reco}",0,5,"GeV");
  RooRealVar* EscaleCorr  = new RooRealVar("EscaleCorr","PFE_{Reco}",0,5,"GeV");

  RooRealVar* eta    = new RooRealVar("eta","PF#eta",-3.5,3.5,"GeV");
 // RooRealVar* PFPt    = new RooRealVar("PFPt","PFp_{T}",0,350,"GeV");
  RooRealVar* r9  = new RooRealVar("r9","R_{9}",0,1,"");
   */
  RooArgSet* ntplVars = new RooArgSet(*BDT, *BDT2, *classID, *sieie, *E2x2_D_E5x5);
  //ntplVars->add(*PFR9);
  //ntplVars->add(*PFRawE);
		
 
  return ntplVars;
}



void runfits()
{
  //  gROOT->ProcessLine(".L tdrstyle.C ");
  //  setTDRStyle();
  //  gStyle->SetOptTitle(1);
   // TGaxis::SetMaxDigits(2);
//    gStyle->SetTitleAlign(13);
	RooWorkspace* w = new RooWorkspace("w");

	AddSigData(w);
	
	
}



void AddSigData(RooWorkspace* w) {
	//TString inDir   = "/cms/rish/TestFiles/";
//open 3 compfiles
  RooArgSet* ntplVars = defineVariables();
  //Add the other point
  
 // TFile sigFile2(inDir+TString::Format("job_summer12_VBF_%.0f.root_0.root"));  
	//TFile sigFile1("PFEBCorr.root");
//	TTree* sigTree1 = (TTree*) sigFile1.Get("newpf");
	TFile sigFile2("DeCorrTests.root");
	TTree* sigTree2 = (TTree*) sigFile2.Get("b");
	
	RooDataSet* signal=new RooDataSet("signal","dataset",sigTree2,*ntplVars, "classID<1");
    RooDataSet* bkg=new RooDataSet("bkg","dataset",sigTree2,*ntplVars, "classID>0");
    
    /*
	RooDataSet* EScaleMustEBLR9=new RooDataSet("EScaleMustEBLR9","dataset",sigTree1,*ntplVars, "r9<0.94");
	RooDataSet* EScaleMustEEHR9=new RooDataSet("EScaleMustEEHR9","dataset",sigTree2,*ntplVars, "r9>0.94");
	RooDataSet* EScaleMustEELR9=new RooDataSet("EScaleMustEELR9","dataset",sigTree2,*ntplVars, "r9<0.94");

    RooRealVar* sig_peak=new RooRealVar("sig_peak","sig_peak",1.0, 0.8, 1.2, "GeV");
    RooRealVar* sig_sigma=new RooRealVar("sig_sigma","sig_sigma",0.02, 0.0, 0.5, "");
    RooRealVar* sig_alpha=new RooRealVar("sig_alpha","sig_alpha",1.5, 0.5, 2.0, "");
    */
    RooRealVar* sig_gsigma=new RooRealVar("sig_gsigma","sig_gsigma",0.1, 0.0, 3.0, "");
    RooRealVar* sig_gmean=new RooRealVar("sig_gmean","sig_gmean",1.5, 1.0, 2.0, "");
   // w->import(*signal);
   // w->Print();
 //   std::cout<<"DONE"<<std::endl;
   // RooRealVar* frac=new RooRealVar("frac","frac",0.5, 0.0, 1.0, "");
    
    /*
    RooRealVar* sig_n=new RooRealVar("sig_n","sig_n",2, 0, 20, "");
    
    RooRealVar* sigLC_peak=new RooRealVar("sigLC_peak","sig_peak",1.0, 0.8, 1.2, "GeV");
    RooRealVar* sigLC_sigma=new RooRealVar("sigLC_sigma","sig_sigma",0.02, 0.0, 0.5, "");
    RooRealVar* sigLC_alpha=new RooRealVar("sigLC_alpha","sig_alpha",1.5, 0.5, 2.0, "");
    RooRealVar* sigLC_n=new RooRealVar("sigLC_n","sig_n",2, 0, 20, "");
    
    RooRealVar* sigLC_gsigma=new RooRealVar("sigLC_gsigma","sig_gsigma",0.1, 0.0, 1.5, "");
    RooRealVar* sigLC_gmean=new RooRealVar("sigLC_gmean","sig_gmean",1.5, 1.0, 2.0, "");
    RooRealVar* fracLC=new RooRealVar("fracLC","frac",0.5, 0.0, 1.0, "");

    RooRealVar* sigGC_peak=new RooRealVar("sigGC_peak","sigGC_peak",1.0, 0.8, 1.2, "GeV");
    RooRealVar* sigGC_sigma=new RooRealVar("sigGC_sigma","sigGC_sigma",0.02, 0.0, 0.1, "");
    RooRealVar* sigGC_alpha=new RooRealVar("sigGC_alpha","sigGC_alpha",1.3, 0.5, 1.5, "");
    RooRealVar* sigGC_n=new RooRealVar("sigGC_n","sigGC_n",2, 0, 50, "");
    RooRealVar* sigGC_gsigma=new RooRealVar("sigGC_gsigma","sig_gsigma",0.1, 0.0, 1.5, "");
    RooRealVar* sigGC_gmean=new RooRealVar("sigGC_gmean","sig_gmean",1.5, 1.0, 2.0, "");
    RooRealVar* fracGC=new RooRealVar("fracGC","frac",0.5, 0.0, 1.0, "");
    w->import(*EScaleMustEBHR9);
	w->import(*EScaleMustEBLR9);
	w->import(*EScaleMustEEHR9);
	w->import(*EScaleMustEELR9);
    w->Print();
    TCanvas* c1 = new TCanvas("c1", "dummy",1000,1000);
    RooAbsPdf*  EScaleCBFit = new RooCBShape("EScaleCBFit", "E Scale CB Fit EB High R9",*w->var("Escale"), *sig_peak, *sig_sigma, *sig_alpha, *sig_n);
    RooAbsPdf*EScaleGaus=new RooGaussian("EScaleGaus", "", *w->var("Escale"), *sig_gmean,*sig_gsigma);
    RooAddPdf*SumCBGaus=new RooAddPdf("SumCBGaus", "", *EScaleGaus, *EScaleCBFit,*frac  );
 
    RooAbsPdf*  EScaleCBFitLC = new RooCBShape("EScaleCBFitLC", "E Scale CB Fit EB High R9",*w->var("EscaleLCorr"), *sigLC_peak, *sigLC_sigma, *sigLC_alpha, *sigLC_n);
    RooAbsPdf*EScaleGausLC=new RooGaussian("EScaleGaus", "", *w->var("EscaleLCorr"), *sigLC_gmean,*sigLC_gsigma);
    RooAddPdf*SumCBGausLC=new RooAddPdf("SumCBGausLC", "", *EScaleGausLC, *EScaleCBFitLC,*fracLC  );

    RooAbsPdf*  EScaleCBFitGC = new RooCBShape("EScaleCBFitGC", "E Scale CB Fit EB High R9",*w->var("EscaleCorr"), *sigGC_peak, *sigGC_sigma, *sigGC_alpha, *sigGC_n);
    RooAbsPdf*EScaleGausGC=new RooGaussian("EScaleGaus", "", *w->var("EscaleLCorr"), *sigGC_gmean,*sigGC_gsigma);
  RooAddPdf*SumCBGausGC=new RooAddPdf("SumCBGausGC", "", *EScaleGausGC, *EScaleCBFitGC,*fracGC  );
    //cat0

    //cat 1
    //cat 2
    EScaleCBFit->fitTo(*w->data("EScaleMustEEHR9"),Range(0.95,1.05 ));
    //    EScaleCBFitLC->fitTo(*w->data("EScaleMustEELR9"),Range(0.95,1.05 ));
    EScaleCBFitGC->fitTo(*w->data("EScaleMustEEHR9"),Range(0.95,1.05 ));
    RooPlot*plotEscale=w->var("Escale")->frame(Range(0.8,1.2));
  //  RooPlot*plotEscaleLCorr=w->var("EscaleLCorr")->frame(Range(0.8,1.2));
    RooPlot*plotEscaleGCorr=w->var("EscaleCorr")->frame(Range(0.8,1.2));
    w->data("EScaleMustEEHR9")->plotOn(plotEscale, MarkerColor(kRed));
    //w->data("EScaleMustEELR9")->plotOn(plotEscaleLCorr, MarkerColor(kBlue));
    w->data("EScaleMustEEHR9")->plotOn(plotEscaleGCorr, MarkerColor(kBlack));
    EScaleCBFit->plotOn(plotEscale, LineColor(kRed), RooFit::Name("EScaleCBFit"));
 
    //EScaleCBFitLC->plotOn(plotEscaleLCorr, LineColor(kBlue), RooFit::Name("EScaleCBFitLC"));
    c1->cd();
    
   
    EScaleCBFitGC->plotOn(plotEscaleGCorr, LineColor(kBlack),RooFit::Name("EScaleCBFitGC"));
   plotEscaleGCorr->SetTitle("Corrected Energy EE R9>0.94");
    
    plotEscaleGCorr->SetLabelSize(0.04, "X");
    plotEscaleGCorr->SetLabelSize(0.04, "Y");
    plotEscaleGCorr->SetTitleSize(0.04, "X");
    plotEscaleGCorr->SetTitleSize(0.04, "Y");
    plotEscaleGCorr->SetTitleOffset(2.0, "Y");
    plotEscaleGCorr->SetXTitle("E_{Corr}/E_{Gen}");
    plotEscaleGCorr->SetYTitle("Events ");
   // plotEscaleLCorr->SetXTitle("E_{Corr}/E_{Gen}");
   // plotEscaleLCorr->SetYTitle("");
    plotEscale->SetXTitle("E_{Corr}/E_{Gen}");
    plotEscale->SetYTitle("");
    plotEscaleGCorr->Draw();
    TPaveText *pt = new TPaveText(0.1937751,0.921365,0.8945783,0.9970326,"blNDC");
    pt->SetName("title");
    pt->SetBorderSize(2);
    pt->SetFillColor(10);
    TText *text = pt->AddText("Corrected Energy EE R9>0.94");
    pt->Draw();
    TLegend*leg=new TLegend(0.6,0.75,0.90,0.90);;
    leg->SetTextAlign(13);
    leg->AddEntry(plotEscale->findObject("EScaleCBFit"),"CB Fit UnCorr SC ", "l");
  //  leg->AddEntry(plotEscaleLCorr->findObject("EScaleCBFitLC"),"CB Fit LCorr SC ", "l");
     leg->AddEntry(plotEscaleGCorr->findObject("EScaleCBFitGC"),"CB Fit Total Corr SC ", "l");
    leg->Draw();
    //plotEscaleLCorr->Draw("same");
    plotEscale->Draw("same");
    c1->Print("EEHR9.pdf");
*/
   }
  


