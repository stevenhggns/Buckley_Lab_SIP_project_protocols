Buckley Lab SIP protocols 
=========================

## Updating non-markdown versions of files

* Please don't edit the *.docx or html files directly!
* The markdown files (*.md) serve as the template files for all of the other formats (eg., html or docx).
* The bash scripts (eg., md2html.sh) will convert all files ending in '.md' to a specified format.
	* Example usage: `./md2html.sh` 
		* This will convert all markdown files to html.
    * NOTE: use those scripts to update the html, docx, etc. versons of each script.
        * This insures that only the markdown files have write permissions.


## Pipeline steps

* Soil sampling
	* [soil_sampling_protocol](../sampling/soil_sampling_protocol.md)
	
* Microcosm setup
	* Ashley's priming experiment setup
		* [SIP_microcosm](../microcosm/SIP_microcosm.md)
	* Nick's full cycle pilot exp. setup
		* [SIP_fullCyc_pilot_microcosm](../microcosm/SIP_fullCyc_pilot_microcosm.md)

* Microcosm headspace CO<sub>2</sub> measurements (via GC/MS)
	* [CO2_batch_run](../GCMS_operation/CO2_batch_run.md)

* Nucleotide extraction
	* [DNA_RNA_extraction_Protocol](../nucleotide_extraction/DNA_RNA_extraction_Protocol.md) 

* __If DNA:__ CsCl fractionation
	* [CsCl_fractionation](../CsCl_fractionation/CsCl_fractionation.md) 

* __Else if RNA:__ CsTFA fractionation
	* [RNA_SIP](../RNA_SIP/RNA_SIP.md)

* Nucleotide quantification:
	* [Picogreen](../nucleotide_conc/picogreen.md)

* Nucleotide sample concentration
	* [speed-vac](../speed-vac/speed-vac.md)

* Pippin Prep
	* [Pippin_prep](../Pippin_prep/Pippin_prep.md)

* Fraction nucleotide quantification:
	* [picogreen](../nucleotide_conc/picogreen.md)

* MiSeq library prep:
	* [Illumina_barcoding_protocol](../library_prep/Illumina_barcoding_protocol.md)


## Others

* Cellulose farming
	* Cellulose production
		* [CelluloseProductionProtocol](../cellulose_farming/CelluloseProductionProtocol.md)
	* Cellulose grinding:
		* [CelluloseGrindingProtocol](../cellulose_farming/CelluloseGrindingProtocol.md)
	
* Plant stimulant
	* [Substrate_Additions_MicrobSuccession](../plant_stimulant/Substrate_Additions_MicrobSuccession.md)

* Soil geochemistry
	* [soil_pH](../soil_geochemistry/soil_pH.md)
	* [soil_organic_content](../soil_geochemistry/soil_organic_content.md)



## Workflows

### Bulk DNA sequencing of the 16S rRNA gene

* [Nucleotide extraction](../nucleotide_extraction/DNA_RNA_extraction_Protocol.md)

* [Sephadex column clean-up](http://www.gelifesciences.com/webapp/wcs/stores/servlet/productById/en/GELifeSciences/27533001)

* [Nucleotide quantification via Picogreen](../nucleotide_conc/picogreen.md)

* [16S rRNA amplicon library prep](../library_prep/Illumina_barcoding_protocol.md)



### Microcosm -> gradient fractionation -> 16S rRNA gene sequencing

* [Nucleotide extraction](../nucleotide_extraction/DNA_RNA_extraction_Protocol.md)

* __Optional:__ Concentrating via [speed-vac](../speed-vac/speed-vac.md)

* [PippinPrep](../Pippin_prep/Pippin_prep.md)

* [Nucleotide quantification via Picogreen](../nucleotide_conc/picogreen.md)

* [CsCl_fractionation](../CsCl_fractionation/CsCl_fractionation.md) 
	* Including desalting

* [Nucleotide quantification of fractions via Picogreen](../nucleotide_conc/picogreen.md)

* [16S rRNA amplicon library prep](../library_prep/Illumina_barcoding_protocol.md)
	* For automated generation of the Excel files needed for the PCR assay, 
		see the fractionSelectFor16S-PCR.ipynb notebook in the SIPdb repo.
