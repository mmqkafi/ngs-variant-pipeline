#!/usr/bin/env nextflow
nextflow.enable.dsl=2

include { reference } from './modules/reference.nf'
include { alignment } from './modules/alignment.nf'
include { sam_bam } from './modules/bam_processing.nf'
include { sort } from './modules/sort_bam.nf'
include { rem_dup } from './modules/remove_dup.nf'
include { ind_bam } from './modules/index_bam.nf'
include { variants } from './modules/variant_calling.nf'


workflow {
	ref_ch   = Channel.fromPath("data/ref.fasta")
	ref_index = reference ( ref_ch)

	ref_align = Channel.of(
		tuple(file("data/ref.fasta"), file("data/reads.fastq"))
	)
	

	bam_ref = alignment( ref_align)

	sorted_ref = sam_bam(bam_ref)
	remove_dup = sort( sorted_ref)
	
	index_bam = rem_dup(remove_dup)
	ind_bam(index_bam)

	variants(ref_ch, index_bam)



}
