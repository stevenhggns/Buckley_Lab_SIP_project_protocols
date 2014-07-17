# Setting up a CsCl gradient for Stable Isotope Probing



## Gradient Media

Gradients are run in CsCl (DNA) or CsTFA (RNA) dissolved in gradient buffer.

1. Start by making the gradient buffer solution:

	* 15 mM Tris-HCL, pH 8.0
	* 15 mM EDTA
	* 15 mM KCl


2. Decide on the average density you desire for your gradient.

	* Typical DNA run: 1.69 g/ml gradient; 55,000 rpm; 66+ hrs; 20 deg. C


3. Prepare Gradient Media solution (ie: gradient buffer + CsCL)

	* When you add your nucleic acid it will dilute your gradient media solution, thus your gradient media solution should be dense enough to hit your target density after adding your nucleic acid sample.

	* The tubes we use are 4.7 to 4.75 ml volume. Let's say we wanted to leave room for 0.4 – 0.45 ml of nucleic acids in TE while achieving a final gradient density of 1.69 g/ml. We would figure the density of our gradient media solution as follows:


>__Total mass of gradient (without tube):__ $1.69 (g/ml) * 4.75 (ml) = 8.0266 (g)$

>__Subtract the mass of the DNA/RNA solution:__ $8.0266 (g) - 0.45 (g) = 7.5766 (g)$

>__The desired density for solution:__ $7.5766 (g) / 4.3 (ml) = 1.762 (g/ml)$


>Thus, dissolve 7.5766 g CsCl in a Total Volume of 4.3 ml gradient buffer. 
	Note, if you add 7.5766 g of CsCL to 4.3 ml buffer you will end up with a total volume of more than 4.3 ml. 
	It is helpful to use a graduated tube or cylinder, start with less volume of gradient buffer than you need, add and dissolve the desired amount of CsCl, and then bring it up to your final volume.



4. Fine tune the density of your gradient media solution

	* Use the digital refractometer to achieve the **EXACT** gradient media density that you desire. To use: add 5 ul solution to sample well, making sure it covers completely the prism surface (it usually does). Press "read," and it will give you the R<sub>I</sub> and temperature. The R<sub>I</sub> of water should be 1.3333. **Wipe well** with kimwipe after each sample. At the end of use add some water and then wipe clean. We have modified the surface of the prism with a piece of black electrical tape cut into the shape of a doughnut (cut with 2 cork borers of different radius). 

	1. __First correct for the refractive index of your gradient buffer:__
	All salts will cause refraction, in measuring the CsCl density of our gradient media we need to first account for the refraction due to the gradient buffer (ie: the Tris, EDTA, and KCl). We do this by measuring the refractive index of the gradient buffer and then using the following equation:
		* $R_{I corrected} = R_{I observed} - (R_{I buffer} - 1.3333)$

	2. __Then to convert refractive index:__
		* $Density (g/ml) = a * R_{I corrected} - b$

		1. For CsCl of $1.22 - 1.90 g/ml$ at 20<sup>o</sup>C: a = 10.9276 and b = 13.593
		2. Note: CsCl gets cold when it goes into solution. The equation above is only valid at 20<sup>o</sup>C. Hence, you need to wait until the solution is near room temperature before measuring R	  
		3. The $R_{I corrected}$ of a 1.762 CsCl solution is **1.4052**


## Setting up the gradients

1. Dissolve CsCl in gradient buffer to make CsCl solution of density 1.762g/ml, which has a $R_{I corrected}$ of 1.4052
	1. The solution gets cold, so you need to wait until it is near room temperature before measuring RI. 
	2. Filter sterilize if needed
	3. Add buffer or CsCl in small increments until RI = 1.4052 +/- 0.0001

1. Add 4.3 ml exactly of the CsCl solution to the tubes.
	1. The meniscus should be around the "Beckman" label

1. Weigh and balance tubes with the CsCl solution
	1. Note, 10 ul CsCl solution = 0.02 g
	2. All tubes should be within 0.01 g

1. Add DNA and TE
	1. Total volume of DNA and TE together should be 400 ul
	2. If adding bisbenzamide, add 8 ul here. (If one has <8ug DNA)

1. Add gradient buffer to fill the tubes to their necks
	1. Err on having a bit less volume so you have room to balance

1. Weigh and balance tubes by adding gradient buffer
	1. Add the black caps, and repeat weighing and balancing. When balanced, push the black caps down to seal.

1. Mix all tubes by inverting several times until no refraction waves can be seen

1. Run in ultracentrifuge 55,000 rpm, 20C, 66+ hours.
	1. Put stem adapter (brown caps that look like hats) on tubes to keep stem from collapsing.
	2. Put tubes in rotor. Rotor should always be set on cloth/paper to prevent damage to the magnets underneath. 
	3. Turn on ultracentrifuge.
	4. Press door button and keep pulling on the handle until the vacuum is off.
	5. Put rotor on the spindle and depress the button in the center of the rotor. Make sure it stays depressed.
	6. Close door. Set speed, temperature and time. Press start. It will start running when the vacuum is fully established.


## CsCl gradient fractioning

### Setting up the fraction recovery system

* Spacer pins in "B" holes. Put in empty tube.
* Screw in needle through bottom, until the hole on the needle is visible inside the tube.
* Take up mineral oil in 20 ml (or more) syringe. 
* Connect tubing to rubber cap unit on one side and push the needle of a yellow syringe needle (20 G) in the other side. 
* Attach syringe needle to the 20ml syringe.
* Put syringe on the pump and secure. Turn on the pump.
* Press "run" to move the oil by 100ul, or "run" + "-->" to fast forward the oil. Fill the tubing with oil until the oil reaches the opening of the rubber cap.
* With the recovery needle pushed up, adjust the system (if needed) so that you can put the tubes/place underneath the needle to recover the fraction.

### Fractionation

* Remove two tubes from the ultracentrifuge at a time using the forceps in the box. Keep the other tubes spinning. 
* With the needle down, slide the tube into place in the fraction recovery system.
* Remove cap/plug with forceps; avoid shaking the tube as much as possible.
* Add mineral oil to the tube until the tube is completely filled.
* Put the white cap (with the hole in the middle) on the tube.
* Turn rubber cap upside down, so that the opening is facing downwards. Fasten it into the ring above the tube.
* Lower the rubber cap down on the tube, depress the spring and tighten. The opening of the rubber cap should be over the hole in the white cap, so that the oil will flow through the white cap into the tube.
* Puncture the bottom of the tube with the needle by raising the needle. (If there is an air leak somewhere, then the contents of the tube will start to drip out.)
* Press "run"; the first fraction will be less than 100 ul. (The presence of an air leak may also not be evident until the first fraction, so be careful).
* Measure density with the refractometer for each fraction.
* Stop collecting fractions before the oil reaches the needle. (40, 50 fractions)


### Clean-up (between tubes)

* Remove the rubber caps off the tubing and place finger over the tube opening to keep liquids from leaking from the bottom. You want to avoid having mineral oil in the needle.
* Lift the tube off the system and discard rest of liquid.
* Put a dry empty tube on the needle and add water to go through and clean the needle.
* Remove needle and blow air through it to dry it off.


### Clean-up

* Do the "between tubes" clean up
* Let the needle soak in a beaker of water, then dry it off
* Remove mineral oil from the rubber cap and tubing (by pushing air through it)
* Disassemble tubing
* Soak the platform in a beaker of water if needed (if CsCl has crystallized on it).


## Removing CsCl from DNA samples

### Option 1: isopropanol ppt

1. Add 3 volumes of DNA free water to the CsCl solution and mix
2. Add 0.6 volumes (calculated from new volume) of isopropanol 
	* (ie: 100 ul fraction + 300 ul water + 240 ul isopropanol)
3. Spin 14,000 g 30 min
4. Pour off supernatant. 
	* __BE CAREFUL NOT TO POUR OFF YOUR DNA PELLET!!!__
5. Wash 2 x with 70% Etoh
	1. Add 1mL of 70% ETOH to each tube
	2. Vortex 
	3. Centrifuge at 14,000 g for 15min 
6. Resuspend in 50 uL TE

### Option 2: filtration

1. Use Pall 96 well filter plates
2. Add 100ul CsCl fraction + 200 ul 50 mM Tris pH 8 (or TE if desired) to wells
3. Balance plates
4. Spin ~500 g 10 min, RT
5. Remove flow through and add 300 ul buffer to wells
6. Repeat 4 and 5 for a total of 4 times
7. During the last spin, run for 20 minutes instead of 10
8. Add 25ul - 50ul to the center of each membrane
9. Allow 5 minutes to dissolve DNA
10. Pipette up and down to remove from membrane
11. Measure volume removed if the volume exceeds the amount added in step 8 (that is if the wells were not dry)

#### Notes:

* balance plates to within 0.5 g
* Max g force for plate is ~3500g
* Hold up volme of plates is 0-30ul
* Large amounts of DNA will slow filtration and may require longer spin times
* expect <1.5 mM CsCl remaining after 4th spin, for higher purity increase number of washes or use isopropanol ppt.

