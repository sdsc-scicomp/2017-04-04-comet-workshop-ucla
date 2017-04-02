#!/bin/bash
#SBATCH --job-name="jupyter-notebook"
#SBATCH --output="jupyter-notebook.%j.%N.out"
#SBATCH --partition=compute
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=24
#SBATCH --export=ALL
#SBATCH --reservation=UCLARes
#SBATCH -t 04:00:00

module load anaconda
jupyter notebook --no-browser --ip=*
