#!/usr/bin/env bash

# Copy our configured script files
cp src/main/bash/march-2019/preprocess.sh code2vec/preprocess.sh
cp src/main/bash/march-2019/train.sh code2vec/train.sh

# Clone code2vec
git clone https://github.com/tech-srl/code2vec
cd code2vec
git reset --hard a7873314a1066c945048ef25f8f843e4c932c207

# retrieve the raw-benchmark from Zenodo
cd code2vec/
wget https://zenodo.org/record/2567792/files/benchmark.zip
unzip benchmark.zip

# preprocess
sh preprocess.sh

# train
sh train.sh
