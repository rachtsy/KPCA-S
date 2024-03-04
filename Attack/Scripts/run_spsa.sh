#!/bin/bash

count=0
offset=2000

# for i in $(seq 0 .005 0.1)
#   do
#      (( count++ ))
#      port_num=`expr $count + $offset`
#      CUDA_VISIBLE_DEVICES=2,3 python -m torch.distributed.launch --nproc_per_node=2 --master_port=$port_num --use_env main.py --model deit_kde_tiny_patch16_224 --batch-size 48 --data-path /mnt/d64c1162-08cc-4571-90a3-04c60b6f6f66/xing/imagenet/imagenet --output_dir /home/xing/robust_transformer/imagenet/files_kde --use_wandb 0 --project_name 'robust' --job_name imagenet_deit_kde_eval --attack 'spsa' --eps $i --finetune /home/xing/robust_transformer/imagenet/files_kde/checkpoint.pth --eval 1
# done

for i in $(seq 0.1 .005 0.1)
  do
     (( count++ ))
     port_num=`expr $count + $offset`
    #  eps=$(perl -e "print $i / 255")
<<<<<<< HEAD
     CUDA_VISIBLE_DEVICES=0,1,2,3 python -m torch.distributed.launch --nproc_per_node=4 --master_port=$port_num \
     --use_env /home/ubuntu/Kpca/Attack/main.py --model deit_tiny_patch16_224 --batch-size 48 --data-path /home/ubuntu/data/ \
     --output_dir /home/ubuntu/Kpca/checkpoints/ --use_wandb 1 --project_name 'robust_attack' --job_name sym_2itperlayer_spsa \
    --attack 'spsa' --eps $i --finetune /home/ubuntu/Kpca/checkpoints/rpc/2itperlayer.pth --eval 1 --robust
=======
     CUDA_VISIBLE_DEVICES=4,5,6,7 python -m torch.distributed.launch --nproc_per_node=4 --master_port=$port_num \
     --use_env /home/dungnm31/Kpca/Kpca/Attack/main.py --model deit_tiny_patch16_224 --batch-size 48 --data-path /cm/archive/thoth/dataset/ImageNet/ \
     --output_dir /home/dungnm31/Kpca/Kpca/checkpoints/ --use_wandb 1 --project_name 'robust_attack' --job_name sym_2itperlayer_spsa \
    --attack 'spsa' --eps $i --finetune /home/dungnm31/Kpca/Kpca/checkpoints/rpc/2itperlayer.pth --eval 1 --robust
>>>>>>> c747596ba8923fa7bdb17bd5291773ceb0a643a0
done

# for i in $(seq 0 .005 0.1)
#   do
#      (( count++ ))
#      port_num=`expr $count + $offset`
#      CUDA_VISIBLE_DEVICES=2,3 python -m torch.distributed.launch --nproc_per_node=2 --master_port=$port_num --use_env main.py --model deit_tiny_patch16_224 --batch-size 48 --data-path /mnt/d64c1162-08cc-4571-90a3-04c60b6f6f66/xing/imagenet/imagenet --output_dir /home/xing/robust_transformer/imagenet/files_baseline --use_wandb 0 --project_name 'robust' --job_name imagenet_deit_baseline_eval --attack 'spsa' --eps $i --finetune /home/xing/robust_transformer/imagenet/files_baseline/checkpoint.pth --eval 1
# done