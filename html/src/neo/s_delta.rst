S_DELTA

**Definition**

Measure of the rate of change of the average triangularity of the flux surface:

.. math::
       s_\delta = r \frac{\partial \delta}{\partial r}

**Comments**
  
- This is only active with :doc:`EQUILIBRIUM_MODEL <equilibrium_model>` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:doc:`PROFILE_MODEL <profile_model>` = 2), the triangularity as a function of radius is read from input.profiles and the triangularity gradient is computed internally.

**Internal name**
  
s_delta_in

**Default**

0.0
