


void run(){

  gSystem->CompileMacro("ShowerSh.C");

  ShowerSh t; 

  t.ROC_builder(0,0);

  t.ROC_builder(1,1);
  t.ROC_builder(2,1);

  t.ROC_builder(1,2);
  t.ROC_builder(2,2);








}
