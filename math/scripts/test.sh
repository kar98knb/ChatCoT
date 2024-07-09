DATA_SPLIT=algebra
RESULT_FOLDER=result/math_algebra
# NUMBER_PER_PROCESS=100

python solve_turbo_chatcot.py \
		--result_path $RESULT_FOLDER/chatcot/test.json \
		--start_prob 1 \
		--end_prob 2 \
		--write_mode w \
		--dataset_name math \
		--num_examplar 5 \
		--num_retri 2 \
		--demo_path demo/math.json \
		--data_split $DATA_SPLIT \
		--api_key_idx 1

# python merge.py --result_folder $RESULT_FOLDER/chatcot/ --target_path $RESULT_FOLDER/chatcot/turbo-chatcot-5shot.json
# python evaluate.py --result_path $RESULT_FOLDER/chatcot/turbo-chatcot-5shot.json