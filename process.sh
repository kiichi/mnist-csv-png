#!/bin/bash

mkdir -p train
mkdir -p test

curl https://pjreddie.com/media/files/train-images-idx3-ubyte.gz -o train-images-idx3-ubyte.gz
curl https://pjreddie.com/media/files/train-labels-idx1-ubyte.gz -o train-labels-idx1-ubyte.gz 
curl https://pjreddie.com/media/files/t10k-images-idx3-ubyte.gz -o t10k-images-idx3-ubyte.gz 
curl https://pjreddie.com/media/files/t10k-labels-idx1-ubyte.gz -o t10k-labels-idx1-ubyte.gz

gunzip train-images-idx3-ubyte.gz
gunzip train-labels-idx1-ubyte.gz
gunzip t10k-images-idx3-ubyte.gz
gunzip t10k-labels-idx1-ubyte.gz

python process_mnist.py
