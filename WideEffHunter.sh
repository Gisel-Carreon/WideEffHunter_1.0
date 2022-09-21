#!/bin/bash
#
#
# This is WideEffHunter.....Welcome.....!
#
#
# Edit this script to suit your installation needs.
#
#
# 
#
# Contact us:
# KGCA
# carreon.gisel@gmail.com
# BCC
# blondy.canto@cicy.mx
#
#
#
# Be sure to installing the next packages:
#
# Linux/Ubuntu 20.04.4 LTS or later
# Perl 5.30.00 or later
# Bioperl 1.7.8 or later 
# Python 2.7.18 or later
# Biopython 1.70 or later
# BLAST 2.9.0 or later.
#
#
#
read -p "----------------- Welcome to WideEffHunter ----------------- " -t 2

echo -e "\n                                             " ;

read -p "----------------- Please indicate the path to FASTA file: $" -t 2;
####--Open file

mkdir -p ./tmp

read file;

cat $file > ./tmp/input.fasta;

####--Motif and domains search

echo "----------------- Searching motifs and domains -------------";

sh ./codes/motif_domain_prediction.sh

####--Homology analyses against true effectors

echo "----------------- Running homology analysis ----------------";

#**NOTE: We include the true effectors database for your use. If you have more information or more effectors to include in the database. Please use the next comand for database formating**
#
#formatdb -i </path/tho/the/fasta/file/.fasta> -p T -o T
#
#You can modifying the parameters for your convenience

sh ./codes/homology_analyses.sh 

####--ELiminate redundance

sh ./codes/clean_redundances.sh 

####--Extract the effector database

mkdir -p ./Effectors;

perl ./codes/fasta.pl ./tmp/id-eff.txt ./tmp/input.fasta ./Effectors/Effectors.fasta;

####--Length characterization and Cys count of each sequence

echo "----------------- Length and Cys characterization ----------";

perl ./codes/length_and_cys.pl ./Effectors/Effectors.fasta ./Effectors/Length_and_Cys.txt;

echo "----------------- Complete analysis ------------------------";

####--End of analyses
