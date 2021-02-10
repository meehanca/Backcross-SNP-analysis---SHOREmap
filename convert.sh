for j in {1,2}
        do for i in {1,2,4,8,9}
        do SHOREmap convert --marker ../workplace/5_consensus/Sample.$j.$i.PE.Pos.raw.all.vcf\
 --folder ../workplace/6_converted/$j.$i.Pos -runid 1;
done;
done

for j in {1,2}
        do for i in {1,2,4,8,9}
        do SHOREmap convert --marker ../workplace/5_consensus/Sample.$j.$i.PE.Pos.raw.all.vcf\
 --folder ../workplace/6_converted/$j.$i.Neg -runid 1;
done;
done
