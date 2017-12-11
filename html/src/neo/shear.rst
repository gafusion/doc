SHEAR
-----

**Definition**

Magnetic shear, :math:`s`, of the flux surface:

.. math::
   s = \frac{r}{q} \frac{\partial q}{\partial r}
     
**Comments**

- NOTE: This parameter is *not* used in the standard DKE equation!  It is only used in the case of an anisotropic temperature species (e.g. :doc:`ANISO_MODEL_1 <aniso_model_1>` = 2) to compute :math:`d\Phi_*/dr`.
- This is only active with :doc:`EQUILIBRIUM_MODEL <equilibrium_model>` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:doc:`PROFILE_MODEL <profile_model>` = 2), the safety factor as a function of radius is read from input.profiles and the safety factor gradient is computed internally.
  
**Internal name**
  
shear_in

**Default**

1.0

----

:doc:`Return to list of inputs <inputs>`
