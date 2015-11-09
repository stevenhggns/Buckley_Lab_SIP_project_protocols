# Notes on conducting the full cycle pilot microcosm experiment

## Authorship

Nick Youngblut (2014)


## Printing this protocol

* View this Markdown file on GitHub, then in your URL bar of your browser 
  replace the git**hub**.com part of the URL with git**print**.com
* The Markdown file will be rendered as a PDF for easy printing or downloading.


## Goals:

1. Determine the time point to which each 13C treatment will be destructively sampled.
	* For the full experiment, only 1 time point will be taken per 13C treatment.
	* Different substrates will require different incubation times.
	* Determining time point to best process each treatment.
		* Time point based on 13-CO2 production rates.

## Treatments:

* 13C-Cellulose
* 13C-Xylose
* 13C-Glucose
* 13C-Glycerol
* 13C-Vanillin
* 13C-Palmitic acid
* 13C-Amino acids
* 13C-Na-Lactate
* 13C-Na-Oxalate
* 12C
* H2O (to see general effect of C addition)

### Notes:

* Number of replicates: 4
* Total number of microcosms: 44
* For each 13C treatment, other C substrates are added, but as 12C.
	* Desired fraction C per treatment: 0.4 mg (C) / g (soil)
  

## Sample collection

### Penn Yan soils:

* Pasture (PAS)
* Conventional (CON)
* 10 yr Organic (XYO)
	* Crop rotation 1 (mowed oats)
	* Crop rotation 2 (clover)
* 20 yr Organic (XXO)
	* Crop rotation 1 (corn)
	* Crop rotation 2 (soy beans)

* Used combined 20 yr organic rotations for microcosms

### Soil sieving:

* Sieved soil back in the lab.
* 15 g of soil dry weight added to each  microcosm.

### Measuring soil percent moisture and carrying capacity

* See `'Determine soil dry weight'` of `'soil_sampling_protcol'`

### Preincubation:

* ~2-3 week incubation in microcosms.
	* Microcosms stoppered.
	* Waiting for CO2 respiration (measured by GCMS) to level off.
	* Measuring CO2 respiration:
		* Headspace collection from 6? of the microcosms every 3 days
	* Every 3 days: stoppers removed and gas flushed
		* Gas flushing for 2 min with 0.2um-filtered house air


## Microcosm labeling 

* Treatment : Label
* 13C-Cellulose : 13C-cel
* 13C-Xylose : 13C-xyl
* 13C-Glucose : 13C-glu
* 13C-Glycerol : 13C-gly
* 13C-Vanillin : 13C-van
* 13C-Palmitic acid : 13C-pal
* 13C-Amino acids : 13C-ami
* 13C-Na-Lactate : 13C-lac
* 13C-Na-Oxalate : 13C-oxa
* 12C-control	: 12C-con
* H20 : H2O

__MicrocosmID = [treatment]\_R[rep#]__

* Example: 'C13-pal\_R1' or 'C12-con\_R3'



## Gas Sampling

### Materials:

1. 48 of the 2 mL gas vials (pre-crimped with grey butyl stoppers) 
1. 6 of the 10 mL gas vials (pre-crimped with blue butyl rubber stoppers)
1. Tank of He gas and gassing station
1. 0.5 mL and 10 mL gas tight syringes (with the green-red stop cock)
1. Tank of the gas standard (attached to ring stand at gassing station)
1. Microcosms
* __Note:__ ~10 ml vials actually have an interval volume of ~11.5 ml (crimped with
shallow septa).

### Gas vial labeling:

__2ml-vial-ID = [microcosmID]\_[day]\_[time]__

* day = yymmdd
* time = military

### Standards

* Using 10 ml vials to make CO2 mixtures
* ml CO2 gas standard in each vial:
	* 0
	* 0.5
	* 1
	* 2
	* 4
	* 8

### Methods:

#### Flushing vials:

1. Label, seal, and crimp all needed 2 ml and ~10 ml vials.
1. All valves at the gassing station should initially be closed.
1. Turn on He tank (tank valve).
	* The PSI should be low (<10 PSI) in order to not overpressurize the vials.
1. Stick a needle into each leur lock in the gassing manifolds.
	* Plug up any leur locks that will not be used.
	* Each manifold can be shut off using the valve just upstream.
1. Check to make sure gas is flowing out of each needle and each needle is tightened
fully.
1. Place safey shield beteen you and vials.
1. Turn on venturi vacuum (sink).
1. For a cycle of vacuuming and gassing:
	* __NOTE:__ Make sure the vacuum and gas valves are not open simultaneously.
	  The He gas will just be vacuumed out.
	* Open the valve for the vacuum.
	* Vacuum for >=10 sec.
	* Close vacuum valve.
	* Open gas valve.
	* Gas for >=10 sec.
	* Repeat vacuum-gas cycle for >=5 times.
    * Remove the vials while the He gas is still flowing.
1. Repeat the entire process until all vials are flushed 
1. Flush the ~10 ml vials the same way the 2 ml vials are flushed
(except >=15 sec for vacuum or gas) 
1. Turn of He tank, purge the lines, and turn of the venturi vacuum.

#### Making standards:

1. Using gas standard tank (to left in gassing station, on a ring stand),
turn it counterclock wise to open it. 
1. Use 10 mL stopcock gastight syringe to make most of the stds. 
1. Pre-evacuate std vials to volume that you plan on filling 
	* eg., remove 0.5 ml from vial if adding 0.5 ml CO2 gas mixture
1. Insert syringe into regulator through sampling port, fill beyond your
desired volume, press in red button and pull out.
1. __VERY FAST:__ open stop cock and push the syringe plunger to your desired volume. 
	* This allows the gas to come to 1 atm which is very important for
	  knowing exactly how much gas is in each std.
1. Add gas volume to pre-evacuated 10 ml vial.
1. Inject 250 uL of each of the stds (from the 10 mL vials) into the 2 mL vials. 

#### Sampling microcosms:

1. Use 0.5 mL gas tight syringe (with stopcock).
1. Push needle through 18 gauge sampling port and visually check
   to make sure the needle is all the way in. 
1. Pump the plunger 5 times to mix the gas.
1. Then pull plunger up to __0.25 mL__ and push the red side of the stop cock.
1. Pull syringe out of sampling port and puncture into respective 2 mL vial.
	* __IMPORTANT:__ CHECK TO MAKE SURE THE VIAL YOU'RE SAMPLING INTO MATCHES THE
	FLASK YOU SAMPLED FROM!
1. Repeat for all flasks.
1. Note what time you finished sampling. 
    This is very important because data is based on hourly rates. 
	The sampling is for nothing if we don't know how much time has passed.
1. Next step is to air out flasks. Take stoppers out of all flasks
   (don't forget the ones that don't have gas sampling ports) and set a timer for 10 min.
	* At around 2 min until the end of the airing, flush each flask with house air
	for ~5 sec. 
	* __IMPORTANT:__ Make sure the air has a very slow flow, we wouldn't want to blow
	the soil out of the flasks!
1. Restopper all the flasks after 10 min. __IMPORTANT:__ Make sure they're pushed in
air tight.
1. Take a sample of air with the syringe (250 uL) and inject it into the "air" 2 mL vial.
1. Note the time you ended flushing the flasks because this will serve as the starting
time for the next gas sampling.


# Substrate additions


## Preparation

This can be done days in advance.

### Soluble substrates

#### Materials

* MilliQ H2O 
* Murashige and Skoog base salts mixture (Sigma M5524)
* 12C substrates
* 13C substrates
* 15 ml conicals
* 10 ml syringes
* 0.2 um syringe filters (23 mm)
	
#### Method

1. Label a conical for each treatment.
1. Add sterile H2O to each.
	* The volume of liquid added to each microcosm should bring the soil
	to 50% water holding capacity.
	* 50% water holding capacity for Penn Yan soils: 0.3 g (H2O)/ g (soil)
1. Add base salt mixture to each
	* Volume determined by C:N ratio (10:1)
1. Add 12C substrate to each
	* Leave out if 13C substrate for treatment
	* Vortex and heat to ~50oC to solubalize if needed
		* Heat needed to full solubilize vanillin
1. Add 13C substrate to each corresponding treatment
	* Make sure substrates are solubalized
1. Syringe filter each treatment solution into a new 15 ml conical
1. Store in fridge until use
	* The vanillin should not recrystalize in the fridge.


### Insoluble substrates

#### Materials

* 12C substrates
* 13C substrates
* aluminum foil
* weigh paper

#### Method

1. Weigh out 12C and 13C substrates in amounts for individual microcosm additions.
	* Pre-fold the weigh paper to make a wrapper.
1. Fold up weigh paper with substrate and fold that in aluminum foil
	* Label
	
## Application

### Materials

* Mucosal Atomization Device (MAD)
* Insoluble Substrate Addition Device (ISAD) 
	* 50 ml pipette cut to 6 in
	* 250 um mesh
	* rubber band
	* parafilm
* Soluble substrate solutions
* Foil packets of insoluble substrate
* Sterile reagent troughs
* Sterile MilliQ water
* Metal stand with quick release tube clamp
* Long metal spatual

### Method

#### Soluble substrate

1. Flush MAD with 5 ml sterile purified water 3 times
	* Do this between each soluble substrate treatment
1. Pipette the amount of soluble substrate solution needed for 1 microcosm into trough
1. Suck up solution with 10 ml syringe (MAD not attached).
	* Suck in ~2 ml atmosphere (used for flushing all liquid out of MAD)
1. Attach MAD.
1. Apply substrate treatment to soil.
	* MAD tip should be ~1/2 to 3/4 inch from soil.
	* Move quickly around soil and soak it all.
1. Repeat for other microcosms.
	* Be sure to flush MAD in between substrate treatments.

#### Insoluble substrate

1. Clamp ISAD to metal stand
1. Place unstoppered microcosm under ISAD 
	* This catches any substrate that falls through ISAD during loading.
1. Unwrap foil packet(s) of substrate needed for microcosm and dump onto weigh paper
1. Dump substrate into ISAD.
1. Move microcosm off stand.
	* Vibrations will cause loss of substate!
1. Place ISAD into microcosm (~1/2 - 1 inch from soil)
1. Repeatedly tap on ISAD to dispense substrate.
	* The metal spatual may need to be inserted into the ISAD to help with dispensing.
	* Make sure all of the substrate has been dispensed.


## Clean up checklist:

1. Did you note the time you sampled the gas?
1. Did you note when you finished additions?
1. Did you turn off the gases (and vacuum)? 
	* Purge lines as necessary.
1. Did you turn of all of the gases (except for the GCMS)?
1. Are you sure the stoppers of the flask are tight?

