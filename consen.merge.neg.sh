for j in {1,2}
        do samtools mpileup -uD -f ../reference/ws-2_finished_complete.fasta\
         ../workplace/4_sorted/merge.all.neg.sorted.bam\
        |bcftools view -cg ->../workplace/5_consensus/merge.$j.PE.All.Neg.raw.all.vcf;
done;
