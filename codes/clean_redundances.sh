#!/bin/bash
# This is WideEffHunter.....Welcome.....!
#
#
# Edit this script to suit your installation needs.
#
#
# 
#
# Contact us:
# BCC
# blondy.canto@cicy.mx
#
# KGCA
# carreon.gisel@gmail.com

####--Eliminate redundance from the results--merge candidates--####

cat ./tmp/id1.txt > ./tmp/all-id.txt;
	cat ./tmp/id2.txt >> ./tmp/all-id.txt;
		cat ./tmp/id3.txt >> ./tmp/all-id.txt;


cat ./tmp/all-id.txt| sed 's/^>//g' > ./tmp/all_matches.txt
	sort ./tmp/all_matches.txt | uniq  > ./tmp/id-eff.txt 


####
