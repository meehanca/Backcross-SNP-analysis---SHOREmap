for j in {1,2}
        do SHOREmap convert --marker ../workplace/5_consensus/merge.$j.PE.Pos.raw.all.vcf\
 --folder ../workplace/6_converted/merge.$j.Pos -runid 1;
done

for j in {1,2}
        do SHOREmap convert --marker ../workplace/5_consensus/merge.$j.PE.Neg.raw.all.vcf\
 --folder ../workplace/6_converted/merge.$j.Neg -runid 1;
done

SHOREmap convert --marker ../workplace/5_consensus/merge.all.PE.Pos.raw.all.vcf\
 --folder ../workplace/6_converted/merge.all.Pos -runid 1;

SHOREmap convert --marker ../workplace/5_consensus/merge.2.PE.Neg.raw.all.vcf\
 --folder ../workplace/6_converted/merge.all.Neg -runid 1;  
