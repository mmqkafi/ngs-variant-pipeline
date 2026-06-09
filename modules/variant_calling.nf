
process variants{

		input:
		path ref
		path ded

		output:
		path "variants.vcf"

		script:
		"""
		cat $ref
		cat $ded
		bcftools mpileup -f $ref $ded | bcftools call -mv -Ov -o variants.vcf
		"""

}
