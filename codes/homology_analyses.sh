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

####--Homology analysis of input against true effectors database--####


blastp -db ./data/DATABASES/true_effectors_db/314_POSITIVE_DB.fasta -query ./tmp/input.fasta -out ./tmp/res_blast.txt -outfmt 6 -evalue 1e-6 -max_hsps 1 -max_target_seqs 5 -qcov_hsp_perc 45


cut -f1 ./tmp/res_blast.txt > ./tmp/id3.txt


####
