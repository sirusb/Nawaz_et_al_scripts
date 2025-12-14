
#source ~/.bashrc
#module load bcbio-nextgen/1.2.4 rvtests/2.1.0

#bcftools view -S ../samples_tokeep.lst -o MA_SDR400185_240623_selectedSamples_LoF.vcf.gz -O z  ../VEPanno_LoF/MA_SDR400185_240623_vt.qfilter_LoF.vcf.gz
#vcf2kinship --inVcf MA_SDR400185_240623_selectedSamples_LoF.vcf.gz --ped MA_SDR400185_240623_samples.pheno --ibs --out MA_SDR400185_240623


/rvtests/executable/rvtest --inVcf MA_SDR400185_240623_selectedSamples_LoF.vcf.gz \
  --pheno MA_SDR400185_240623_samples.pheno \
  --covar MA_SDR400185_240623_samples.cov \
  --covar-name PC1,PC2,PC3 \
  --out rvtests_with_kinship_all \
  --burden cmc,mb,fp \
  --kernel skato \
  --geneFile refFlat.gencode.v19 \
  --kinship MA_SDR400185_240623.kinship \
  --vt price


