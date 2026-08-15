#!/bin/bash
# Title: build_hisat2_index
# Author: Ao Shen
# Date: 2023-07-31
echo "Process will start at:" `date`
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

# variables
dir=/home/shenao5/database/human/hg38/index/hisat2_index
biosoft=hisat2
hisat2=/home/shenao5/anaconda3/envs/circexplorer3/bin/hisat2-build
ref_fasta=/home/shenao5/database/human/hg38/GRCh38.p13.genome.fa
idx_prefix=hg38

# bowtie2-build
if [ ! -f ${dir}/ok.${biosoft}.status ]
then
    echo -e "hisat2-build started at:" `date`
    ${hisat2} -p 4 ${ref_fasta} ${dir}/${idx_prefix}
    echo "hisat2-build has finished at:" `date`

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

