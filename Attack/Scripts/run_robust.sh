###### FOR INFERENCE
CUDA_VISIBLE_DEVICES='0,1,2,3' python -m torch.distributed.launch --master_port 10010 --nproc_per_node=4 --use_env eval_OOD.py \
--model deit_tiny_patch16_224 --data-path ~/data/imagenet/ --output_dir ~/checkpoints/ 

# CUDA_VISIBLE_DEVICES='0' python eval_imagenetp.py --model-name deit_tiny_patch16_224 --ngpu 1