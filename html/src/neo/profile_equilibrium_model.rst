PROFILE_EQUILIBRIUM_MODEL
-------------------------

**Definition**

Parameter which selects the geometric equilibrium model for experimental profiles.

**Choices**

- PROFILE_EQUILIBRIUM_MODEL = 1: Use Miller shaped geometry with the profiles of the geometric parameters as given in input.profiles.
- PROFILE_EQUILIBRIUM_MODEL = 2: Use the general Grad-Shafranov geometry with the fourier coefficients specified in input.profiles.geo.

**Comments**
  
- Used only for experimental profiles (:doc:`PROFILE_MODEL <profile_model>` = 2)
- See the :doc:`geometry notes <../geometry>` for more details about the geometric equilibrium models.

**Internal name**
  
profile_equilibrium_model

**Default**

1

----

:doc:`Return to list of inputs <inputs>`
