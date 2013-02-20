# Hydroidolina Phylogeny Assignment

In this assignment you will reanalyze the data from the following paper:

Cartwright, P., Evans, N. M., Dunn, C. W., Marques, A. C., Miglietta, M. P., 
Schuchert, P., & Collins, A. G. (2008). Phylogenetics of Hydroidolina 
(Hydrozoa: Cnidaria). Journal of the Marine Biological Association of the UK, 
88(08), 1663-1672. 
[doi:10.1017/S0025315408002257](http://dx.doi.org/10.1017/S0025315408002257)

Take a look at the paper to familiarize yourself with the problem at hand, the 
approach taken, the data used, and the analyses that are presented.

Below are a series of tasks to perform with these data. Keep all of the files 
you produce in a folder in your data folder on the cluster. Within this 
directory, make a file called README and use it as an analysis notebook. Record 
the steps you took, the commands you executed, and commentary about why you did 
what you did and what your interpretations of the results are.

When you are done, 
type `pwd` in the directory where you performed your analyses, and email me the 
path. By sure to prefix the email subject with 'phylobio: '


## Download the data

Table 1 of the paper presents the [NCBI](http://www.ncbi.nlm.nih.gov) accession 
numbers for all the data included in the analyses. I have extracted the data 
from Table 1 and are presented here in three files:

    28s.txt
    18s.txt
    16s.txt
    
Use the 
[NCBI Batch Entrez interface](http://www.ncbi.nlm.nih.gov/sites/batchentrez) 
to download a fasta file for the sequences listed in each of these three files. 
From the top of the interface, select the 'Nucleotide' Database and chose a file 
of accession numbers. Click retrieve, and then follow the link that is generated. 
This will take you to a page with the sequence summaries. Click 'Send to', 
choose 'File' as the destination, 'FASTA' as the format, and then click 
'Create File'.

Repeat this for each of the three gene files. 


## Generate alignments

Once you have a fasta file, create alignments as described in the examples we 
have already walked through (simplify the headers and align the data with 
mafft).

Take a look at your alignment in mesquite (you will need to transfer it to 
your own computer for this). Make sure that all the sequences are in the same 
direction and that there are no other conspicuous problems. If some sequences 
are in the wrong direction, copy the original fasta file, replace the 
offending sequences with their reverse compliments (you can generate the 
reverse compliment with one of many online tools, such as 
[this one](http://www.bioinformatics.org/sms/rev_comp.html)). The realign the 
file with mafft and inspect it again.


## Trimming the alignments

This paper used [Gblocks](http://molevol.cmima.csic.es/castresana/Gblocks.html) 
to trim highly variable and poorly sampled portions of the alignment. Visit the 
website for this tool and familiarize yourself with how it us used. Then look 
at the paper to find the exact settings used for trimming in this analysis. 
Use the same settings to trim your alignments for the four genes.


## Independent phylogenetic analyses of each gene

