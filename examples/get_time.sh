#num_passes=2
#for pass in $(seq 0 $(expr $num_passes - 1))
#do
#    python bert.py --result_file bert_time.txt
#    cat timer.txt >> bert_stats.txt
#done

num_passes=3
for pass in $(seq 0 $(expr $num_passes - 1))
do
    python resnext50.py --result_file resnext50_time.txt
    cat timer.txt >> resnext50_stats.txt
done

num_passes=5
for pass in $(seq 0 $(expr $num_passes - 1))
do
    python nasrnn.py --result_file nasrnn_time.txt
    cat timer.txt >> nasrnn_stats.txt
done

num_passes=5
for pass in $(seq 0 $(expr $num_passes - 1))
do
    python bert.py --result_file bert_time.txt
    cat timer.txt >> bert_stats.txt
done

num_passes=5
for pass in $(seq 0 $(expr $num_passes - 1))
do
    python nasnet_a.py --result_file nasneta_time.txt
    cat timer.txt >> nasneta_stats.txt
done