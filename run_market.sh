#!/usr/bin/env bash

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --gres=gpu:2
#SBATCH --time=36:00:00
#SBATCH --mem=30GB

#module load tensorflow/1.3.0-py27-gpu
#module load cudnn/v5.1
#module load pytorch/0.2.0p3-py27
#module load pytorch/0.3.0-py27
#module load pytorch/0.4.0-py27
#module load keras/1.2.2

#module load python/3.6.1

module load tensorflow/1.5.0-py36-gpu
#module load torchvision/0.2.1-py36

#module load opencv/2.4.13.2
CUDA_VISIBLE_DEVICES="2,3" python ./main.py --config market.yaml
#python3 test_field.py
