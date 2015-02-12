#!/bin/bash

combineCards.py mutau_0=lamSM-eff/bbtt-mt-0-datacard.txt tautau_0=lamSM-eff/bbtt-tt-0-datacard.txt eletau_0=lamSM-eff/bbtt-et-0-datacard.txt > lamSM-eff/comb-0-datacard.txt
combineCards.py mutau_1=lamSM-eff/bbtt-mt-1-datacard.txt tautau_1=lamSM-eff/bbtt-tt-1-datacard.txt eletau_1=lamSM-eff/bbtt-et-1-datacard.txt > lamSM-eff/comb-1-datacard.txt
combineCards.py mutau_2=lamSM-eff/bbtt-mt-2-datacard.txt tautau_2=lamSM-eff/bbtt-tt-2-datacard.txt eletau_2=lamSM-eff/bbtt-et-2-datacard.txt > lamSM-eff/comb-2-datacard.txt
combineCards.py mutau_3=lamSM-eff/bbtt-mt-3-datacard.txt tautau_3=lamSM-eff/bbtt-tt-3-datacard.txt eletau_3=lamSM-eff/bbtt-et-3-datacard.txt > lamSM-eff/comb-3-datacard.txt
combineCards.py mutau_4=lamSM-eff/bbtt-mt-4-datacard.txt tautau_4=lamSM-eff/bbtt-tt-4-datacard.txt eletau_4=lamSM-eff/bbtt-et-4-datacard.txt > lamSM-eff/comb-4-datacard.txt
combineCards.py mutau_5=lamSM-eff/bbtt-mt-5-datacard.txt tautau_5=lamSM-eff/bbtt-tt-5-datacard.txt eletau_5=lamSM-eff/bbtt-et-5-datacard.txt > lamSM-eff/comb-5-datacard.txt
combineCards.py mutau_6=lamSM-eff/bbtt-mt-6-datacard.txt tautau_6=lamSM-eff/bbtt-tt-6-datacard.txt eletau_6=lamSM-eff/bbtt-et-6-datacard.txt > lamSM-eff/comb-6-datacard.txt
combineCards.py mutau_7=lamSM-eff/bbtt-mt-7-datacard.txt tautau_7=lamSM-eff/bbtt-tt-7-datacard.txt eletau_7=lamSM-eff/bbtt-et-7-datacard.txt > lamSM-eff/comb-7-datacard.txt
combineCards.py mutau_8=lamSM-eff/bbtt-mt-8-datacard.txt tautau_8=lamSM-eff/bbtt-tt-8-datacard.txt eletau_8=lamSM-eff/bbtt-et-8-datacard.txt > lamSM-eff/comb-8-datacard.txt
combineCards.py mutau_9=lamSM-eff/bbtt-mt-9-datacard.txt tautau_9=lamSM-eff/bbtt-tt-9-datacard.txt eletau_9=lamSM-eff/bbtt-et-9-datacard.txt > lamSM-eff/comb-9-datacard.txt

sed -i 's$ lamSM-eff/$$' lamSM-eff/comb-0-datacard.txt
sed -i 's$ lamSM-eff/$$' lamSM-eff/comb-1-datacard.txt
sed -i 's$ lamSM-eff/$$' lamSM-eff/comb-2-datacard.txt
sed -i 's$ lamSM-eff/$$' lamSM-eff/comb-3-datacard.txt
sed -i 's$ lamSM-eff/$$' lamSM-eff/comb-4-datacard.txt
sed -i 's$ lamSM-eff/$$' lamSM-eff/comb-5-datacard.txt
sed -i 's$ lamSM-eff/$$' lamSM-eff/comb-6-datacard.txt
sed -i 's$ lamSM-eff/$$' lamSM-eff/comb-7-datacard.txt
sed -i 's$ lamSM-eff/$$' lamSM-eff/comb-8-datacard.txt
sed -i 's$ lamSM-eff/$$' lamSM-eff/comb-9-datacard.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 lamSM-eff/comb-0-datacard.txt > lamSM-eff/comb-0-max-like.txt
combine -M Asymptotic -t -1 --expectSignal=1 lamSM-eff/comb-0-datacard.txt > lamSM-eff/comb-0-asymp.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 lamSM-eff/comb-1-datacard.txt > lamSM-eff/comb-1-max-like.txt
combine -M Asymptotic -t -1 --expectSignal=1 lamSM-eff/comb-1-datacard.txt > lamSM-eff/comb-1-asymp.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 lamSM-eff/comb-2-datacard.txt > lamSM-eff/comb-2-max-like.txt
combine -M Asymptotic -t -1 --expectSignal=1 lamSM-eff/comb-2-datacard.txt > lamSM-eff/comb-2-asymp.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 lamSM-eff/comb-3-datacard.txt > lamSM-eff/comb-3-max-like.txt
combine -M Asymptotic -t -1 --expectSignal=1 lamSM-eff/comb-3-datacard.txt > lamSM-eff/comb-3-asymp.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 lamSM-eff/comb-4-datacard.txt > lamSM-eff/comb-4-max-like.txt
combine -M Asymptotic -t -1 --expectSignal=1 lamSM-eff/comb-4-datacard.txt > lamSM-eff/comb-4-asymp.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 lamSM-eff/comb-5-datacard.txt > lamSM-eff/comb-5-max-like.txt
combine -M Asymptotic -t -1 --expectSignal=1 lamSM-eff/comb-5-datacard.txt > lamSM-eff/comb-5-asymp.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 lamSM-eff/comb-6-datacard.txt > lamSM-eff/comb-6-max-like.txt
combine -M Asymptotic -t -1 --expectSignal=1 lamSM-eff/comb-6-datacard.txt > lamSM-eff/comb-6-asymp.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 lamSM-eff/comb-7-datacard.txt > lamSM-eff/comb-7-max-like.txt
combine -M Asymptotic -t -1 --expectSignal=1 lamSM-eff/comb-7-datacard.txt > lamSM-eff/comb-7-asymp.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 lamSM-eff/comb-8-datacard.txt > lamSM-eff/comb-8-max-like.txt
combine -M Asymptotic -t -1 --expectSignal=1 lamSM-eff/comb-8-datacard.txt > lamSM-eff/comb-8-asymp.txt

combine -M MaxLikelihoodFit --expectSignal=1 -t -1 lamSM-eff/comb-9-datacard.txt > lamSM-eff/comb-9-max-like.txt
combine -M Asymptotic -t -1 --expectSignal=1 lamSM-eff/comb-9-datacard.txt > lamSM-eff/comb-9-asymp.txt