#!/bin/bash

create-datacard.py -i ~/delphes-dihiggs/SignalExtraction/hh_tt_inputs.root -u setup/tt/unc-bbtt.vals -c setup/tt/cgs-bbtt-SM.conf -d setup/tt/unc-bbtt.conf -o lamSM/bbtt-tt-datacard.txt
sed -i 's/^shapes ggHH/#shapes ggHH/' lamSM/bbtt-tt-datacard.txt

create-datacard.py -i ~/delphes-dihiggs/SignalExtraction/hh_tt_inputs.root -u setup/tt/unc-bbtt.vals -c setup/tt/cgs-bbtt-0.conf -d setup/tt/unc-bbtt.conf -o lam0/bbtt-tt-datacard.txt
sed -i 's/^shapes lam/#shapes lam/' lam0/bbtt-tt-datacard.txt

create-datacard.py -i ~/delphes-dihiggs/SignalExtraction/hh_tt_inputs.root -u setup/tt/unc-bbtt.vals -c setup/tt/cgs-bbtt-m1.conf -d setup/tt/unc-bbtt.conf -o lamm1/bbtt-tt-datacard.txt
sed -i 's/^shapes lam/#shapes lam/' lamm1/bbtt-tt-datacard.txt

create-datacard.py -i ~/delphes-dihiggs/SignalExtraction/hh_tt_inputs.root -u setup/tt/unc-bbtt.vals -c setup/tt/cgs-bbtt-m5.conf -d setup/tt/unc-bbtt.conf -o lamm5/bbtt-tt-datacard.txt
sed -i 's/^shapes lam/#shapes lam/' lamm5/bbtt-tt-datacard.txt

create-datacard.py -i ~/delphes-dihiggs/SignalExtraction/hh_tt_inputs.root -u setup/tt/unc-bbtt.vals -c setup/tt/cgs-bbtt-p5.conf -d setup/tt/unc-bbtt.conf -o lamp5/bbtt-tt-datacard.txt
sed -i 's/^shapes lam/#shapes lam/' lamp5/bbtt-tt-datacard.txt

create-datacard.py -i ~/delphes-dihiggs/SignalExtraction/hh_mt_inputs.root -u setup/mt/unc-bbtt.vals -c setup/mt/cgs-bbtt-SM.conf -d setup/mt/unc-bbtt.conf -o lamSM/bbtt-mt-datacard.txt
sed -i 's/^shapes ggHH/#shapes ggHH/' lamSM/bbtt-mt-datacard.txt

create-datacard.py -i ~/delphes-dihiggs/SignalExtraction/hh_mt_inputs.root -u setup/mt/unc-bbtt.vals -c setup/mt/cgs-bbtt-0.conf -d setup/mt/unc-bbtt.conf -o lam0/bbtt-mt-datacard.txt
sed -i 's/^shapes lam/#shapes lam/' lam0/bbtt-mt-datacard.txt

create-datacard.py -i ~/delphes-dihiggs/SignalExtraction/hh_mt_inputs.root -u setup/mt/unc-bbtt.vals -c setup/mt/cgs-bbtt-m1.conf -d setup/mt/unc-bbtt.conf -o lamm1/bbtt-mt-datacard.txt
sed -i 's/^shapes lam/#shapes lam/' lamm1/bbtt-mt-datacard.txt

create-datacard.py -i ~/delphes-dihiggs/SignalExtraction/hh_mt_inputs.root -u setup/mt/unc-bbtt.vals -c setup/mt/cgs-bbtt-m5.conf -d setup/mt/unc-bbtt.conf -o lamm5/bbtt-mt-datacard.txt
sed -i 's/^shapes lam/#shapes lam/' lamm5/bbtt-mt-datacard.txt

create-datacard.py -i ~/delphes-dihiggs/SignalExtraction/hh_mt_inputs.root -u setup/mt/unc-bbtt.vals -c setup/mt/cgs-bbtt-p5.conf -d setup/mt/unc-bbtt.conf -o lamp5/bbtt-mt-datacard.txt
sed -i 's/^shapes lam/#shapes lam/' lamp5/bbtt-mt-datacard.txt

create-datacard.py -i ~/delphes-dihiggs/SignalExtraction/hh_et_inputs.root -u setup/et/unc-bbtt.vals -c setup/et/cgs-bbtt-SM.conf -d setup/et/unc-bbtt.conf -o lamSM/bbtt-et-datacard.txt
sed -i 's/^shapes ggHH/#shapes ggHH/' lamSM/bbtt-et-datacard.txt

create-datacard.py -i ~/delphes-dihiggs/SignalExtraction/hh_et_inputs.root -u setup/et/unc-bbtt.vals -c setup/et/cgs-bbtt-0.conf -d setup/et/unc-bbtt.conf -o lam0/bbtt-et-datacard.txt
sed -i 's/^shapes lam/#shapes lam/' lam0/bbtt-et-datacard.txt

create-datacard.py -i ~/delphes-dihiggs/SignalExtraction/hh_et_inputs.root -u setup/et/unc-bbtt.vals -c setup/et/cgs-bbtt-m1.conf -d setup/et/unc-bbtt.conf -o lamm1/bbtt-et-datacard.txt
sed -i 's/^shapes lam/#shapes lam/' lamm1/bbtt-et-datacard.txt

create-datacard.py -i ~/delphes-dihiggs/SignalExtraction/hh_et_inputs.root -u setup/et/unc-bbtt.vals -c setup/et/cgs-bbtt-m5.conf -d setup/et/unc-bbtt.conf -o lamm5/bbtt-et-datacard.txt
sed -i 's/^shapes lam/#shapes lam/' lamm5/bbtt-et-datacard.txt

create-datacard.py -i ~/delphes-dihiggs/SignalExtraction/hh_et_inputs.root -u setup/et/unc-bbtt.vals -c setup/et/cgs-bbtt-p5.conf -d setup/et/unc-bbtt.conf -o lamp5/bbtt-et-datacard.txt
sed -i 's/^shapes lam/#shapes lam/' lamp5/bbtt-et-datacard.txt

combineCards.py mutau=lam0/bbtt-mt-datacard.txt tautau=lam0/bbtt-tt-datacard.txt eletau=lam0/bbtt-et-datacard.txt > lam0/comb-datacard.txt
combineCards.py mutau=lamm1/bbtt-mt-datacard.txt tautau=lamm1/bbtt-tt-datacard.txt eletau=lamm1/bbtt-et-datacard.txt > lamm1/comb-datacard.txt
combineCards.py mutau=lamm5/bbtt-mt-datacard.txt tautau=lamm5/bbtt-tt-datacard.txt eletau=lamm5/bbtt-et-datacard.txt > lamm5/comb-datacard.txt
combineCards.py mutau=lamp5/bbtt-mt-datacard.txt tautau=lamp5/bbtt-tt-datacard.txt eletau=lamp5/bbtt-et-datacard.txt > lamp5/comb-datacard.txt
combineCards.py mutau=lamSM/bbtt-mt-datacard.txt tautau=lamSM/bbtt-tt-datacard.txt eletau=lamSM/bbtt-et-datacard.txt > lamSM/comb-datacard.txt

sed -i 's$ lam0/$$' lam0/comb-datacard.txt
sed -i 's$ lamm1/$$' lamm1/comb-datacard.txt
sed -i 's$ lamm5/$$' lamm5/comb-datacard.txt
sed -i 's$ lamp5/$$' lamp5/comb-datacard.txt
sed -i 's$ lamSM/$$' lamSM/comb-datacard.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 lamSM/bbtt-tt-datacard.txt > lamSM/tt-max-like.txt
combine -M Asymptotic -t -1 --expectSignal=1 lamSM/bbtt-tt-datacard.txt > lamSM/tt-asymp.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 lam0/bbtt-tt-datacard.txt > lam0/tt-max-like.txt
combine -M Asymptotic -t -1 --expectSignal=1 lam0/bbtt-tt-datacard.txt > lam0/tt-asymp.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 lamm1/bbtt-tt-datacard.txt > lamm1/tt-max-like.txt
combine -M Asymptotic -t -1 --expectSignal=1 lamm1/bbtt-tt-datacard.txt > lamm1/tt-asymp.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 lamm5/bbtt-tt-datacard.txt > lamm5/tt-max-like.txt
combine -M Asymptotic -t -1 --expectSignal=1 lamm5/bbtt-tt-datacard.txt > lamm5/tt-asymp.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 lamp5/bbtt-tt-datacard.txt > lamp5/tt-max-like.txt
combine -M Asymptotic -t -1 --expectSignal=1 lamp5/bbtt-tt-datacard.txt > lamp5/tt-asymp.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 lamSM/bbtt-mt-datacard.txt > lamSM/mt-max-like.txt
combine -M Asymptotic -t -1 --expectSignal=1 lamSM/bbtt-mt-datacard.txt > lamSM/mt-asymp.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 lam0/bbtt-mt-datacard.txt > lam0/mt-max-like.txt
combine -M Asymptotic -t -1 --expectSignal=1 lam0/bbtt-mt-datacard.txt > lam0/mt-asymp.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 lamm1/bbtt-mt-datacard.txt > lamm1/mt-max-like.txt
combine -M Asymptotic -t -1 --expectSignal=1 lamm1/bbtt-mt-datacard.txt > lamm1/mt-asymp.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 lamm5/bbtt-mt-datacard.txt > lamm5/mt-max-like.txt
combine -M Asymptotic -t -1 --expectSignal=1 lamm5/bbtt-mt-datacard.txt > lamm5/mt-asymp.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 lamp5/bbtt-mt-datacard.txt > lamp5/mt-max-like.txt
combine -M Asymptotic -t -1 --expectSignal=1 lamp5/bbtt-mt-datacard.txt > lamp5/mt-asymp.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 lamSM/bbtt-et-datacard.txt > lamSM/et-max-like.txt
combine -M Asymptotic -t -1 --expectSignal=1 lamSM/bbtt-et-datacard.txt > lamSM/et-asymp.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 lam0/bbtt-et-datacard.txt > lam0/et-max-like.txt
combine -M Asymptotic -t -1 --expectSignal=1 lam0/bbtt-et-datacard.txt > lam0/et-asymp.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 lamm1/bbtt-et-datacard.txt > lamm1/et-max-like.txt
combine -M Asymptotic -t -1 --expectSignal=1 lamm1/bbtt-et-datacard.txt > lamm1/et-asymp.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 lamm5/bbtt-et-datacard.txt > lamm5/et-max-like.txt
combine -M Asymptotic -t -1 --expectSignal=1 lamm5/bbtt-et-datacard.txt > lamm5/et-asymp.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 lamp5/bbtt-et-datacard.txt > lamp5/et-max-like.txt
combine -M Asymptotic -t -1 --expectSignal=1 lamp5/bbtt-et-datacard.txt > lamp5/et-asymp.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 lamSM/comb-datacard.txt > lamSM/comb-max-like.txt
combine -M Asymptotic -t -1 --expectSignal=1 lamSM/comb-datacard.txt > lamSM/comb-asymp.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 lam0/comb-datacard.txt > lam0/comb-max-like.txt
combine -M Asymptotic -t -1 --expectSignal=1 lam0/comb-datacard.txt > lam0/comb-asymp.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 lamm1/comb-datacard.txt > lamm1/comb-max-like.txt
combine -M Asymptotic -t -1 --expectSignal=1 lamm1/comb-datacard.txt > lamm1/comb-asymp.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 lamm5/comb-datacard.txt > lamm5/comb-max-like.txt
combine -M Asymptotic -t -1 --expectSignal=1 lamm5/comb-datacard.txt > lamm5/comb-asymp.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 lamp5/comb-datacard.txt > lamp5/comb-max-like.txt
combine -M Asymptotic -t -1 --expectSignal=1 lamp5/comb-datacard.txt > lamp5/comb-asymp.txt