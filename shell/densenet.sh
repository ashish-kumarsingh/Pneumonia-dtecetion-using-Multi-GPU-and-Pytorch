#!/bin/bash
#SBATCH -p reservation
#SBATCH --reservation=CSYE7374_GPU
#SBATCH --gres=gpu:4
#SBATCH --time=5:00:00
#SBATCH --job-name=densenet
#SBATCH --output=densenet.out
#SBATCH --mem=100gb
#SBATCH --chdir="/home/kumar.ash/test"

module load python/3.6.6
module load cuda/9.2


python densenet.py
