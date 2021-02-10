for j in {1,2}
	do for i in {1..10}
	do
        java -jar ../programs/Trimmomatic-0.36/trimmomatic-0.36.jar PE -threads 12 -phred33\
 ../workplace/1_raw_reads/*$j\_$i*R1*.fastq.gz\
 ../workplace/1_raw_reads/*$j\_$i*R2*.fastq.gz\
 ../workplace/2_trimmed/Sample_$j.$i.forward.paired.fastq.gz ../workplace/2_trimmed/Sample_$j.$i.forward.unpaired.fastq.gz\
 ../workplace/2_trimmed/Sample_$j.$i.reverse.paired.fastq.gz ../workplace/2_trimmed/Sample_$j.$i.reverse.unpaired.fastq.gz\
         ILLUMINACLIP:../programs/Trimmomatic-0.36/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36;
done;
done

for j in {1,2}
	do for i in {1..10}
	do
        gzip -d ../workplace/2_trimmed/Sample_$j.$i.forward.paired.fastq.gz
	gzip -d ../workplace/2_trimmed/Sample_$j.$i.forward.paired.fastq.gz 
        cat ../workplace/2_trimmed/Sample_$j.$i.forward.paired.fastq ../workplace/2_trimmed/Sample_$j.$i.forward.paired.fastq > ../workplace/2_trimmed/Sample_$j.$i.forward.paired.collapsed.fastq
        gzip ../workplace/2_trimmed/Sample_$j.$i.forward.paired.collapsed.fastq
done;
done

for j in {1,2}
	do for i in {1..10}
        do bowtie2 --threads 15 -x ../reference/indexb/col_genome.fas.bowtie2 -1 ../workplace/2_trimmed/Sample_$j.$i.forward.paired.collapsed.fastq.gz\
         -2 ../workplace/2_trimmed/Sample_$j.$i.reverse.paired.collapsed.fastq.gz\
         -S ../workplace/3_aligned/Sample.$j.$i.PE.sam;
done;
done

for j in {1,2}
	do for i in {1..10}
	do samtools view -bS -o ../workplace/3_aligned/Sample.$j.$i.PE.bam ../workplace/3_aligned/Sample.$j.$i.PE.sam;
done;
done

for j in {1,2}
	do for i in {1..10}
        do samtools sort -@ 25 ../workplace/3_aligned/Sample.$j.$i.PE.bam\
        ../workplace/4_sorted/Sample.$j.$i.PE.sorted;
done;
done

for j in {1,2}
	do for i in {1..10}
        do samtools mpileup -uD -f ../reference/TAIR10_chr_all.fas\
         ../workplace/4_sorted/Sample.$j.$i.PE.sorted.bam\
        |bcftools view -cg ->../workplace/5_consensus/Sample.$j.$i.PE.raw.all.vcf;
done;
done

for j in {1,2}
	do for i in {1..10}
	do SHOREmap convert --marker ../workplace/5_consensus/Sample.$j.$i.PE.raw.all.vcf\
 --folder ../workplace/6_converted -runid $j.$i.;
done;
done

