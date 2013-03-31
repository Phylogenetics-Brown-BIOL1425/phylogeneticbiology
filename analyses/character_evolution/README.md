# Character evolution

In these examples you will explore the evolution of characters on phylogenetic 
trees. This is a bit different than our previous analyses, where we started 
with character data and built a tree. In the present analyses, we will start 
with both a tree and character data. In most situations the tree will have been 
inferred from molecular sequence data, and the character data will be 
morphological.

In the previous exercises where we built trees, you used a variety of programs 
at the command line. These programs were there themselves written in several 
different languages. In the past decade, a large community of phylogenetic 
biologists interested in character evolution have written many analysis tools 
in the programming language R. This set of tools provides a rich environment 
for the study of character evolution. All of our character evolution analyses 
will be conducted as interactive R sessions. 


## Getting oriented with R

R, like python and many other languages, can be used interactively, where you 
enter a few commands at a time, or in batch mode, where a series of commands are 
placed in a file and executed all at once. We will use R interactively, and 
load R code that others have already written for phylogenetic analyses as we 
go.

There are already *many* general introductions, tutorials, and quick-references 
for R. I therefore won't provide a background on R itself, we will dive right 
into some analyses.

There is detailed information on phylogenetic analysis with R at both 
(the R phylo wiki)[http://www.r-phylo.org/wiki/Main_Page] and the 
(CRAN task page for phylogenetics)[http://cran.r-project.org/web/views/Phylogenetics.html].

For the analyses below, you will need to install the `ape` library in R.


## Phylogenetic Independent Contrast

This example expands on that presented at the 
(R phylogenetics wiki)[http://www.r-phylo.org/wiki/HowTo/Phylogenetic_Independent_Contrasts].
The data files are also included in the same directory as this document. 

Copy the data files (`Geospiza.txt` and `Geospiza.nex`) to a directory on your 
computer. Open the R interface (which was installed alongside the rest of the 
R components) or open a terminal window and launch an interactive R session 
with the command `R`.

Now, change to the directory where your data files are:

    setwd('DATA_DIR')

Where `DATA_DIR` is the directory where you put the data files. The R command 
`setwd()` is much like the shell command `cd` - it controls your working 
directory.

Load and prepare the data:

    geodata<-read.table("Geospiza.txt")
    geotree<-read.nexus("Geospiza.nex")
    geotree <- drop.tip(geotree, "olivacea")
    
That last command is necessary since there is one taxon in the tree that isn't 
in the data file.
