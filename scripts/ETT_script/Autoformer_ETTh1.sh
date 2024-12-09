# export CUDA_VISIBLE_DEVICES=1
# Drop out rate different 0.01, 0.1, 0.2, 0.3, 0.4
# Fix seq_len 96, label_len 48, pred_len 24,
# learning rate 0.00001

#python -u run.py \
#  --is_training 1 \
#  --root_path ./dataset/ETT-small/ \
#  --data_path ETTh1.csv \
#  --model_id ETTh1_96_24 \
#  --model Autoformer \
#  --data ETTh1 \
#  --features MS \
#  --seq_len 96 \
#  --label_len 48 \
#  --train_epochs 10\
#  --pred_len 24 \
#  --dropout 0.01 \
#  --learning_rate 0.00001\
#  --e_layers 2 \
#  --d_layers 1 \
#  --factor 3 \
#  --enc_in 7 \
#  --dec_in 7 \
#  --c_out 7 \
#  --early_stop \
#  --des 'Exp' \
#  --use_gpu 'T'\
#  --itr 1
#
#python -u run.py \
#  --is_training 1 \
#  --root_path ./dataset/ETT-small/ \
#  --data_path ETTh1.csv \
#  --model_id ETTh1_96_24 \
#  --model Autoformer \
#  --data ETTh1 \
#  --features MS \
#  --seq_len 96 \
#  --label_len 48 \
#  --train_epochs 10\
#  --pred_len 24 \
#  --dropout 0.1 \
#  --learning_rate 0.00001\
#  --e_layers 2 \
#  --d_layers 1 \
#  --factor 3 \
#  --enc_in 7 \
#  --dec_in 7 \
#  --c_out 7 \
#  --early_stop \
#  --des 'Exp' \
#  --use_gpu 'T'\
#  --itr 1
#python -u run.py \
#  --is_training 1 \
#  --root_path ./dataset/ETT-small/ \
#  --data_path ETTh1.csv \
#  --model_id ETTh1_96_24 \
#  --model Autoformer \
#  --data ETTh1 \
#  --features MS \
#  --seq_len 96 \
#  --label_len 48 \
#  --train_epochs 10\
#  --pred_len 24 \
#  --dropout 0.2 \
#  --learning_rate 0.00001\
#  --e_layers 2 \
#  --d_layers 1 \
#  --factor 3 \
#  --enc_in 7 \
#  --dec_in 7 \
#  --c_out 7 \
#  --early_stop \
#  --des 'Exp' \
#  --use_gpu 'T'\
#  --itr 1

#python -u run.py \
#  --is_training 1 \
#  --root_path ./dataset/ETT-small/ \
#  --data_path ETTh1.csv \
#  --model_id ETTh1_96_24 \
#  --model Autoformer \
#  --data ETTh1 \
#  --features MS \
#  --seq_len 96 \
#  --label_len 48 \
#  --train_epochs 10\
#  --pred_len 24 \
#  --dropout 0.3 \
#  --learning_rate 0.00001\
#  --e_layers 2 \
#  --d_layers 1 \
#  --factor 3 \
#  --enc_in 7 \
#  --dec_in 7 \
#  --c_out 7 \
#  --early_stop \
#  --des 'Exp' \
#  --use_gpu 'T'\
#  --itr 1
#
#python -u run.py \
#  --is_training 1 \
#  --root_path ./dataset/ETT-small/ \
#  --data_path ETTh1.csv \
#  --model_id ETTh1_96_24 \
#  --model Autoformer \
#  --data ETTh1 \
#  --features MS \
#  --seq_len 96 \
#  --label_len 48 \
#  --train_epochs 10\
#  --pred_len 24 \
#  --dropout 0.4 \
#  --learning_rate 0.00001\
#  --e_layers 2 \
#  --d_layers 1 \
#  --factor 3 \
#  --enc_in 7 \
#  --dec_in 7 \
#  --c_out 7 \
#  --early_stop \
#  --des 'Exp' \
#  --use_gpu 'T'\
#  --itr 1


# Diff learning rate
# Fix seq_len 96, label_len 48, pred_len 24,
# Fix drop out 0.2
# learning rate  0.01, 0.001, 0.0001
# disable early stop
python -u run.py \
  --is_training 1 \
  --root_path ./dataset/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_24 \
  --model Autoformer \
  --data ETTh1 \
  --features MS \
  --seq_len 96 \
  --label_len 48 \
  --train_epochs 10\
  --pred_len 24 \
  --dropout 0.2 \
  --learning_rate 0.01\
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --use_gpu 'T'\
  --itr 1

python -u run.py \
  --is_training 1 \
  --root_path ./dataset/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_24 \
  --model Autoformer \
  --data ETTh1 \
  --features MS \
  --seq_len 96 \
  --label_len 48 \
  --train_epochs 10\
  --pred_len 24 \
  --dropout 0.2 \
  --learning_rate 0.001\
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --use_gpu 'T'\
  --itr 1

python -u run.py \
  --is_training 1 \
  --root_path ./dataset/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_24 \
  --model Autoformer \
  --data ETTh1 \
  --features MS \
  --seq_len 96 \
  --label_len 48 \
  --train_epochs 10\
  --pred_len 24 \
  --dropout 0.2 \
  --learning_rate 0.0001\
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --use_gpu 'T'\
  --itr 1


# Label length changes from 48, 60, 80
#python -u run.py \
#  --is_training 1 \
#  --root_path ./dataset/ETT-small/ \
#  --data_path ETTh1.csv \
#  --model_id ETTh1_96_24 \
#  --model Autoformer \
#  --data ETTh1 \
#  --features MS \
#  --seq_len 96 \
#  --label_len 48 \
#  --train_epochs 10\
#  --pred_len 24 \
#  --dropout 0.2 \
#  --learning_rate 0.00001\
#  --e_layers 2 \
#  --d_layers 1 \
#  --factor 3 \
#  --enc_in 7 \
#  --dec_in 7 \
#  --c_out 7 \
#  --early_stop \
#  --des 'Exp' \
#  --use_gpu 'T'\
#  --itr 1

# python -u run.py \
#   --is_training 1 \
#   --root_path ./dataset/ETT-small/ \
#   --data_path ETTh1.csv \
#   --model_id ETTh1_96_24 \
#   --model Autoformer \
#   --data ETTh1 \
#   --features MS \
#   --seq_len 96 \
#   --label_len 60 \
#   --train_epochs 10\
#   --pred_len 24 \
#   --dropout 0.2 \
#   --learning_rate 0.00001\
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 7 \
#   --dec_in 7 \
#   --c_out 7 \
#   --early_stop \
#   --des 'Exp' \
#   --use_gpu 'T'\
#   --itr 1
# 
# python -u run.py \
#   --is_training 1 \
#   --root_path ./dataset/ETT-small/ \
#   --data_path ETTh1.csv \
#   --model_id ETTh1_96_24 \
#   --model Autoformer \
#   --data ETTh1 \
#   --features MS \
#   --seq_len 96 \
#   --label_len 80 \
#   --train_epochs 10\
#   --pred_len 24 \
#   --dropout 0.2 \
#   --learning_rate 0.00001\
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 7 \
#   --dec_in 7 \
#   --c_out 7 \
#   --early_stop \
#   --des 'Exp' \
#   --use_gpu 'T'\
#   --itr 1

# python -u run.py \
#   --is_training 1 \
#   --root_path ./dataset/ETT-small/ \
#   --data_path ETTh1.csv \
#   --model_id ETTh1_96_24 \
#   --model Autoformer \
#   --data ETTh1 \
#   --features MS \
#   --seq_len 96 \
#   --label_len 60 \
#   --train_epochs 20\
#   --pred_len 24 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 7 \
#   --dec_in 7 \
#   --c_out 7 \
#   --early_stop \
#   --des 'Exp' \
#   --use_gpu 'T'\
#   --itr 1
# 
# python -u run.py \
#   --is_training 1 \
#   --root_path ./dataset/ETT-small/ \
#   --data_path ETTh1.csv \
#   --model_id ETTh1_96_24 \
#   --model Autoformer \
#   --data ETTh1 \
#   --features MS \
#   --seq_len 96 \
#   --label_len 80 \
#   --train_epochs 20\
#   --pred_len 24 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 7 \
#   --dec_in 7 \
#   --c_out 7 \
#   --early_stop \
#   --des 'Exp' \
#   --use_gpu 'T'\
#   --itr 1
# 
# python -u run.py \
#   --is_training 1 \
#   --root_path ./dataset/ETT-small/ \
#   --data_path ETTh1.csv \
#   --model_id ETTh1_96_48 \
#   --model Autoformer \
#   --data ETTh1 \
#   --features MS \
#   --seq_len 96 \
#   --label_len 60 \
#   --train_epochs 20\
#   --pred_len 48 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 7 \
#   --dec_in 7 \
#   --c_out 7 \
#   --early_stop \
#   --des 'Exp' \
#   --use_gpu 'T'\
#   --itr 1
# python -u run.py \
#   --is_training 1 \
#   --root_path ./dataset/ETT-small/ \
#   --data_path ETTh1.csv \
#   --model_id ETTh1_96_48 \
#   --model Autoformer \
#   --data ETTh1 \
#   --features MS \
#   --seq_len 96 \
#   --label_len 60 \
#   --train_epochs 20\
#   --pred_len 54 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 7 \
#   --dec_in 7 \
#   --c_out 7 \
#   --early_stop \
#   --des 'Exp' \
#   --use_gpu 'T'\
#   --itr 1
# 
# python -u run.py \
#   --is_training 1 \
#   --root_path ./dataset/ETT-small/ \
#   --data_path ETTh1.csv \
#   --model_id ETTh1_96_48 \
#   --model Autoformer \
#   --data ETTh1 \
#   --features MS \
#   --seq_len 96 \
#   --label_len 60 \
#   --train_epochs 20\
#   --pred_len 60 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 7 \
#   --dec_in 7 \
#   --c_out 7 \
#   --early_stop \
#   --des 'Exp' \
#   --use_gpu 'T'\
#   --itr 1
# # Do not use early stop
# python -u run.py \
#   --is_training 1 \
#   --root_path ./dataset/ETT-small/ \
#   --data_path ETTh1.csv \
#   --model_id ETTh1_96_48_no_early_stop \
#   --model Autoformer \
#   --data ETTh1 \
#   --features MS \
#   --seq_len 96 \
#   --label_len 48 \
#   --train_epochs 20\
#   --pred_len 24 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 7 \
#   --dec_in 7 \
#   --c_out 7 \
#   --des 'Exp' \
#   --use_gpu 'T'\
#   --itr 1
# 
# python -u run.py \
#   --is_training 1 \
#   --root_path ./dataset/ETT-small/ \
#   --data_path ETTh1.csv \
#   --model_id ETTh1_96_60_no_early_stop \
#   --model Autoformer \
#   --data ETTh1 \
#   --features MS \
#   --seq_len 96 \
#   --label_len 60 \
#   --train_epochs 20\
#   --pred_len 24 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 7 \
#   --dec_in 7 \
#   --c_out 7 \
#   --des 'Exp' \
#   --use_gpu 'T'\
#   --itr 1
# 
# python -u run.py \
#   --is_training 1 \
#   --root_path ./dataset/ETT-small/ \
#   --data_path ETTh1.csv \
#   --model_id ETTh1_96_80_no_early_stop \
#   --model Autoformer \
#   --data ETTh1 \
#   --features MS \
#   --seq_len 96 \
#   --label_len 80 \
#   --train_epochs 20\
#   --pred_len 24 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 7 \
#   --dec_in 7 \
#   --c_out 7 \
#   --des 'Exp' \
#   --use_gpu 'T'\
#   --itr 1
###########################################
# python -u run.py \
#   --is_training 1 \
#   --root_path ./dataset/ETT-small/ \
#   --data_path ETTh1.csv \
#   --model_id ETTh1_96_24 \
#   --model Autoformer \
#   --data ETTh1 \
#   --features M \
#   --seq_len 96 \
#   --label_len 48 \
#   --train_epochs 30
#   --pred_len 24 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 7 \
#   --dec_in 7 \
#   --c_out 7 \
#   --des 'Exp' \
#   --itr 1
# python -u run.py \
#   --is_training 1 \
#   --root_path ./dataset/ETT-small/ \
#   --data_path ETTh1.csv \
#   --model_id ETTh1_96_24 \
#   --model Autoformer \
#   --data ETTh1 \
#   --features M \
#   --seq_len 96 \
#   --label_len 48 \
#   --train_epochs 40
#   --pred_len 24 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 7 \
#   --dec_in 7 \
#   --c_out 7 \
#   --des 'Exp' \
#   --itr 1
# python -u run.py \
#   --is_training 1 \
#   --root_path ./dataset/ETT-small/ \
#   --data_path ETTh1.csv \
#   --model_id ETTh1_96_48 \
#   --model Autoformer \
#   --data ETTh1 \
#   --features M \
#   --seq_len 96 \
#   --label_len 48 \
#   --pred_len 48 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 7 \
#   --dec_in 7 \
#   --c_out 7 \
#   --des 'Exp' \
#   --itr 1
# 
# python -u run.py \
#   --is_training 1 \
#   --root_path ./dataset/ETT-small/ \
#   --data_path ETTh1.csv \
#   --model_id ETTh1_96_168 \
#   --model Autoformer \
#   --data ETTh1 \
#   --features M \
#   --seq_len 96 \
#   --label_len 48 \
#   --pred_len 168 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 7 \
#   --dec_in 7 \
#   --c_out 7 \
#   --des 'Exp' \
#   --itr 1
# 
# python -u run.py \
#   --is_training 1 \
#   --root_path ./dataset/ETT-small/ \
#   --data_path ETTh1.csv \
#   --model_id ETTh1_96_336 \
#   --model Autoformer \
#   --data ETTh1 \
#   --features M \
#   --seq_len 96 \
#   --label_len 48 \
#   --pred_len 336 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 7 \
#   --dec_in 7 \
#   --c_out 7 \
#   --des 'Exp' \
#   --itr 1
# 
# python -u run.py \
#   --is_training 1 \
#   --root_path ./dataset/ETT-small/ \
#   --data_path ETTh1.csv \
#   --model_id ETTh1_96_720 \
#   --model Autoformer \
#   --data ETTh1 \
#   --features M \
#   --seq_len 96 \
#   --label_len 48 \
#   --pred_len 720 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 7 \
#   --dec_in 7 \
#   --c_out 7 \
#   --des 'Exp' \
#   --itr 1