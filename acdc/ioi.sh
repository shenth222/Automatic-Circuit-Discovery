source /data/shenth/tools/scripts/turbo unset
source /data/shenth/tools/scripts/turbo set
export CUDA_VISIBLE_DEVICES=3
poetry run python main.py --task=ioi \
--zero-ablation \
--threshold=0.8 \
--indices-mode=reverse \
--first-cache-cpu=False \
--second-cache-cpu=False \
--max-num-epochs=10000 \
--using-wandb \
--metric="logit_diff" \
--wandb-project-name=acdc-ioi
