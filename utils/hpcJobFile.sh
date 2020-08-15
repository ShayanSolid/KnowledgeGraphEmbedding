#!/bin/bash

#Submit this script with: sbatch thefilename

#SBATCH --time=3-24:00:00   # walltime
#SBATCH --nodes=1   # number of nodes
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=1  # number of processor cores (i.e. threads)
#SBATCH --mem-per-cpu=60000M   # memory per CPU core
#SBATCH -J "rotat-paper"   # job name
#SBATCH -o rotate-paper-slurm-%j.out
#SBATCH --mail-user=shayan.shahpasand@mailbox.tu-dresden.de   # email address
#SBATCH --mail-type=BEGIN,END,FAIL,REQUEUE,TIME_LIMIT,TIME_LIMIT_90
#SBATCH -A p_ml_nimi


source /home/shsh829c/venv/env1/bin/activate


echo $PWD
/scratch/ws/1/shsh829c-RotatE-Paper/KGE_Pattern/run.sh train RotatE 177743_ALL 0 256 128 1000 15 1 0.1 400000 16 -de

exit 0