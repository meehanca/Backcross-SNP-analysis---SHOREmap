for j in {1,2}
        do for i in {1..10}
        do
        gzip -d ../workplace/2_trimmed/Sample_$j.$i.Pos.forward.paired.fastq.gz
        gzip -d ../workplace/2_trimmed/Sample_$j.$i.Pos.forward.paired.fastq.gz 
        cat ../workplace/2_trimmed/Sample_$j.$i.Pos.forward.paired.fastq ../workplace/2_trimmed/Sample_$j.$i.Pos.forward.paired.fastq > ../workplace/2_trimmed/Sample_$j.$i.Pos.forward.paired.collapsed.fastq
        gzip ../workplace/2_trimmed/Sample_$j.$i.Pos.forward.paired.collapsed.fastq
done;
done

for j in {1,2}
        do for i in {1..10}
        do
        gzip -d ../workplace/2_trimmed/Sample_$j.$i.Pos.reverse.paired.fastq.gz
        gzip -d ../workplace/2_trimmed/Sample_$j.$i.Pos.reverse.paired.fastq.gz 
        cat ../workplace/2_trimmed/Sample_$j.$i.Pos.reverse.paired.fastq ../workplace/2_trimmed/Sample_$j.$i.Pos.reverse.paired.fastq > ../workplace/2_trimmed/Sample_$j.$i.Pos.reverse.paired.collapsed.fastq
        gzip ../workplace/2_trimmed/Sample_$j.$i.Pos.reverse.paired.collapsed.fastq;
done;
done

for j in {1,2}
        do for i in {1..10}
        do
        gzip -d ../workplace/2_trimmed/Sample_$j.$i.Neg.forward.paired.fastq.gz
        gzip -d ../workplace/2_trimmed/Sample_$j.$i.Neg.forward.paired.fastq.gz 
        cat ../workplace/2_trimmed/Sample_$j.$i.Neg.forward.paired.fastq ../workplace/2_trimmed/Sample_$j.$i.Neg.forward.paired.fastq > ../workplace/2_trimmed/Sample_$j.$i.Neg.forward.paired.collapsed.fastq
        gzip ../workplace/2_trimmed/Sample_$j.$i.Neg.forward.paired.collapsed.fastq
done;
done

for j in {1,2}
        do for i in {1..10}
        do
        gzip -d ../workplace/2_trimmed/Sample_$j.$i.Neg.reverse.paired.fastq.gz
        gzip -d ../workplace/2_trimmed/Sample_$j.$i.Neg.reverse.paired.fastq.gz 
        cat ../workplace/2_trimmed/Sample_$j.$i.Neg.reverse.paired.fastq ../workplace/2_trimmed/Sample_$j.$i.Neg.reverse.paired.fastq > ../workplace/2_trimmed/Sample_$j.$i.Neg.reverse.paired.collapsed.fastq
        gzip ../workplace/2_trimmed/Sample_$j.$i.Neg.reverse.paired.collapsed.fastq;
done;
done

