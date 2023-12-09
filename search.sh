#!/bin/bash
human=/fs/f/genomes/human/GRCh38_latest_protein.faa.gz

rm results.txt
for p in $(cat peptides.txt)
do
	echo "Trying $p"
	echo $p >> results.txt
	seqkit locate -p $p $human >> results.txt
done
