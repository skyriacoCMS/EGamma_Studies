import os
import shutil
import subprocess
import sys
#


j = 1
StrEvent = 100
while j < 201:

#        fT1=open('H2.py','r')
        fT2=open('Sim1','r')
        fT3=open('Sim1.jcl','r')
       # f1=open('H12_'+str(j)+'.py','w')
        f3=open('Sim12_'+str(j)+'.jcl','w')
        f2=open('Sim12_'+str(j),'w')


        li_ne = str(fT2.readline())
        k = 0
        while li_ne != "":
            k = k + 1
            
            if( k == 11):
                f2.write(' export MYSCRIPT=/cms/kyriacou/BOOST_RU/Stealth/CMSSW_5_3_2_patch4/src/jetSubsSimulation/H12_'+str(j)+'.py \n');
            elif(k == 20):
                f2.write('cmsRun H12_'+str(j)+'.py T2_1200_1150 1 '+str(j)+' '+str(StrEvent)+' \n');  
            else:
                f2.write(li_ne)
            li_ne = str(fT2.readline())
                     
                

        #Now changing the Sim Script
                
        k=0
        li_ne = str(fT3.readline())
        while li_ne != "":
            k = k + 1
            
            if( k == 3 ):
                f3.write('Executable =/cms/kyriacou/BOOST_RU/Stealth/CMSSW_5_3_2_patch4/src/jetSubsSimulation/Sim12_'+str(j)+' \n')
            elif(k==7):
                f3.write('Output = 12_'+str(j)+'.out \n')
          
            elif(k==8):
                f3.write('Error = 12_'+str(j)+'.err \n')
          
            elif(k==9):
                f3.write('Log = 12_'+str(j)+'.log \n')
            else:

                f3.write(li_ne)
            li_ne = str(fT3.readline())
               
        j = j + 1
        StrEvent = StrEvent + 100
print "DONE !!!!"
