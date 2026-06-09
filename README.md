# NGS Variant Calling Pipeline (Nextflow DSL2)

A modular Nextflow DSL2 pipeline for processing next-generation sequencing (NGS) data and performing variant calling.

This workflow performs reference indexing, read alignment, BAM processing, and variant calling to generate VCF files.



## Workflow Overview

FASTQ → Alignment → BAM → Sorting → Deduplication → Indexing → Variant Calling → VCF



## Pipeline Steps

1. Reference genome indexing 
2. Read alignment 
3. SAM to BAM conversion 
4. BAM sorting 
5. Duplicate removal 
6. BAM indexing 
7. Variant calling 



## Project Structure


.
├── data/                # Small synthetic FASTA and FASTQ test data
├── main.nf              # Main workflow script
├── modules/             # DSL2 modular processes
├── nextflow.config      # Configuration file
└── README.md
