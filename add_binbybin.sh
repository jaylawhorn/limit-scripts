#!/bin/bash

CHAN=$1

if [ $CHAN == "11" ]; then
    PREF=tautau
    IN_FILE=~/delphes-dihiggs/SignalExtraction/hh_tt_inputs.root
    OUT_FILE=hh_tt_inputs.root
    UNC_CONF=setup/tt/unc-bbtt.conf
    UNC_VALS=setup/tt/unc-bbtt.vals
    CGS_CONF=setup/tt/cgs-bbtt.conf
fi

if [ $CHAN == "13" ]; then
    PREF=mutau
    IN_FILE=~/delphes-dihiggs/SignalExtraction/hh_mt_inputs.root
    OUT_FILE=hh_mt_inputs.root
    UNC_CONF=setup/mt/unc-bbtt.conf
    UNC_VALS=setup/mt/unc-bbtt.vals
    CGS_CONF=setup/mt/cgs-bbtt.conf
fi

if [ $CHAN == "12" ]; then
    PREF=eletau
    IN_FILE=~/delphes-dihiggs/SignalExtraction/hh_et_inputs.root
    OUT_FILE=hh_et_inputs.root
    UNC_CONF=setup/et/unc-bbtt.conf
    UNC_VALS=setup/et/unc-bbtt.vals
    CGS_CONF=setup/et/cgs-bbtt.conf
fi

cp $UNC_CONF ${UNC_CONF%.*}-bbb.conf
cp $UNC_VALS ${UNC_VALS%.*}-bbb.vals

add_stat_shapes.py --prefix $PREF --filter '*[TWVH]*' $IN_FILE $OUT_FILE --threshold 0.05 > bbb_temp.txt
awk '{ print $1 "\t shape" }' bbb_temp.txt >> ${UNC_CONF%.*}-bbb.conf
awk -v name=$PREF 'BEGIN { FS="_" } ; { print name"\t " $2 "\t" $1"_"$2"_"$3"_"$4 "\t 1.0" }' bbb_temp.txt >> ${UNC_VALS%.*}-bbb.vals