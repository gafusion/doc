SHIFT
-----

**Definition**

Shafranov shift, :math:`\Delta`, of the flux surface:

.. math::
       \Delta = \frac{\partial R_0}{\partial r}
     
**Comments**
  
- This is only active with :doc:`EQUILIBRIUM_MODEL <equilibrium_model>` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:doc:`PROFILE_MODEL <profile_model>` = 2), the flux-surface-center major radius as a function of radius, :math:`R_0(r)`,  is read from input.profiles and its derivative is computed internally.

**Internal name**
  
shift_in

**Default**

0.0
