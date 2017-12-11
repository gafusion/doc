S_ZMAG
------

**Definition**

Measure of the rate of change of the elevation of the flux surface:

.. math::
       S_{Z0} = \frac{\partial Z_0}{\partial r}
     
**Comments**
  
- This is only active with :doc:`EQUILIBRIUM_MODEL <equilibrium_model>` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:doc:`PROFILE_MODEL <profile_model>` = 2), the flux-surface elevation as a function of radius, :math:`Z_0(r)`,  is read from input.profiles and its derivative is computed internally.

**Internal name**
  
s_zmag_in

**Default**

0.0

----

:doc:`Return to list of inputs <inputs>`
