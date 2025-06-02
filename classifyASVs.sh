

Vsearch can be downloaded from here: https://github.com/torognes/vsearch


# set working directory
WD=/home/bio.aau.dk/kl42gg/projects/MiDAS_course/data
cd $WD

THREADS=80


ASVs=$WD/raw/ASVs.R1.fa # your ASVs fasta file
taxdb=$WD/MiDAS5.3_SINTAX.fa # find here: https://www.midasfieldguide.org/guide/downloads


vsearch \
  --sintax $ASVs \
  --db $taxdb \
  --tabbedout ASVs_classified_MiDAS5.3.sintax \
  --strand both \
  --sintax_cutoff 0.8 \
  --threads $THREADS
sort -V ASVs_classified_MiDAS5.3.sintax -o ASVs_classified_MiDAS5.3.sintax # order ASVs
