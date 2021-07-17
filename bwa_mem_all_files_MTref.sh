#!/bin/bash
for i in $(ls -1 *R1.fastq | sed 's/\.R1.fastq//')
do
bwa mem -t 16 <path_to>/MT.fa $i\.R1.fastq $i\.R2.fastq | samtools view -bS - | samtools sort -@ 16 -o $i\.MTref.sorted.bam - ; done
