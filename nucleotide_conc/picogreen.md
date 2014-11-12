# Picogreen Protocol 

The protocol assumes one 96-well plate.




## Make 1x TE buffer

* __NOTE:__ Depending on the amount of samples being analyzed, 
more TE buffer may need to be made. Carrying out calculations before beginning
the Picogreen is highly recommended.

* __NOTE:__ Additionally, sketching out a plate layout for samples and standards is
highly encouraged before beginning analysis. 

* To make 1x TE buffer from the 20x stock supplied in the kit:
	* 1:20 dilution
		* e.g., 2 ml of 20x TE in 38 ml of nuclease-free water

* Total TE needed:

	* raw_total_volume = TE for standards + TE for sample dilutions + TE for picogreen
reagent dilution
		* volume for each standard:
			* see 'TE to add (uL)' in table below
		* volume for each sample dilution
			* 99 ul
		* volume for each picogreen regent dilution
			* see 'Making the picogreen reagent' below

	* extra_volume = raw_total_volume * 0.1

	* final_total_volume = raw_total_volume + extra_volume


* use a 50 mL falcon tube for making the 1x TE buffer


## Make standards 

* Stock standard: 100 ug/mL
* Final standard conc. needed: 2 ug/mL
	* 1:50 dilution in TE buffer
* Total volume needed: 500 uL
* Volume stock standard needed (ul): 500 * 1/50 = 10
* Volume TE buffer needed (ul): 500 - 10 = 490


* Make up standards, as specified in table below, in 1.5 mL Eppendorf
    tubes
    * __Note:__ This will make 2 replicates of each standard (enough for 1 plate).

  **Final Conc. post-pico (ng/uL)** **TE to add (uL)**   **2ug/mL stock to add (uL)**
  --------------------------------- -------------------- ------------------------------
  750                               62.5                 187.5
  500                               125                  125
  250                               187.5                62.5
  100                               225                  25
  50                                237.5                12.5
  20                                245                  5
  0                                 250                  0

	* 'post-pico' means the final conc. after adding the Picogreen reagent.

* Add 100 uL of each standard to unique wells of a Costar black 96-well
plate. The standard curve should be duplicated.


## Adding samples (a.k.a. template)

*   99 uL of TE should be placed in wells of the Costar plate that are to
    house samples. Samples should be run in duplicate.
	* Multichannel pipettors and reagent resevoirs can be used for this step if many
    samples are run.

*   To the 99 uL in each well, add 1uL of template (sample). 

*   Additionally, at least one nucleotide sample should be used as a blank (2 replicates).
	* Set up as above, with 99 uL TE buffer and 1 uL sample.
    * This blank will not have Picogreen reagent added to it, and thus will give a
    measure of fluorescence that is present naturally in the sample.


## Making and adding Picogreen Reagent

* Based on the number of samples to be run, calculate the volume of 1x
Picogreen reagent that should be made (volume in ul):

	* total\_volume: 110 * (number\_of\_samples + number\_of\_standards)

* Once that the total volume is determined, calculate dilution of the 200x
Picogreen reagent:

	* Volume of 200x Picogreen needed: total\_volume * 1/200
	* Volume of TE buffer needed: total\_volume * 199/200

* For example:
	* If running 10 samples, 1100 uL of 1x Picogreen should be made, using
	5.5 uL of 200x Picogreen reagent diluted with 1094.5 uL of 1x TE buffer.

*   Make up Picogreen reagent in a falcon tube (15 mL or 50 mL, depending
    on the amount needed) that is wrapped in aluminum foil (to prevent
    degradation of reagent).

*   Once reagent is made up, transfer 100 uL of reagent to each well of
    the Costar plate to be analyzed, EXCEPT the wells to be used as
    blanks. 
	* Again, the multichannel pipettor and reagent resevoirs can
    be useful in this step.    
    * Make sure to pipet up and down to mix reagent with well contents.

*   Add 100 uL of TE buffer to the blank wells

*   After reagent addition, incubate plate for 5 minutes in a dark space    
    * ex. a closed drawer


## Running samples on plate reader

*   While samples are incubating, set up analysis program on plate
    reader software:

1.  Open Softmax Pro 6.3 software.

2.  To make sure the plate reader is set-up to run a fluorescence assay,
    click on the 'Settings Icon', choose the 'FL' option, and make sure
    that excitement is set to 485nm and emission is set to 535 nm.

3.  Then, click on the 'Protocols' tab Protocol library Nucleic Acids
    Picogreen assay. This will open up an already created Pico protocol.

4.  Modify plate set-up by scrolling to the page with the plate layout,
    and clicking on the small plate icon ('Template editor'). This will
    open up a screen that will allow you to add standards, samples, and
    blanks to the plate to be read.

5.  Once the plate is modified, you can save as a protocol file. You can
    also save the file as a datafile once the analysis is done.

6.  To read plate, open the plate reader using the open/close button and
    place the plate into the reader. Note the orientation of the plate!
    Then press the read button.
