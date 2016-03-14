#!/bin/bash

sizes=(8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24)
strides=(1 512 1024 4096 8192)
rm -f data.tsv

for sz in ${sizes[@]}; do
	for str in ${strides[@]}; do
		./l $sz $str >> data.tsv
	done
done

python graph.py
