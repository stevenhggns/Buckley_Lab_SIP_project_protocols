Protocol for quantifying CO2 in headspace samples with the Shimadzu GCMS-QP2010
===============================================================================

## Authorship

Ashley Campbell, Chantal Koechli, and Nick Youngblut (2014)

***

# Equipment 

* GCMS 
	* Shimadzu GCMS-QP2010

* Autosampler
	* Shimadzu AOC-5000 Auto Injector

***

# GCMS start up

## WARNINGS:

* You should not need to start the floor vacuum pump (rotory pump) manually.
This can be done using the GCMS software.

* If the GCMS has not been used in a while:
	* Check the oil level in the rotory vacuum pump (on the floor).
	* Check the amount of carrier gas still in the tank.
  

## Procedure:

1. Turn on carrier gas (should be Helium)
	* The PSI should be ~100
1. Turn on Shimadzu AOC-5000 Auto Injector
1. Turn on computer
1. Turn on both the GC and the MS
1. Start the __GCMS Real Time Analysis software__

# The next steps are done in GCMS Real Time Analysis software

1. Select __Vacuum control__ 
1. Use the manual startup ('Vacuum control' => 'advanced...')
	* Manual startup provides more control, 
	option for safety checks, 
	and may produce less wear and tear.
	* Manual startup procedure:
		1. Start the flow controller and GC system
    	1. Close vent valve
	    1. Turn on rotory pump
			* Let the pressure drop to <3.1 pascals
			* This takes many minutes 
	    1. AFTER pressure is <3.1 pascals: turn on high pressure pump 
	    (ie., the turbo molecular pump)
			* __Note:__ A sound resembling a jet engine is normal, 
			as long as it only lasts < a minute.
	    1. Turn on ion source heater
			* GC and MS indicators in top right of screen should soon say 'ready'
1. Load a method or create a new method
	* Make sure that GC and MS are heating up to the method's specified temps
	* A batch file can then be created if needed

***

# GCMS tuning

## WARNINGS:

* If the GCMS has not been used in a long time (e.g., a year),
wait ~1 day prior to tuning.
	* This wait provides time for the column to be purged of contaminants.

## Procedure:

* Follow procedure starting on Page 21 of the GCMS-QP2010 Operation Guide.

### Leak check:

* Follow procedure outlined on Page 19 of the GCMS-QP2010 Operation Guide.

***

# GCMS sample processing

## Notes:

* The septum can be changed while the GC is on.
The carrier gas flow will just need to be turned
off very briefly prior to changing the septum.

***

# GCMS shut down

* Use manual shutdown.
	* Auto shutdown does not give enough time between the turbo molecular pump shutdown
	and the vacuum pump shutdown. 
* Wait for the GC to cool before turning off the carrier gas.

***

# General notes

* The blue septa may provide a better seal than the green septa (for higher temps).
* The rotory vacuum oil should be changed every 6 months.
* Replate the injection port glass liner (contains glass wool) after ~1000 injections.
	* This helps prevent the liner from fusing to the injection port.
	

*** 

# Notes on Carboxen 1010 PLOT column

* Bake at 200<sup>o</sup>C for 1-2 hours if column disconnected for < 1 day.
* If it is diconnected for >1 day, bake overnight at 200<sup>o</sup>C.
