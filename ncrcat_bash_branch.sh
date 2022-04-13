for j in e0 e01 e02 e03 e04
do
   echo "module load nco" > ncrcat_bash$j.sh
   for i in T AREA ch4vmr CLDHGH co2vmr FLNT FSNS FSUTOA FSNT H2O H2 H CH4 H2O H2O2 HO2 OH ICEFRAC LANDFRAC O3 OCNFRAC TS U O2
   do
     echo "rm "$i"_"$j"_obl0.nc" >>ncrcat_bash$j.sh 
     echo "ncrcat -O -v" $i "b.e21.BWma1850.f19_g17."$j"_obl0_branch.001.cam.h0.*" $i"_"$j"_obl0.nc" >>ncrcat_bash$j.sh 
   done
   mv ncrcat_bash$j.sh "/nobackup/pybl/cesm2/archive/b.e21.BWma1850.f19_g17."$j"_obl0_branch.001/atm/hist/."
done    

cd /nobackup/pybl/cesm2/archive/b.e21.BWma1850.f19_g17.e0_obl0_branch.001/atm/hist/
source ncrcat_bashe0.sh

cd /nobackup/pybl/cesm2/archive/b.e21.BWma1850.f19_g17.e01_obl0_branch.001/atm/hist/
source ncrcat_bashe01.sh

cd /nobackup/pybl/cesm2/archive/b.e21.BWma1850.f19_g17.e02_obl0_branch.001/atm/hist/
source ncrcat_bashe02.sh

cd /nobackup/pybl/cesm2/archive/b.e21.BWma1850.f19_g17.e03_obl0_branch.001/atm/hist/
source ncrcat_bashe03.sh

cd /nobackup/pybl/cesm2/archive/b.e21.BWma1850.f19_g17.e04_obl0_branch.001/atm/hist/
source ncrcat_bashe04.sh

#ncks -A TS_e04_obl0_branch.nc /nobackup/pybl/cesm2/archive/b.e21.BWma1850.f19_g17.e04_obl0_branch.001/atm/hist/TS_e04_obl0.nc

cd

