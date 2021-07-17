#!/bin/bash
for i in $(ls -1 *R1.fastq | sed 's/\.R1.fastq//')
do
bwa mem -M -t 16 <path/to/>hg38bwaidx $i\.R1.fastq $i\.R2.fastq | samtools view -bS - | samtools sort -@ 16 -o $i\.sorted.bam - ; done
