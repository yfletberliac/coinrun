#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=00:05:00
#SBATCH --job-name=random
#SBATCH --mem=1G
#SBATCH --gres=gpu:tesla:1

python -u -m coinrun.train_agent --run-id baseline -ne 96 -nlev 400 --game-type platform -lstm 1 -lp_active 0.0 -lp 0.0 -lp_l2 0.0