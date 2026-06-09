

process rem_dup{

		input:
		path f

		output:
		path "dedup.bam"

		script:
		"""
		cat $f

		samtools markdup $f dedup.bam		
		"""
}
