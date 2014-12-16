# Buckley lab SIP pipeline overview: from soil sampling to MiSeq sequencing

## Pipeline steps and references to the specific protocols:

* Soil sampling
	* [soil_sampling_protocol](../sampling/soil_sampling_protocol.html)
	
* Microcosm setup
	* Ashley's priming experiment setup
		* [SIP_microcosm](../microcosm/SIP_microcosm.html)
	* Nick's full cycle pilot exp. setup
		* [SIP_fullCyc_pilot_microcosm](../microcosm/SIP_fullCyc_pilot_microcosm.html)

* Microcosm headspace CO<sub>2</sub> measurements (via GC/MS)
	* [CO2_batch_run](../GCMS_operation/CO2_batch_run.html)

* Nucleotide extraction
	* [DNA_RNA_extraction_Protocol](../nucleotide_extraction/DNA_RNA_extraction_Protocol.html) 

* __If DNA:__ CsCl fractionation
	* [CsCl_fractionation](../CsCl_fractionation/CsCl_fractionation.html) 

* __Else if RNA:__ CsTFA fractionation
	* [RNA_SIP](../RNA_SIP/RNA_SIP.html)

* Nucleotide quantification:
	* [Picogreen](../nucleotide_conc/picogreen.html)

* Nucleotide sample concentration
	* [speed-vac](../speed-vac/speed-vac.html)

* Pippin Prep
	* [Pippen_prep](../Pippen_prep/Pippen_prep.html)

* Fraction nucleotide quantification:
	* [picogreen](../nucleotide_conc/picogreen.html)

* MiSeq library prep:
	* [Illumina_barcoding_protocol](../library_prep/Illumina_barcoding_protocol.html)


## Others

* Cellulose farming
	* Cellulose production
		* [CelluloseProductionProtocol](../cellulose_farming/CelluloseProductionProtocol.html)
	* Cellulose grinding:
		* [CelluloseGrindingProtocol](../cellulose_farming/CelluloseGrindingProtocol.html)
	
* Plant stimulant
	* [Substrate_Additions_MicrobSuccession](../plant_stimulant/Substrate_Additions_MicrobSuccession.htm)


## Workflows

### Bulk DNA sequencing of the 16S rRNA gene

* [Nucleotide extraction](../nucleotide_extraction/DNA_RNA_extraction_Protocol.html)

* [Sephadex column clean-up](http://www.gelifesciences.com/webapp/wcs/stores/servlet/productById/en/GELifeSciences/27533001)

* [Nucleotide quantification via Picogreen](../nucleotide_conc/picogreen.html)

* PCR with barcoded primers targetting a fragment of the 16S rRNA gene

* [SequalPrep Normalization](https://www.lifetechnologies.com/order/catalog/product/A1051001)

* Library pooling, then concentrating via [speed-vac](../speed-vac/speed-vac.html)


### Microcosm -> gradient fractionation -> 16S rRNA gene sequencing

* [Nucleotide extraction](../nucleotide_extraction/DNA_RNA_extraction_Protocol.html)

* [PippenPrep](../Pippen_prep/Pippen_prep.html)

* [Nucleotide quantification via Picogreen](../nucleotide_conc/picogreen.html)

* [CsCl_fractionation](../CsCl_fractionation/CsCl_fractionation.html) 
	* Including desalting

* [Nucleotide quantification via Picogreen](../nucleotide_conc/picogreen.html)

* PCR with barcoded primers targetting a fragment of the 16S rRNA gene

* [SequalPrep Normalization](https://www.lifetechnologies.com/order/catalog/product/A1051001)

* Library pooling, then concentrating via [speed-vac](../speed-vac/speed-vac.html)