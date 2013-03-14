#!/bin/bash

# Request X hours of runtime:
#SBATCH --time=2:00:00

# Use 1 nodes with 8 tasks each, for 8 MPI tasks:
#SBATCH --nodes=1
#SBATCH --tasks-per-node=8

# Specify a job name:
#SBATCH -J MyMrBayesJob

# Specify an output file
#SBATCH -o MyMPIJob-%j.out
#SBATCH -e MyMPIJob-%j.out

# Run a command

module load mrbayes

mpirun -n 8 mb mb_analysis.nex

