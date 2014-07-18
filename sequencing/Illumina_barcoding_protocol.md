Illumina Miseq Barcoding Protocol
=================================

1. Quantify samples to be sequenced using Picogreen protocol.

1. Calculate sample volume necessary for addition of 5ng of template DNA to PCR reactions.

1. PCR reaction composition for 1 rxn 

- 12.5 uL Mastermix (NEB Q5 High Fidelity, Hot Start PCR Mastermix - M0494)

- 2.5 uL combined forward and reverse barcoded primers

- 1.25 uL BSA (20mg/mL, NEB B9000S)

- 0.625 uL Picogreen reagent (4x concentration, made from 200x stock that comes in the Picogreen kit).

- X uL template (5ng/reaction)

- PCR water up to 25uL

1. Use robot protocol (qPCR\_wWorklist\_altdispense) for setting up PCRs, 
running triplicate reactions for each sample to be sequenced. 
Addition of BSA and Picogreen reagent are not as of yet included in the protocol 
and are hand-pipetted in after the robotic protocol is completed.

1. Run the PCR plate on the qPCR thermocycler, using the following cycle:
	* 98<sup>o</sup>C for 30 seconds
	* 30 cycles of:
		* 98<sup>o</sup>C for 5 seconds
		* 50<sup>o</sup>C for 20 seconds
		* 72<sup>o</sup>C for 10 seconds
	* Final extension of 72<sup>o</sup>C for 2 minutes

1. Combine triplicate PCRs for each samples, transferring samples to a new 96-well plate. 

1. Perform Sequal PCR purification and normalization (SequalPrep Normalization Plates, Life Technologies- A10510-01), 
following manufacturer's instructions, using 25uL of PCR product for each sample.

1. Combine all sequal'd samples (20uL/sample) into one tube (or two, if the volume too large). 
Vacuum evaporate samples to concentrate. 

1. Quantify concentrated collection of samples. Will want approximately 20uL with a concentration of 5ng/uL. 

1. Run concentrated sample on a gel to ensure expected, cleaned product for sequencing. 
If additional, unexpected bands are seen, consider gel purification of concentrated sample. 

1. For submission to Cornell Sequencing Facility, place 20uL of sample with a concentration of 5ng/uL into sequencing tube. 
Additionally, submit 10uL of 100uM sequencing primers 
(forward sequencing primer, reverse sequencing primer, reverse index read primer).


