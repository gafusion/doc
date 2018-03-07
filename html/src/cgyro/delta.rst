DELTA
-----

**Definition**

Average triangularity, :math:`\delta`, of the flux surface:

.. math::
   \delta = \frac{\delta_{+} + \delta_{-}}{2}

where :math:`\delta_{+}` is the upper triangularity and :math:`\delta_{-}` is the lower triangularity.   
   
**Comments**
  
- This is only active with :doc:`EQUILIBRIUM_MODEL <equilibrium_model>` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:doc:`PROFILE_MODEL <profile_model>` = 2), the triangularity as a function of radius is read from input.profiles.

**Internal name**
  
delta_in

**Default**

0.0

----

:doc:`Return to list of inputs <inputs>`
