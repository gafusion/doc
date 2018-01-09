TGYRO_THERM_FLAG*
-----------------

**Definition**

Thermal/nonthermal species toggle.  First ion is TGYRO_THERM_FLAG1, etc.

**Choices**

- TGYRO_THERM_FLAG* = 1: Thermal
- TGYRO_THERM_FLAG* = 0: Nonthermal (energetic)

**Comments**

- Only the shared thermal ion temperature is evolved in TGYRO
- Unequal thermal ion temperatures is not supported

**Internal name**

tgyro_therm_flag*

**Default**

1

----

:doc:`Return to list of inputs <inputs>`
