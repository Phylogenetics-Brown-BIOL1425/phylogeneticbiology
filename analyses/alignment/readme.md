# Alignment examples

Trimmed the hydriodolina 16s alignment, exported as a fasta file to create `16s_small.fasta`.

Alignment under default settings:

    mafft 16s_small.fasta

Manual at http://mafft.cbrc.jp/alignment/software/manual/manual.html#lbAI explains arguments. `--op` is gap opening penalty, `--ep` is the extension penalty.


Default corresponds to:


    mafft --op 1.53 --ep 0.123 16s_small.fasta


Can tune this to generate some extremes:

    mafft --op 0 --ep 0 16s_small.fasta

    mafft --op 100 --ep 100 16s_small.fasta


These have a big impact on the length of the alignments:

    penalty    length
    default    53
    0          95
    100        52