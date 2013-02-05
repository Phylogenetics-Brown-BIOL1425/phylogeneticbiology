#! /usr/bin/env python
import sys
from Bio import AlignIO

usage = """
Converts an alignment from fasta format to phylip format

usage:

python fasta2phylip in.fasta > out.phy


Written by Casey Dunn, Brown University, February 4, 2013.


"""


def fasta2phylip( in_name ):
	# We will manually generate the output phylip file rather than use the 
	# AlignIO phylip export, since it truncates the taxon names to 10 characters
	
	alignment = AlignIO.read( in_name , "fasta" )
	
	# First, get the length of the longest name
	longest_name = 0
	num_seqs = 0
	for record in alignment :
		num_seqs = num_seqs + 1
		if len(record.id) > longest_name:
			longest_name = len(record.id)
	
	# Initialize the output string
	out = "{0} {1}\n".format( num_seqs, alignment.get_alignment_length() )
	
	# Now generate the string of sequences
	for record in alignment :
		# name = "{0: < longest_name}".format( record.id )
		name = "{0: <{width}}".format( record.id, width=longest_name+4 )
		line = "{0}    {1}\n".format( name, record.seq )
		out = out + line
	return( out )

if __name__ == "__main__":
	if len(sys.argv) < 2:
		print usage
		sys.exit( 0 )
	in_name = sys.argv[1]
	print fasta2phylip( in_name )


