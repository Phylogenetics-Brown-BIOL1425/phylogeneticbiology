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
directory, make a file called NOTEBOOK and use it as an analysis notebook. 
Record the steps you took, the commands you executed, and commentary about why 
you did what you did and what your interpretations of the results are. There 
are questions in some selections below - answer each of these in your notebook.

Refer to the previous example in `phylogeneticbiology/analyses/siphonophore_16s` 
for details on how to perform particular steps. You can, for example, copy over 
the shell scripts for running raxml analyses and edit them for the new analyses.


When you are done, 
type `pwd` in the directory where you performed your analyses, and email me the 
path. By sure to prefix the email subject with 'phylobio: '.


## Download the data

Table 1 of the paper presents the [NCBI](http://www.ncbi.nlm.nih.gov) accession 
numbers for all the data included in the analyses. I have extracted the data 
from Table 1 and are presented here in three files (I also cleaned up a couple 
of typos in the accession numbers):

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
direction (if a sequence is in a different direction, it won't line up with the 
others) and that there are no other conspicuous problems. If some sequences 
are in the wrong direction, copy the original fasta file, replace the 
offending sequences with their reverse compliments (you can generate the 
reverse compliment with one of many online tools, such as 
[this one](http://www.bioinformatics.org/sms/rev_comp.html)). Then realign the 
file with mafft and inspect it again.


Questions:

1. Based on eye-balling the alignments, do you think that each gene has a 
   consistent rate of molecular evolution along its full length?

2. Based on eye-balling the alignments, which gene do you think has 
   the fastest average rate of molecular evolution? The slowest?



## Trimming the alignments

This paper used [Gblocks](http://molevol.cmima.csic.es/castresana/Gblocks.html) 
to trim highly variable and poorly sampled portions of the alignment. Visit the 
website for this tool and familiarize yourself with how it us used. Then look 
at the paper to find the exact settings used for trimming in this analysis. 
Use the same settings to trim your alignments for the three genes.

Note that Gblocks reads fasta alignment files directly, so you won't need to 
reformat them to phylip before running them through Gblocks. Gblocks outputs 
the trimmed alignments in fasta format, so you will need to reformat them to 
phylip format before going on to tree building.

Gblocks is installed on the cluster, and is automatically loaded into class 
accounts. If you aren't using a class account, you can load it with 
`module load gblocks/0.91b`.

To use it, just type:

    Gblocks [arguments]
    
where `[arguments]` is the list of arguments for reading your data and seting 
parameters. Gblocks is not computationally intensive, so you can run it on the 
login node (ie, you don't need to submit a job script).


Questions:

1. Gblocks outputs a report as well as the trimmed alignments. Based on the 
   reports, how much data was removed from each alignment?

2. Take a look at the trimmed alignments. How do they look compared to the 
   input alignments?


## Phylogenetic analyses of each gene

Now that you have trimmed alignments for each gene, you will build trees with 
them. Copy the mpi raxml script from 
`phylogeneticbiology/analyses/siphonophore_16s` and modify it to do a 
maximum likelihood analysis with 100 bootstrap replicates. You should give the 
analyses plenty of time to finish, modify the number of hours to be 4 or 8. 
You can put the three raxml commands for your analyses of the three genes all 
in one shell file, they will run consecutively.

Once you have 
estimated your trees, copy them to your laptop and look at them with Figtree. 
Generate a pdf of the tree and add it to you analysis folder on the cluster.

Questions:

1. Do the trees differ from those published? If so, how?

2. How do the trees for each gene differ from each other?

3. Take a look at the raxml log files. What do these tells you about the 
   different models of molecular evolution for the three genes?
   of molecular evolution of the genes?