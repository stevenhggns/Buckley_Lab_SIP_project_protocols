# Picogreen Protocol 

The protocol assumes one 96-well plate.




## Make 1x TE buffer

__NOTE:__ Depending on the amount of samples being analyzed, 
more TE buffer may need to be made. Carrying out calculations before beginning
the Picogreen is highly recommended.

To make 40 mL of 1x TE buffer from 20x TE buffer supplied in kit:

* 20x * y = 1x * 40 (ml)

	* y = 2 mL of 20x TE added to 38 mL of nuclease-free water

* use a 50 mL falcon tube for making the solution

* Total TE needed = TE for standards + TE for sample dilutions + TE for
picogreen reagent dilution + 10% buffer

* Additionally, sketching out a plate layout for samples and standards is highly
encouraged before beginning analysis. 


## Make standards 

* Prepare 500 uL of 2 ug/mL stock standard from the 100 ug/mL stock
    supplied in kit:

	* 100 (ug/mL) * x = 500 (uL) * 2 (ug/mL)
		
		* x = 10 uL of 100 ug/mL added to 490 uL of 1 x TE

* Make up standards, as specified in table below, in 1.5 mL Eppendorf
    tubes

  **Final Concentration (ng/uL)**   **TE to add (uL)**   **2ug/mL stock to add (uL)**
  --------------------------------- -------------------- ------------------------------
  750                               62.5                 187.5
  500                               125                  125
  250                               187.5                62.5
  100                               225                  25
  50                                237.5                12.5
  20                                245                  5
  0                                 250                  0

* Add 100 uL of each standard to unique wells of a Costar black 96-well
    plate. The standard curve should be duplicated.


## Adding samples

*   99 uL of TE should be placed in wells of the Costar plate that are to
    house samples. Samples should be run in duplicate. Multichannel
    pipettors and reagent resevoirs can be used for this step if many
    samples are run.

*   To the 99 uL in each well, 1uL of template should be added.

*   Additionally, at least two blanks should be run, using at least one
    DNA sample. Set up as above, with 99uL TE and 1uL sample. This blank
    will not have Picogreen reagent added to it, and thus will give a
    measure of fluorescence that is present naturally in the sample.


## Making and adding Picogreen Reagent

* Based on the number of samples to be run, calculate the amount of 1x
Picogreen reagent that should be made:

> raw_amount = 100 (uL of 1x Picogreen reagent) \* Number_of_samples 

> extra_amount = raw_amount * 10%

> total_amount = raw_amount + extra_amount


* Once that the total amount is determined, calculate dilution of the 200x Picogreen reagent:

	* 200x * y = 1x * 1x (Picogreen reagent amount needed)

	* Dilute y in (Picogreen total) - y amount of 1x TE.

	* For example:

		* If running 10 samples, 1100 uL of 1x Picogreen should be made, using
		5.5 uL of 200x Picogreen reagent diluted into 1094.5 uL of 1x TE.

*   Make up Picogreen reagent in a falcon tube (15 mL or 50 mL, depending
    on the amount needed) that is wrapped in aluminum foil (to prevent
    degradation of reagent).

*   Once reagent is made up, transfer 100 uL of reagent to each well of
    the Costar plate to be analyzed, EXCEPT the wells to be used as
    blanks. 

	* Again, the multichannel pipettor and reagent resevoirs can
    be useful in this step.
    
    * Make sure to pipet up and down to mix reagent with well contents.

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
