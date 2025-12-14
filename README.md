# Nawaz et al. Scripts

This repository contains scripts and data files for running rare variant association tests using RVTests.

## Overview

The main script performs burden and variance component tests on genetic variants using the RVTests software suite.

## Files

- `run_rvtest_burden.sh` - Main shell script to run RVTests with burden tests (CMC, Madsen-Browning, FP) and SKAT-O kernel tests
- `MA_SDR400185_240623.kinship` - Kinship matrix file for relatedness correction
- `MA_SDR400185_240623_samples.pheno` - Phenotype data for samples
- `MA_SDR400185_240623_samples.cov` - Covariate data (including principal components)
- `refFlat.gencode.v19` - Gene annotation file (GENCODE v19 format)

## Usage

The script requires:
- Input VCF file: `MA_SDR400185_240623_selectedSamples_LoF.vcf.gz`
- RVTests software installed and available in the path

Run the analysis:
```bash
bash run_rvtest_burden.sh
```

## Analysis Parameters

- **Covariates**: PC1, PC2, PC3 (principal components)
- **Burden tests**: CMC, Madsen-Browning (mb), Functional Pooling (fp)
- **Kernel test**: SKAT-O
- **Variant threshold test**: Price method
- **Kinship correction**: Applied using precomputed kinship matrix

## Output

Results are written to files prefixed with `rvtests_with_kinship_all`.