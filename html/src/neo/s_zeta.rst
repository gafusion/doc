S_ZETA
------

**Definition**

Measure of the rate of change of the squareness of the flux surface:

.. math::
       s_\zeta = r \frac{\partial \zeta}{\partial r}

**Comments**
  
- This is only active with :doc:`EQUILIBRIUM_MODEL <equilibrium_model>` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:doc:`PROFILE_MODEL <profile_model>` = 2), the squareness as a function of radius is read from input.profiles and the squareness gradient is computed internally.

**Internal name**
  
s_zeta_in

**Default**

0.0

----

:doc:`Return to list of inputs <inputs>`
