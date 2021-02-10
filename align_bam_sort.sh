for j in {1,2}
	do for i in {1,4,8,2,9}
	do bowtie2 --threads 15 -x ../reference/ws.fas.bowtie2 -1 ../workplace/2_trimmed/Sample_$j.$i.Pos.forward.paired.fastq.gz\
	 -2 ../workplace/2_trimmed/Sample_$j.$i.Pos.reverse.paired.fastq.gz\
	-S ../workplace/3_aligned/Sample.$j.$i.PE.Pos.sam;
done;
done

for j in {1,2}
        do for i in {1,4,8,2,9}
        do bowtie2 --threads 15 -x ../reference/ws.fas.bowtie2 -1 ../workplace/2_trimmed/Sample_$j.$i.Neg.forward.paired.fastq.gz\
         -2 ../workplace/2_trimmed/Sample_$j.$i.Neg.reverse.paired.fastq.gz\
        -S ../workplace/3_aligned/Sample.$j.$i.PE.Neg.sam;
done;
done

for j in {1,2}
        do for i in {1,4,8,2,9}
        do samtools view -bS -o ../workplace/3_aligned/Sample.$j.$i.PE.Pos.bam ../workplace/3_aligned/Sample.$j.$i.PE.Pos.sam;
done;
done

for j in {1,2}
        do for i in {1,4,8,2,9}
        do samtools view -bS -o ../workplace/3_aligned/Sample.$j.$i.PE.Neg.bam ../workplace/3_aligned/Sample.$j.$i.PE.Neg.sam;
done;
done

for j in {1,2}
        do for i in {1,4,8,2,9}
        do samtools sort -@ 25 ../workplace/3_aligned/Sample.$j.$i.PE.Pos.bam\
        ../workplace/4_sorted/Sample.$j.$i.PE.Pos.sorted;
done;
done

for j in {1,2}
        do for i in {1..10}
        do samtools sort -@ 25 ../workplace/3_aligned/Sample.$j.$i.PE.Neg.bam\
        ../workplace/4_sorted/Sample.$j.$i.PE.Neg.sorted;
done;
done
