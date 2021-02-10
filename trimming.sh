for j in {1,2}
        do for i in {1..10}
        do
        java -jar ../programs/Trimmomatic-0.36/trimmomatic-0.36.jar PE -threads 12 -phred33\
 ../workplace/1_raw_reads/*$j\_$i*Neg*R1*.fastq.gz\
 ../workplace/1_raw_reads/*$j\_$i*Neg*R2*.fastq.gz\
 ../workplace/2_trimmed/Sample_$j.$i.Neg.forward.paired.fastq.gz ../workplace/2_trimmed/Sample_$j.$i.Neg.forward.unpaired.fastq.gz\
 ../workplace/2_trimmed/Sample_$j.$i.Neg.reverse.paired.fastq.gz ../workplace/2_trimmed/Sample_$j.$i.Neg.reverse.unpaired.fastq.gz\
         ILLUMINACLIP:../programs/Trimmomatic-0.36/adapters/TruSeq3-PE.fa:2:30:10 LEADING:20 TRAILING:20 SLIDINGWINDOW:4:20 MINLEN:36;
done;
done

for j in {1,2}
        do for i in {1..10}
        do
        java -jar ../programs/Trimmomatic-0.36/trimmomatic-0.36.jar PE -threads 12 -phred33\
 ../workplace/1_raw_reads/*$j\_$i*Pos*R1*.fastq.gz\
 ../workplace/1_raw_reads/*$j\_$i*Pos*R2*.fastq.gz\
 ../workplace/2_trimmed/Sample_$j.$i.Pos.forward.paired.fastq.gz ../workplace/2_trimmed/Sample_$j.$i.Pos.forward.unpaired.fastq.gz\
 ../workplace/2_trimmed/Sample_$j.$i.Pos.reverse.paired.fastq.gz ../workplace/2_trimmed/Sample_$j.$i.Pos.reverse.unpaired.fastq.gz\
         ILLUMINACLIP:../programs/Trimmomatic-0.36/adapters/TruSeq3-PE.fa:2:30:10 LEADING:20 TRAILING:20 SLIDINGWINDOW:4:20 MINLEN:36;
done;
done
