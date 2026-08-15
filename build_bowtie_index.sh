#!/bin/bash
# Title: build_bowtie1_index
# Author: Ao Shen
# Date: 2023-07-31
echo "Process will start at:" `date`
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

# variables
dir=/home/shenao5/database/human/hg38/index/bowtie_index
biosoft=bowtie-build
bt=/home/shenao5/anaconda3/envs/circexplorer3/bin/bowtie-build
ref_fasta=/home/shenao5/database/human/hg38/GRCh38.p13.genome.fa
idx_prefix=hg38

# bowtie2-build
if [ ! -f ./${dir}/ok.${biosoft}.status ]
then
    echo -e "bt-build started at:" `date`
    ${bt} ${ref_fasta} ${dir}/${idx_prefix}
    echo "bt-build has finished at:" `date`

    if [ $? -eq 0 ]
    then
         echo "${biosoft} succeed." `date`
         touch ./${dir}/ok.${biosoft}.status
    else
         echo "${biosoft} failed." `date`
    fi
fi

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Process will sleep 20s"
sleep 20
echo "Process end at:" `date`

