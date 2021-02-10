for j in {1,2}
        do samtools mpileup -uD -f ../reference/ws-2_finished_complete.fasta\
         ../workplace/4_sorted/merge*$j.Pos.sorted.bam\
        |bcftools view -cg ->../workplace/5_consensus/Sample.$j.$i.PE.Pos.raw.all.vcf;
done;
done

for j in {1,2}
        do for i in {1,2,4,8,9}
        do samtools mpileup -uD -f ../reference/ws-2_finished_complete.fasta\
         ../workplace/4_sorted/Sample.$j.$i.PE.Neg.sorted.bam\
        |bcftools view -cg ->../workplace/5_consensus/Sample.$j.$i.PE.Neg.raw.all.vcf;
done;
done

for j in {1,2}
        do for i in {1,2,4,8,9}
        do SHOREmap convert --marker ../workplace/5_consensus/Sample.$j.$i.PE.Pos.raw.all.vcf\
 --folder ../workplace/6_converted -runid $j.$i.Pos.;
done;
done

for j in {1,2}
        do for i in {1,2,4,8,9}
        do SHOREmap convert --marker ../workplace/5_consensus/Sample.$j.$i.PE.Neg.raw.all.vcf\
 --folder ../workplace/6_converted -runid $j.$i.Neg.;
done;
done

