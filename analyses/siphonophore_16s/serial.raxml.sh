#!/bin/bash

# Request an hour of runtime:
#SBATCH --time=1:00:00

# Default resources are 1 core with 2.8GB of memory.

# Use more memory (4GB):
#SBATCH --mem=4G

# Specify a job name:
#SBATCH -J MySerialJob

# Specify an output file
#SBATCH -o MySerialJob-%j.out
#SBATCH -e MySerialJob-%j.out

# Run a command

module load raxml

raxmlHPC -f a -x 12345 -p 12345 -N 10 -m GTRGAMMA -s siph16s.phy -n boot10

