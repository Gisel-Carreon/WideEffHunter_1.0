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

####--Motif search--####

perl ./codes/motif_fdr.pl ./tmp/input.fasta ./data/motif_db.tab ./tmp/mtf_result.txt;

cut -f1 ./tmp/mtf_result.txt > ./tmp/id1.txt

####--Domain search--#####

perl ./codes/domain_fdr.pl ./tmp/input.fasta ./data/domain_db.tab ./tmp/dom_result.txt;

cut -f1 ./tmp/dom_result.txt > ./tmp/id2.txt


####
