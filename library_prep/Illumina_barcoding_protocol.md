Illumina Miseq Barcoding Protocol
=================================

1. Quantify samples to be sequenced using Picogreen protocol.

1. Calculate sample volume necessary for addition of __5 ng__ of template DNA to PCR
reactions.

1. PCR reaction composition for 1 rxn:

	* 12.5 uL Mastermix (NEB Q5 High Fidelity, Hot Start PCR Mastermix - M0494)
		* 50% of total volume
		
	* 2.5 uL combined forward and reverse barcoded primers (10 uM)
		* 10% of total volume		
		* Primer plates can be created with the robot method: "make\_primer\_plate"

	* 1.25 uL BSA (20 mg/mL, NEB B9000S)
		* 5% of total volume	

	* 0.625 uL Picogreen reagent
		* 2% of total volume
		* 4x concentration, dilute the 200x stock that comes in the Picogreen kit with 1X TE

	* X uL template (5 ng/reaction)

	* PCR water up to 25 uL

* __If adding pico & BSA to master mix prior to aliquoting master mix:__
	* total\_volume = master\_mix + BSA + pico
	* volume\_master\_mix = total\_volume * 0.870
	* volume\_BSA = total\_volume * 0.087
	* volume\_pico = total\_volume * 0.043

1. Use robot method "qPCR\_wWorklist\_altdispense" for setting up PCRs, 
running triplicate reactions for each sample to be sequenced. 

1. Run the PCR plate on the qPCR thermocycler, using the following cycle:
	* 98<sup>o</sup>C for 30 seconds
	* 30 cycles of:
		* 98<sup>o</sup>C for 5 seconds
		* 50<sup>o</sup>C for 30 seconds
		* 72<sup>o</sup>C for 10 seconds
	* Final extension of 72<sup>o</sup>C for 2 minutes
	* Hold at 4<sup>o</sup>C 

1. Combine triplicate PCRs for each samples, transferring samples to a new 96-well plate. 
	* This can be done with the robot method: "plate_pooling"

1. Perform Sequal PCR purification and normalization
	* SequalPrep Normalization Plates, Life Technologies, A10510-01
	* Follow the [manufacturer's instructions](https://www.lifetechnologies.com/order/catalog/product/A1051001),
	using 25 uL of PCR product for each sample.
	* This can be done with the robot method: "SequalPrep_Assay"

1. Combine all Sequal'd samples (20 ul/sample) into one tube
(or two, if the volume too large).
	* Pre-weigh the tube to help with the next step (speed-vac).
	* This can be done with the robot method: "plate_pooling"

1. Vacuum evaporate samples to concentrate. 
	* [speed-vac](../speed-vac/speed-vac.html)
	* You need >=25 uL with a concentration of 5 ng/uL

1. Quantify concentrated collection of samples using PicoGreen. 
	* Make sure to have >=25 uL with a concentration of 5 ng/uL. 

1. Run concentrated sample on a gel to ensure expected, cleaned product for sequencing. 
	* If additional, unexpected bands are seen, consider
	[Gel extraction](../gel_extraction/gel_extraction.html)
	of the concentrated sample.  
		* This may result in higher sequence quality.

1. Submission to Cornell Sequencing Facility:
	* Place 20 uL of sample with a concentration of 5 ng/uL into sequencing tube. 
	* Additionally, submit 10 uL of 100 uM sequencing primers:
		* forward sequencing primer
		* reverse sequencing primer
		* reverse index read primer

## Usuall comments provided with the sequencing order:

> We would like to run the 2x300 paired end read platform. 
Our submitted sample is a pooled set of already barcoded samples. 
We have supplied custom primers (labeled Primer 1, Index Primer 1, 
and Primer 2) for the sequencing as well, as follows: Primer 1: combined pad, 
linker, and gene\-specific primer sequence at the 5' end of the region 
(pad+linker+515F primer) that will produce a long sequence read from 
the 5' end of the sequence. (Read 1) Index Primer 1: reverse complement 
of the pad, linker, and gene\-specific primer from the 3'end (pad+linker+927R) 
that will provide an index read of the 3' end of the sequence. (Read 2) Primer 2:
Combined pad linker, and gene\-specific primer sequence at the 3' end of the region
(pad+linker+927R primer) that will produce the second sequence read (300 nt) from the
3' end of the sequence (Read 4). The primers are described in more detail in 
[Kozich JJ, Westcott SL, Baxter NT, Highlander SK, Schloss PD. (2013).
Development of a Dual-Index Sequencing Strategy and Curation Pipeline
for Analyzing Amplicon Sequence Data on the MiSeq Illumina Sequencing
Platform. Appl Environ Microbiol 79:5112\-5120].
10ul of 100uM primer has been supplied. Please let us
know if you have any questions about the primers.
