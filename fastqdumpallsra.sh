#!/bin/bash

for i in $(ls -1 *.sra)
do
fastq-dump -I --split-files $i
done
