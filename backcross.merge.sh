for i in {1,2}
	 do SHOREmap backcross --chrsizes ../reference/sizes.genome --marker\
 ../workplace/6_converted/merge.all.Pos/1_converted_variant.txt\
 --consen ../analysis/extracted/merge.all.Pos/*.txt\
 --folder ../analysis/backcross/merge.all.Pos -plot-bc --marker-score 40 --marker-freq 0.0\
 --min-coverage 0 --max-coverage 100 --bg ../workplace/6_converted/merge.all.Neg/*variant*\
 --bg-cov 1 --bg-freq 0 --bg-score 1 --cluster 3 --marker-hit 100;
done
