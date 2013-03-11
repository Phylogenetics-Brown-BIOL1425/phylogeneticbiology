# Siphonophore combined 16s and 18s example

This example builds on our earlier exploration of siphonophore 16s, this time 
incorporating data from 18s as well. The same paper applies:

Dunn, CW, PR Pugh, and SHD Haddock (2005) Molecular phylogenetics of the 
Siphonophora (Cnidaria), with implications for the evolution of functional 
specialization. Systematic Biology 54:916-935.
[doi:10.1080/10635150500354837](http://dx.doi.org/10.1080/10635150500354837)


## Preparing the sequences

We will batch download the sequences, as in 
phylogeneticbiology/assignments/hydroidolina/. The 16s.txt and 18s.txt files 
are in the same directory as this README.md file. These accession numbers are a 
subset of those shown in Table 1 of the paper. I reduced the number of accession 
numbers so that there was no more than one sequence for each gene per species.

Once you have downloaded the sequences in fasta format, reformat the headers, 
align them, and run them through gblocks.

	shorten_headers.py 16s-raw.fasta > 16s.fasta
	mafft 16s.fasta > 16s.aligned.fasta
	Gblocks 16s.aligned.fasta -t=d -b4=5 -b5=h
	
	shorten_headers.py 18s-raw.fasta > 18s.fasta
	mafft 18s.fasta > 18s.aligned.fasta
	Gblocks 18s.aligned.fasta -t=d -b4=5 -b5=h
	
You now have two trimmed alignments, 16s.aligned.fasta-gb and 
18s.aligned.fasta-gb. We are going to combine them into a single alignment 
based on the header names. In order to do this, the headers need to be 
exactly the same for each of the sequences to be combined. At present, they are 
different because they include a sequence-specific gi number. We'll get rid of 
this with the command line program `sed`:

	sed 's/_[0-9]*$//g' 16s.aligned.fasta-gb > 16s.stripped.fasta
	sed 's/_[0-9]*$//g' 18s.aligned.fasta-gb > 18s.stripped.fasta
	
`sed` makes use of regular expressions to edit text streams. For more 
information, see Practical Computing for Biologists.

Now you have two alignment files that are ready to be joined into a single file. 
There are a few ways to do this, we'll use mesquite.

