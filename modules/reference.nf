
process reference{

		publishDir "results/reference", mode: 'copy'

		input:
		path f

		output:
		path "*"	
			
 
		script:
		"""
		
		bwa index $f
		samtools faidx $f
		gatk CreateSequenceDictionary -R $f
		"""
		
}
