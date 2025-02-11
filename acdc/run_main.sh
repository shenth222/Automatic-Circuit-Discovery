source /data/shenth/tools/scripts/turbo unset
source /data/shenth/tools/scripts/turbo set
export CUDA_VISIBLE_DEVICES=3
poetry run python main.py --task=induction \
--zero-ablation \
--threshold=0.71 \
--indices-mode=reverse \
--first-cache-cpu=False \
--second-cache-cpu=False \
--max-num-epochs=100000 \
--using-wandb
