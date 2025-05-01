# do FastQC for two files
fastqc 'file1' 'file2' -o /project/lina4613/linux/3_analysis/1_fastqc 
# do multiQC for all the files under current directory
multiqc . -o ../reports
