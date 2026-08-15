#!/bin/bash
#Title: build_RSEM_index
#Author: Ao Shen
#Date: 2023-08-13
#-----------------------------------------------------------------

# settings
rsem=/home/shenao5/anaconda3/envs/RNA-seq/bin/rsem-prepare-reference
fasta_file=/home/shenao5/database/human/hg38/GRCh38.p13.genome.fa
gtf_file=/home/shenao5/database/human/hg38/gencode.v43.annotation.gtf
prefix=/home/shenao5/database/human/hg38/index/rsem_index/hg38

# Build RSEM index
${rsem} --gtf ${gtf_file} ${fasta_file} ${prefix} -p 8
