for j in e0 e01 e02 e03 e04
do 
   echo "cd /nobackup/pybl/cesm2/archive/b.e21.BWma1850.f19_g17."$j"_obl0_branch.001/atm/hist" >> merge_files.sh
   echo "rm *_merge.nc" >> merge_files.sh
   for i in T H2 H CH4 H2O2 HO2 OH FLNT FSNS FSUTOA FSNT H2O ICEFRAC LANDFRAC O3 OCNFRAC TS U
   do
      echo "cdo -O mergetime "$i"_"$j"_obl0.nc /nobackup/pybl/cesm2/archive/b.e21.BWma1850.f19_g17."$j"_obl0.001/atm/hist/"$i"_"$j"_obl0.nc "$i"_"$j"_obl0_merge.nc" >>merge_files.sh
   done
done


