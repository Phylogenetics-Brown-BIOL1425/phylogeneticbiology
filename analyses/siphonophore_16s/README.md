# Siphonophore 16s example

The purpose of this example is to introduce you to the tools of a basic
phylogenetic analysis. It draws on a subset of the data from this paper:

Dunn, CW, PR Pugh, and SHD Haddock (2005) Molecular phylogenetics of the 
Siphonophora (Cnidaria), with implications for the evolution of functional 
specialization. Systematic Biology 54:916-935.
http://dx.doi.org/10.1080/10635150500354837

## Implementing the analysis

### Getting the data

The first step is to get the data. They can be downloaded from:

http://www.ncbi.nlm.nih.gov/nuccore?term=txid42759%5BOrganism%3Aexp%5D%2016S%20Dunn

Under the "Send to:" menu, select "File:", then "FASTA" for the format.

Rename the downloaded fasta file as `siph16s-raw.fasta`.

### Renaming the sequences

The sequences that are downloaded have very long names that can complicated 
downstream analyses. It is a good idea to rename them. 

Rename each sequence as `Genus_species_gi`, and name the new file 
`siph16s.fasta`.

### Aligning the sequences

Align the sequences with the following command:

    mafft siph16s.fasta > siph16s.aligned.fasta
    
### Converting the alignment format

mafft will generate an alignment that is in fasta format, we need to convert 
this alignment to a phylip format for the next step. This can be done in 
a variety of programs, including mesquite.

