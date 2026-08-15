#!/bin/bash
#Title: build_STAR_index
#Author: Ao Shen
#Date: 2023-07-25
#-----------------------------------------------------------------


# settings
STAR=/home/shenao5/anaconda3/envs/RNA-seq/bin/STAR
genomeDir=/home/shenao5/database/human/hg38/index/star_index
genomeFastaFiles=/home/shenao5/database/human/hg38/GRCh38.p13.genome.fa
sjdbGTFfile=/home/shenao5/database/human/hg38/gencode.v43.annotation.gtf

# Build STAR index
${STAR} --runThreadN 32 \
        --runMode genomeGenerate \
        --genomeDir ${genomeDir} \
        --genomeFastaFiles ${genomeFastaFiles} \
        --sjdbGTFfile ${sjdbGTFfile} \
        --sjdbOverhang 149

