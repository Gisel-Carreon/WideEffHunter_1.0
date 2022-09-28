###WideEffHunter_1.0: Prediction of canonical and no-canonical effectors in fungi and oomycetes proteomes.


###(2022) Karla Gisel Carreón-Anguiano, Blondy Canto-Canché.
###Contact: carreon.gisel@gmail.com; cantocanche@cicy.mx
              
                
     ******   PLEASE DO NOT REDISTRIBUTE THE PACKAGE   ******


###INTRODUCTION


Fungi and oomycete pathogens are the principal constraints to achieving world food security. These pathogens infect their hosts by releasing effectors. The effectors ultimately suppress plant defense responses, enabling the pathogen to form an association with the plant host which can result in disease.
Effectors are commonly predicted from secretomes based on criteria such as small size, cysteine-rich and transmembranal domain.
WideEffHunter runs several analysis on proteomes, that predicts effectors based on effectors-related domains and motifs, as well as homology to known validated effectors, is suitable for the retrieval of whole effectoromes (canonicals and non-canonicals) in pathogenic and nonpathogenic fungi and oomycetes. 
WideEffHunter is a user-friendly and modular algorithm that can be updated continuously by readers with new domain, motifs and novel effectors, providing a powerful tool to strengthen effectoromics research. 

			
			
			
INSTALLATION INSCRUCTIONS


DESCRIPTION

WideEffHunter produces ab initio predictions of canonical and non-canonical effectors proteins using as an input the whole proteome.The method uses a effectors-related domains and motifs as well homology with know elucidated effectors.

We hope that this code can become a plataform enabling multiple effector analyses.effector discovery.

We would welcome any feedback, suggestions, questions, issue reports for the code. You can find more contact details at the bottom of this page (#Contact us#)


###CITATION AND FURTHER INFORMATION
Carreón-Anguiano, K.G., Todd, J.N.A., Chi-Manzanero, B.H., Couoh-Dzul, O.J., Islas-Flores,I., Canto-Canché,B. (2022). WideEffHunter: An algorithm to predict canonical and non-canonical effectors in fungi and oomycetes. International Journal of Molecular Science.MDPI.(submitted article)


##PREREQUISITES
Linux/Ubuntu 20.04.4 LTS or later
Perl 5.30.00 or later
Bioperl 1.7.8 or later 
Python 2.7.18 or later
Biopython 1.70 or later
BLAST 2.9.0 or later.


###MINIMAL REQUIREMENTS
-4 CPUs
-8 GB RAM
-A bash terminal in a unix-type environment, we primarily test on the current ubuntu LTS.


#Pre-installation for use WideEffHunter:

WideEffHunter 1.0 has been written in Perl and Bash, the code is available for Linux. The standard UNIX tools perl, awk (or nawk etc.), [t]csh, paste and sed must be available on the system.

Download the latest release from this github repo (e.g. WideEffHunter_1.0.zip).

1.Unpack WideEffHunter_1.0 in your desired location:

unzip WideEffHunter_1.0.zip
chmod -R 777 WideEffHunter_1.0/
cd WideEfHunter_1.0


2.For homolgy analyses, WideEffHunter uses Blast. You need to install blast in you local computer, please see the next page for installation: 

https://www.ncbi.nlm.nih.gov/books/NBK569861/


3. Run WideEffHunter:

./WideEffHunter.sh

or

bash WideEffHunter.sh

or 

sh WideEffHunter.sh





###Contributing
If you can help us understand the needs of your research community and what proteins you are interested in (perhaps beyond known effectors), we would love to collaborate.
We will ensure that proper credit is given, which could include future authorship of more substantial contributions. It would be wonderful to develop a community around this.
Please contact us for more information or for any suggestion.








###Special note
Research in memory of M.Sc. Bartolomé H. Chí Manzanero.
