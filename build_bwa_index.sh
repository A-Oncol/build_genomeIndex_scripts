#!/bin/bash
#Title: build_bwa_index
#Author: Ao Shen
#Date: 2023-07-25
echo "Process will start at:" `date`
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"


# settings
dir=/home/shenao5/database/human/hg38/index
biosort=bwa_index
bwa=/home/shenao5/anaconda3/envs/RNA-seq/bin/bwa
genomeFastaFiles=/home/shenao5/database/human/hg38/GRCh38.p13.genome.fa

# Build bwa index
if [ ! -f ${dir}/ok.${biosoft}.status ]
then
    echo "${biosoft} started at:" `date`
    ${bwa} index -a bwtsw -p hg38 ${genomeFastaFiles} > ${dir}/${biosoft}.log 2>&1
    echo "${biosoft} has finished." `date`

    if [ $? -eq 0 ]
    then
         echo "${biosoft} succeed." `date`
         touch ./${dir}/ok.${biosoft}.status
    else
         echo "${biosoft} failed" `date`
    fi
fi

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Process will sleep 20s"
sleep 20
echo "Process end at:" `date`
