for i in {1,2}
	do for j in {1,2,4,8,9}
	do SHOREmap backcross --chrsizes ../reference/sizes.genome --marker\
	 ../workplace/6_converted/$i.$j.Pos/1_converted_variant.txt\
	 --consen ../analysis/extracted/$i.$j.Pos/*.txt\
	 --folder ../analysis/backcross/$i.$j.Pos -plot-bc --marker-score 40 --marker-freq 0.0\
	 --min-coverage 0 --max-coverage 100 --bg ../workplace/6_converted/$i.$j.Neg/*variant*\
	 --bg-cov 1 --bg-freq 0 --bg-score 1 --cluster 1 --marker-hit 100;
	done;
done
