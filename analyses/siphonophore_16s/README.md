# Siphonophore 16s example

## Introduction

The purpose of this example is to introduce you to the tools of a basic
phylogenetic analysis. It draws on a subset of the data from this paper:

Dunn, CW, PR Pugh, and SHD Haddock (2005) Molecular phylogenetics of the 
Siphonophora (Cnidaria), with implications for the evolution of functional 
specialization. Systematic Biology 54:916-935.
[doi:10.1080/10635150500354837](http://dx.doi.org/10.1080/10635150500354837)

This tutorial assumes that you are familiar with logging onto a remote computer, 
transferring files, and the basics of working at the command line. If this is 
not the case, take a look at [Haddock and Dunn](http://practicalcomputing.org) 
chapters 4-5 and chapter 20 pages 383-396.

The instructions below are all you need to complete the analysis. The files 
that you will generate are included in this folder so that you can compare them 
to your results and try later steps if there is anything that doesn't work.

## Implementing the analysis


### Getting setup to run the analyses on the cluster.

We'll be running these analyses on the Oscar cluster here at Brown. Consult the 
[Oscar documentation](http://www.brown.edu/Departments/CCV/doc) for additional 
information.

Create a new folder for the analyses in your data directory. If your username 
is guest168, for example, you would use the following commands to create the 
new directory (which you may give a different name) and move to it:

    cd ~/data/guest168/
    mkdir siph16s_06Feb2013
    cd siph16s_06Feb2013/
    
You can execute the commands below in this new directory. If you do use any of 
the example files, copy them to this new directory with `cp` rather than use 
them in the main repository.

Remember to keep a notebook of what you do. You can include a link to this file, 
record the commands you use, and add various comments about results etc...

Some of the steps below require that you load some modules with specialized 
software. If you are using your guest account that has been created for this 
class (eg, guest168) then all the needed modules are loaded when you log in and 
you can skip to the next section. If you are using a different oscar account,
you will need to manually load the modules.

To see all the modules that are available on the system, use the 
command:

    module avail

To load the modules needed below, enter:

    module load python
    module load biol1425
    module load R
    module load mafft
    module load raxml

### Getting the data

The first step is to get the data. They can be downloaded from:

http://www.ncbi.nlm.nih.gov/nuccore?term=txid42759%5BOrganism%3Aexp%5D%2016S%20Dunn

Under the "Send to:" menu, select "File:", then "FASTA" for the format.

Rename the downloaded fasta file as `siph16s-raw.fasta`.

Use cyberduck to transfer the file to the data directory you created above. 
Alternatively, if you are working in an Oscar account created for the class, 
you can copy it to the new directory with:

    cp ~/data/shared/phylogeneticbiology/analyses/siphonophore_16s/siph16s-raw.fasta ./


### Renaming the sequences

The sequences that are downloaded have very long names that can complicated 
downstream analyses. It is a good idea to rename them. 

Rename each sequence as `Genus_species_gi`, and name the new file 
`siph16s.fasta`.

You can make the change in a text editor (eg TextWrangler) with the following 
regular expressions (make sure 'grep' is enabled in the search box):

Search:  `^>gi\|(\d+)\|[^|]+?\|[^|]+?\| (\w+) (\w+)[\. ].+$`
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

Phylogenetic inference can be computationally intensive (an understatement). 
We can't just run it from the command line on the cluster, as this would bring 
down the login node (the computer where you land when you log into the cluster). 
Instead, we'll run the command with a job manager that allocates resources. The 
details of a job manager are system-specific, so the following few commands 
just apply to [Oscar](http://ccv.brown.edu/doc/getting-started.html). The 
following will give you an overview of the system:

    nodes
    allq
    myq
    
`nodes` summarizes the computer nodes and their properties. `allq` summarizes 
all the jobs that are currently running. `myq` summarizes your jobs that are 
currently running.

### Using Oscar in interactive mode

There are two ways to run jobs - interactively and in batch mode. We'll first 
give interactive jobs a try. In this mode, you type commands as usual at the 
command line but they are executed on a dedicated CPU. Enter interactive mode 
as follows:

    interact

This puts you in interactive mode, and provides some information about the 
computer node you have been assigned. Now, type your raxml command:

    raxmlHPC -f a -x 12345 -p 12345 -N 10 -m GTRGAMMA -s siph16s.phy -n boot10
    
This command has a few parts. Consult the raxml manual for more details, or run 
the following command to get information on all the raxml options:

    raxmlHPC -help

The breakdown of our command is:

- `raxmlHPC` calls the raxml program

- `-f a` specifies a rapid bootstrap analysis followed by a maximum likelihood 
search

- `-x 12345` Turns on bootstras and sets the 
[random seed](http://en.wikipedia.org/wiki/Random_seed). Any integer would do.

- `-p 12345` Sets the random seed for the starting tree. Any integer would do.

- `-N 10` Specifies that we will do 10 bootstrap replicates.

- `-m GTRGAMMA` Sets the model of molecular evolution.

- `-s siph16s.phy` Specifies the input alignment name.

- `-n boot10` Gives the analysis a name, which will be used for output files.

The above command took 183.114057 seconds to run. This isn't that bad, 
but a "real" analysis would have many more bootstraps (usually on the order of 
500), which greatly lengthens run time.

Once your analysis is complete, type `exit` to leave interactive mode.

### Using Oscar in batch mode

Let's try it again, this time using the job manager in batch mode. Rather than 
gain control of a computer node and then type your commands at the command line, 
you will use a batch script that configures the job manager and tells it what 
commands to run. You'll then pass this batch file to the job manager, and it 
will allocate resources and start the analysis. This is the best way to run 
large or complicated jobs.

A batch file, `mpi_raxml.sh`, is provided as part of this exercise. Copy it to 
your own analysis directory, and take a look with `vi`. Then, run submit it to 
the manager as follows:

    sbatch mpi_raxml.sh
    myq
    
The `myq` command will give an idea of when it will start, which may take a few 
hours if the cluster is under heavy use.


### Viewing the phylogeny

The raxml analysis generates several files:

    RAxML_bestTree.boot10
    RAxML_bipartitions.boot10
    RAxML_bipartitionsBranchLabels.boot10
    RAxML_bootstrap.boot10
    RAxML_info.boot10

The last part of each of these file names ("boot10"), will depend on the run 
name that was specified with `-n` when calling raxml. These files are:

* `RAxML_bestTree.boot10`, the single tree with the maximum likelihood.
* `RAxML_bipartitions.boot10`, the maximum likelihood tree (with the same 
  topology and branch lengths as above), with bootstrap support mapped onto it.
  This is the file that you will usually examine most closely after the 
  analysis.
* `RAxML_bootstrap.boot10` The trees for each bootstrap replicate.
* `RAxML_info.boot10` Summary information about the analysis, including the 
  likelihood.
  
We'll focus on `RAxML_bipartitions.boot10` for now. First, open it with `less` 
and take a look. Then, copy it to your laptop and open it with FigTree.
