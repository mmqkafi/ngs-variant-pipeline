
process sort{

	input:
	path f

	output:
	path "sorted.bam"

	script:
	"""
	cat $f

	samtools sort $f -o sorted.bam
	"""
}
