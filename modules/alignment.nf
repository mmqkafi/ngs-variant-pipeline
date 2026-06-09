
process alignment{
	
		input:
		tuple path(ref), path(reads)

		output:
		path "aligned.sam"

		script:
		"""
		cat $ref
		cat $reads		

                bwa index $ref				
		bwa mem $ref $reads |  samtools view -b  - > aligned.sam

		"""
	



}
