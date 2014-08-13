#!/bin/bash

#create-datacard.py -i ~/delphes-dihiggs/SignalExtraction/hh_tt_inputs.root -u setup/tt/unc-bbtt.vals -c setup/tt/cgs-bbtt.conf -d setup/tt/unc-bbtt.conf -o bbtt-tt-datacard.txt
create-datacard.py -i hh_tt_inputs.root -u setup/tt/unc-bbtt-bbb.vals -c setup/tt/cgs-bbtt.conf -d setup/tt/unc-bbtt-bbb.conf -o bbtt-tt-datacard.txt
#sed -i 's/^shapes ggHH/#shapes ggHH/' bbtt-tt-datacard.txt

#create-datacard.py -i ~/delphes-dihiggs/SignalExtraction/hh_mt_inputs.root -u setup/mt/unc-bbtt.vals -c setup/mt/cgs-bbtt.conf -d setup/mt/unc-bbtt.conf -o bbtt-mt-datacard.txt
create-datacard.py -i hh_mt_inputs.root -u setup/mt/unc-bbtt-bbb.vals -c setup/mt/cgs-bbtt.conf -d setup/mt/unc-bbtt-bbb.conf -o bbtt-mt-datacard.txt
sed -i 's/^shapes ggHH/#shapes ggHH/' bbtt-mt-datacard.txt

#create-datacard.py -i ~/delphes-dihiggs/SignalExtraction/hh_et_inputs.root -u setup/et/unc-bbtt.vals -c setup/et/cgs-bbtt.conf -d setup/et/unc-bbtt.conf -o bbtt-et-datacard.txt
#sed -i 's/^shapes ggHH/#shapes ggHH/' bbtt-et-datacard.txt

#create-datacard.py -i ~/delphes-dihiggs/SignalExtraction/hh_em_inputs.root -u setup/em/unc-bbtt.vals -c setup/em/cgs-bbtt.conf -d setup/em/unc-bbtt.conf -o bbtt-em-datacard.txt
#sed -i 's/^shapes ggHH/#shapes ggHH/' bbtt-em-datacard.txt

#combineCards.py eletau=bbtt-et-datacard.txt mutau=bbtt-mt-datacard.txt emu=bbtt-em-datacard.txt tautau=bbtt-tt-datacard.txt > comb-datacard.txt
combineCards.py mutau=bbtt-mt-datacard.txt tautau=bbtt-tt-datacard.txt > comb-datacard.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 bbtt-tt-datacard.txt > tt-max-like.txt
#combine -M ProfileLikelihood -t -1 --expectSignal=1 bbtt-tt-datacard.txt > tt-prof-like.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 bbtt-mt-datacard.txt > mt-max-like.txt
#combine -M ProfileLikelihood -t -1 --expectSignal=1 bbtt-mt-datacard.txt > mt-prof-like.txt

#combine -M MaxLikelihoodFit --expectSignal=1 -t -1 bbtt-et-datacard.txt > et-max-like.txt
#combine -M ProfileLikelihood -t -1 --expectSignal=1 bbtt-et-datacard.txt > et-prof-like.txt

#combine -M MaxLikelihoodFit --expectSignal=1 -t -1 bbtt-em-datacard.txt > em-max-like.txt
#combine -M ProfileLikelihood -t -1 --expectSignal=1 bbtt-em-datacard.txt > em-prof-like.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 comb-datacard.txt > comb-max-like.txt
#combine -M ProfileLikelihood -t -1 --expectSignal=1 comb-datacard.txt > comb-prof-like.txt