

process ind_bam{
		input:
		path f

		output:
		path "dedup.bam.bai"

		script:
		"""
		cat $f
		samtools index $f 
		"""

}
