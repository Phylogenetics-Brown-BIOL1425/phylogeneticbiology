# Siphonophore 16s example

## Introduction

The purpose of this example is to introduce you to the tools of a basic
phylogenetic analysis. It draws on a subset of the data from this paper:

Dunn, CW, PR Pugh, and SHD Haddock (2005) Molecular phylogenetics of the 
Siphonophora (Cnidaria), with implications for the evolution of functional 
specialization. Systematic Biology 54:916-935.
[doi:10.1080/10635150500354837](http://dx.doi.org/10.1080/10635150500354837)

The instructions below are all you need to complete the analysis. The files 
that are generated are included in this folder so that you can compare them 
to your results and try later steps if there is anything that doesn't work.

## Implementing the analysis


### Getting setup to run the analyses on the cluster.

We'll be running these analyses on the Oscar cluster here at Brown. Consult the 
[Oscar documentation](http://www.brown.edu/Departments/CCV/doc) for additional 
information.

Some of the steps below require that you load some modules with specialized 
software. To see all the modules that are available on the system, use the 
command:

    module avail

To load the modules needed for the examples below, enter:

    module load python
    module load mafft
    module load raxml


### Getting the data

The first step is to get the data. They can be downloaded from:

http://www.ncbi.nlm.nih.gov/nuccore?term=txid42759%5BOrganism%3Aexp%5D%2016S%20Dunn

Under the "Send to:" menu, select "File:", then "FASTA" for the format.

Rename the downloaded fasta file as `siph16s-raw.fasta`.

Use cyberduck to transfer the file 


### Renaming the sequences

The sequences that are downloaded have very long names that can complicated 
downstream analyses. It is a good idea to rename them. 

Rename each sequence as `Genus_species_gi`, and name the new file 
`siph16s.fasta`.

You can make the change in a text editor (eg TextWrangler) with the following 
regular expressions (make sure 'grep' is enabled in the search box):

Search:  `^>gi\|(\d+)\|[^|]+?\|[^|]+?\| (\w+) (\w+) .+$`
Replace: `>\2_\3_\1`

For more information on regular expressions, take a look at Chapters 2 and 3 of 
[Practical Computing for Biologists](http://practicalcomputing.org). We have 
also posted a table with common regular expression terms along with [other 
appendices](http://practicalcomputing.org/files/PCfB_Appendices.pdf).

Alternatively, you can make the change at the command line with the python 
script `shorten_headers.py`.

    shorten_headers.py siph16s-raw.fasta > siph16s.fasta


### Aligning the sequences

Align the sequences with the following command:

    mafft siph16s.fasta > siph16s.aligned.fasta

This generates a new file, siph16s.aligned.fasta, which contains the aligned 
sequences. They are also in fasta format. Use `less` or `vi` to take a look at 
the contents of the alignment file.

Here, we used the default parameters. For more information on fine-tuning 
alignments, check out the mafft help with:

    mafft -h

or consult the [manual](http://mafft.cbrc.jp/alignment/software/).

This is a small dataset, so this alignment is not computationally intensive. 
For larger alignments, you should use the job scheduler (described below in 
the raxml section).


### Converting the alignment format

mafft will generate an alignment that is in fasta format, we need to convert 
this alignment to a phylip format for the next step. This can be done in 
a variety of programs, including 
[mesquite](http://mesquiteproject.org/mesquite/mesquite.html).

You can also use the fasta2phylip.py python program in the scripts folder:

    fasta2phylip.py siph16s.aligned.fasta > siph16s.phy

Take a look at your alignment in mesquite to make sure that there are no 
problems such as sequences that are in the wrong direction.


### Estimating the phylogeny with raxml

[raxml](https://github.com/stamatak/standard-RAxML) is a an efficient and 
widely used program for maximum likelihood phylogenetic analyses. Consult the 
[manual](http://sco.h-its.org/exelixis/oldPage/RAxML-Manual.7.0.4.pdf) for 
detailed information on use and options.

As for the alignment above, we are going to use default parameters for now. 
Later we will cover a variety of details that you will want to optimize.

The command for running our analysis will look like this:


### Viewing the phylogeny


