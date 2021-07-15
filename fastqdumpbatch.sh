#!/bin/bash

for (( i = 19; i <= 56; i++ ))
  do
  fastq-dump --outdir . -I --split-files  --accession SRR8378$i
done
