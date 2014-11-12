# User designating layout of plates:

* Reagents will be added to >=1 Costar black 96-well plate(s).


* In a 96-well plate format, wells need to be set as either:
	* standards (dilution series of 7 concentrations)
	* unknowns
	* blanks

* All standards, unknowns, and blanks are performed in duplicate on the same plate

* [not critical] Based on the number for standards, unknowns, and blanks, the software
would calculate the volumes of the necessary reagents:
	* TE buffer
	* standard DNA 
	* picogreen reagent
	
	* Total TE needed:
		* raw\_total\_volume = TE for standards + TE for sample dilutions + 
		TE for picogreen reagent dilution
		* volume for ALL standards:
			* 1332.5 ul
		* volume for EACH sample:
			* 99 ul
		* volume for EACH picogreen reagent dilution:
			* 110 ul

* The user would also need to designate where each unknown (nucleotide sample)
is located on another 96-well plate that holds all of the unknowns.
	


# User-provided materials:

* reagent trough of 1x TE buffer
* empty reagent trough for preparing picogreen working stock
* micro-cfg tube with picogreen reagent
* micro-cfg tube with standard template
* 7 micro-cfg tubes for preparing the standards (per 1 plate)
* 96-well plate(s) containing unknowns (samples)
* Costar black 96-well plate(s) (will contain the final reagent mixtures)



# Making standards (per plate):

* The stock standard is diluted with TE buffer to make the dilution series of standards
as specified in the table below:

**TE to add (uL)**   **2ug/mL stock to add (uL)**
-------------------- ------------------------------
62.5                 187.5
125                  125
187.5                62.5
225                  25
237.5                12.5
245                  5
250                  0


* 100 uL of each of the prepared standards is added the the Costar black 96-well plate
	* The plate/well IDs are determined from the user designation of the final plate layout


# Add unknowns:

* For all unknown wells:
	* add 99 uL of TE Buffer
* For each unknown well:
	* add 1 uL of the corresponding unknown (user-defined correspondence)


# Add blanks:

* For all blank wells:
	* add 199 uL of TE Buffer
* For each unknown well:
	* add 1 uL of the corresponding unknown (user-defined correspondence)
	
	
# Making working stock of picogreen reagent (1x concentration):

* Calculate volume (ul) of TE buffer and 200x picogreen needed:

	* number_unk_std = number_unknowns + number_standards
	* total_volume_working_stock = 110 * number_unk_std
	* total_volume_200x_picogreen = total_volume_working_stock * 1/200
	* total_volume_TE_buffer = total_volume_working_stock * 199/200

* Transfer the necessary volume of TE buffer to the empty reagent trough
	* total_volume_200x_picogreen
	* total_volume_TE_buffer

* Transfer the necessary volume of 200x picogreen to the empty reagent trough

* Mix reagents in trough by pipetting up and down 5x

* Transfer 100 ul of 1x picogreen reagent into each unknown and standard well

* Mix reagents in trough by pipetting up and down 5x

* Alert the user that the method is nearly complete (5 min remaining)

* Allow plate(s) to incubate for 5 min

* Alert the user that the method is complete!






