# Hydroidolina Phylogeny Assignment - Combining genes and bayesian inference

In this assignment you will reanalyze the data from the following paper:

Cartwright, P., Evans, N. M., Dunn, C. W., Marques, A. C., Miglietta, M. P., 
Schuchert, P., & Collins, A. G. (2008). Phylogenetics of Hydroidolina 
(Hydrozoa: Cnidaria). Journal of the Marine Biological Association of the UK, 
88(08), 1663-1672. 
[doi:10.1017/S0025315408002257](http://dx.doi.org/10.1017/S0025315408002257)


It builds directly on the previous assignment (`../hydroidalina`) 
that independently assessed three genes. Here, you will analyze these same 
genes in a combined matrix, using both likelihood and bayesian methods.

The tools that you will use for creating and analyzing the combined matrix are 
the same as those presented in the example siphonophore analyses 
(`../../analyses/siphonophore_combined`). You are encouraged to refer to this 
example for approaches to the current problem.


## Getting set up

Create a new folder and a new notebook. The notebook should be in plain-text 
(ie, a .txt file), include all commands you issued, comments on why you did 
what you did, and answers to the specific questions posed here. It should be in 
the same directory as your analysis.

Copy over the trimmed alignments (in fasta format) that your produced in the 
previous assignment for each gene. You can use the `cp` command for this.


## Creating the matrix

Create new alignment files with sequence names that include only the species 
name. Combine these into a a single matrix, and export the matrix as both 
phylip and mrbayes-compatible nexus files. In your notebook, record which 
column positions correspond to which genes. 


## Maximum likelihood analyses

Create a RAxML partition file that designates the positions of the genes in 
the combined phylip file. Perform a maximum likelihood analysis with at least 
100 bootstrap replicates.

Questions:

1. How does the resulting tree and support compare to the results published in
   the paper?
   
2. How does the resulting tree and support compare to the separate analyses of 
   each genes?


## Bayesian analyses

Create a file with a MrBayes nexus block that sets the gene partitions and 
launches an analysis with 2 runs of 4 chains each. Let it run at least five 
million generations.

After assessing the burnin, create a single summary tree for both runs.

Questions:

1. Were there a sufficient number of generations in your analysis?

2. What was the number of generations required for burnin in each analysis? 

3. How does the resulting tree and support compare to the maximum likelihood 
   results?
   
4. How do the distributions of model parameters compare to the model parameters 
   inferred in the maximum likelihood analyses?
