import re, sys

usage = """
Shortens the header of NCBI fasta files to Genus_species_gi

usage:

python shorten_headers in.fasta > out.fasta


Written by Casey Dunn, Brown University, February 4, 2013.


"""

def shorten_headers( in_name ):
	infile = open( in_name, "rU" )
	out = ""
	for line in infile:
		out = out + re.sub( 
			r"^>gi\|(\d+)\|[^|]+?\|[^|]+?\| (\w+) (\w+) .+?$", 
			r">\2_\3_\1", line )
	return( out )

if __name__ == "__main__":
	if len(sys.argv) < 2:
		print usage
		sys.exit( 0 )
	in_name = sys.argv[1]
	print shorten_headers( in_name )
