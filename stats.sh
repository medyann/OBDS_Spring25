#!/bin/sh

#SBATCH --partition=cpu
#SBATCH --mail-type=END,FAIL
#SBATCH --mem=10G

## Specify the number of CPU cores that your job can use. This is only relevant for
## jobs which are able to take advantage of additional CPU cores. Asking for more
## cores than your job can use will mean that it takes longer to start when the
## cluster is busy.
#SBATCH --ntasks=1

## Specify the maximum amount of time that your job will need to run. Asking for
## the correct amount of time can help to get your job to start quicker. Time is
## specified as DAYS-HOURS:MINUTES:SECONDS. This example is one hour.
#SBATCH --time=0-01:00:00

## Provide file name (files will be saved in directory where job was ran) or path
## to capture the terminal output and save any error messages. This is very useful
## if you have problems and need to ask for help.
#SBATCH --output=%j_%x.out
#SBATCH --error=%j_%x.err

# samtools sort -o m39sample.sam > sorted.bam
# samtools idxstats /project/lina4613/linux/3_analysis/mapping/sorted.bam > sorted.idxstats
# samtools flagstat /project/lina4613/linux/3_analysis/mapping/sorted.bam > sorted.flagstat

featureCounts -p -t exon -g gene_id -a /project/lina4613/linux/2_genome/Mus_musculus.GRCm38.102.gtf.gz -o counts.txt /project/lina4613/linux/3_analysis/mapping/sorted.bam
