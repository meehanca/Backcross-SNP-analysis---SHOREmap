for i in {1,2}
	do SHOREmap extract --chrsizes ../reference/sizes.genome --folder ../analysis/extracted/merge.$i.Neg\
	--marker ../workplace/6_converted/merge.$i.Neg/1_converted_variant.txt\
	--consen ../workplace/6_converted/merge.$i.Neg/1_converted_consen.txt\
	-verbose;
done;

for i in {1,2}
        do SHOREmap extract --chrsizes ../reference/sizes.genome --folder ../analysis/extracted/merge.$i.Pos\
        --marker ../workplace/6_converted/merge.$i.Pos/1_converted_variant.txt\
        --consen ../workplace/6_converted/merge.$i.Pos/1_converted_consen.txt\
        -verbose;
done;
