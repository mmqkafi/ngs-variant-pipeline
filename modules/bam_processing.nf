
process sam_bam{

	input:
	path f
	
	output:
	path "aligned.bam" 
	
	script:
	"""
	cat $f
	samtools view -b $f > aligned.bam		

	"""

}
