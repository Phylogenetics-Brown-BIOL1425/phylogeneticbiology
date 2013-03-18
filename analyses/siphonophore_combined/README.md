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

This takes care of most of the differences, but not all. By hand, open the 
18s.stripped.fasta file in a text editor and change the names of Porpita and 
Velella so they are the same as in the 16s.stripped.fasta file.


## Concatenate the sequences

Now you have two alignment files that are ready to be joined into a single file. 
There are a few ways to do this, we'll use Mesquite. Follow 
[these streamlined instructions](http://ib.berkeley.edu/courses/ib200a/ib200a_sp2008/ConcatenatingDataSets.pdf).
There is more information available on concatenation in the  
[Mesquite Documentation](http://mesquiteproject.org/mesquite_folder/docs/mesquite/molecular/molecular.html#concatMatrices).

After you have created the concatenated nexus file, export the data in phylip 
format. In the Mesquite File menu, select Export..., then select phylip. Set the 
taxon names length to 50 and and line ending to Unix. Call the file 
combined.phy.


## Configuring RAxML for multiple partitions

We will now create the file needed by RAxML to know which sites belong to which 
genes. This will be specified to RAxML with the `-q` flag.

Open the combined.nex file, and look at the SETS block:

	BEGIN SETS;
		CHARPARTITION * UNTITLED  (CHARACTERS = Character_Matrix) =  Character_Matrix :  1 -  494, Character_Matrix1 :  495 -  2248;
	
	END;
	
This tells me that 16s is sites 1-494, and 18s is sites 495-2248. Yours may be 
slightly different.

Now, take a look at the RAxML [manual](http://sco.h-its.org/exelixis/oldPage/RAxML-Manual.7.0.4.pdf) 
to understand how to set up `-q multipleModelFileName`. We first need to create 
a file that has information on which columns belong to which genes. Based on 
the portion of combined.nex shown above, I created a partition file called part 
with the following contents:

	DNA, r16s = 1-494
	DNA, r18s = 495-2248
	
This provides the data type, name, and sites for each partition. Now I'll run 
the raxml analysis:

	interact
	raxmlHPC -f a -x 12345 -p 12345 -N 10 -m GTRGAMMA -s combined.phy -n boot10 -q part
	
This will generate several output files, including the tree and a .info file 
with model parameters, among other things.


## Running MrBayes

This is a very brief introduction to MrBayes. More detailed tutorials are 
available at the [MrBayes site](http://mrbayes.sourceforge.net/wiki/index.php/Tutorial_3.2) 
and in [Tracy Heath's example](https://molevol.mbl.edu/wiki/index.php/MrBayes).

While RAxML takes phylip files, MrBayes takes nexus files. The MrBayes commands 
can even be embedded right into the same file that has the data. MrBayes, 
however, requires a simplified nexus file format that doesn't have all the 
blocks and metadata that Mesquite includes in nexus files by default. 
Fortunately, Mesquite can export simplified nexus files that meet all of the 
requirements of MrBayes.

In Mesquite, open the combined.nex file created above. From the 'File' menu, 
select 'Export...', then select 'Export NEXUS for MrBayes', and click 'OK'. 
Delete all the text in the 'MrBayes block' window, we are going to create a 
MrBayes block separately. Leave the 'Simplify names' checkbox checked. 
Click 'Export' in the window that comes up, and save the new file as 
'mb_data.nex'. 

Open a new file in a text editor and paste in the following block of commands 
(your charset locations may be slightly different):


	begin mrbayes;
		log start filename=mb.log;
		set autoclose=yes nowarn=yes;
	
		[ Load the data ]
		execute mb_data.nex;
		
		outgroup Porpita_porpita;
	
		[ Define the gene regions ]
		CHARSET  r16s  =  1-494;
		CHARSET  r18s  =  495-2248;
		
		[ Set up the partition ]
		partition by_locus = 2 : r16s , r18s; 
		set partition=by_locus;
		
		[ Specify the GTR+Gamma model ]
		lset applyto=(all) nst=6 rates=gamma;
		
		[ Unlink parameters across partitions ]
		unlink revmat=(all) statefreq=(all) shape = (all);
		prset applyto=(all) ratepr=variable;
		
		[ Setup and run the analysis ]
		mcmcp nruns=2 ngen= 2000000 printfreq=1000  samplefreq=500 nchains=4 savebrlens=yes filename=siph_combined;	
		mcmc;
	end;

Save this file as 'mb_analysis.nex'

Copy over the mpi_mb.sh batch file from the same directory as 
this README.md. Take a look at the batch file to see how MrBayes will be 
launched. The block above specifies 2 runs, each with 4 chains. This takes a 
total of 8 cores. Note that the batch file requests one node with 8 cores. 

Submit your job with:

	sbatch mpi_mb.sh
	
Once complete, move the siph_combined.* files to your laptop. Open 
[Tracer](http://tree.bio.ed.ac.uk/software/tracer/), and use it to inspect the 
.p (profile) files for each run. Examine mixing, burn-in, and other aspects of 
all parameters. Also, take a look at the mb.log file. This records a variety of 
details about the the run as it proceeds, including the standard deviations of 
the split frequencies. These 
help you understand how long of a run is long enough. The smaller the value the 
better, and you want it to be lower than 0.01 by the time you finish. In the 
run I did, it had dropped to 0.003973 at 2 million generations.

The runs I did burned in before 100,000 generations. We sampled every 500 
generations, so that is a burnin of 200 trees. We'll now use the MrBayes 
command `sumt` to summarize the post-burnin trees.

In the directory where you ran the mrbayes analysis, launch an interactive 
MrBayes session with the command `mb-serial` (the name of this command will be 
different on different clusters). Then, when you get the MrBayes prompt, 
execute the following two commands:

	execute mb_data.nex;
	sumt filename=siph_combined burnin=200 nruns=2;
	
The first command loads the data. The second one summarizes the trees. More 
information on the `sumt` command is available at the 
[MrBayes site](http://mrbayes.sourceforge.net/Help/sumt.html).


