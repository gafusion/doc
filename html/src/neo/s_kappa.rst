S_KAPPA
-------

**Definition**

Measure of the rate of change of the elongation of the flux surface:

.. math::
       s_\kappa = \frac{r}{\kappa} \frac{\partial \kappa}{\partial r}

**Comments**
  
- This is only active with :doc:`EQUILIBRIUM_MODEL <equilibrium_model>` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:doc:`PROFILE_MODEL <profile_model>` = 2), the elongation as a function of radius is read from input.profiles and the elongation gradient is computed internally.

**Internal name**
  
s_kappa_in

**Default**

0.0
