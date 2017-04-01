#!/bin/bash
#SBATCH --job-name="dask-workers"
#SBATCH --output="dask-workers.%j.%N.out"
#SBATCH --partition=compute
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=24
#SBATCH --export=ALL
##SBATCH --reservation=SI2016D3Morning
#SBATCH -t 02:00:00

module load anaconda
export PYTHONPATH=/.local/lib/python3.5/site-packages/:$PYTHONPATH

ibrun --npernode=1 ~/.local/bin/dask-worker --scheduler-file ~/.dask_scheduler.json
