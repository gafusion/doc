BETA_STAR
---------

**Definition**

The normalized effective pressure gradient:

.. math::
   \beta_* = - \frac{8\pi a}{B_{\rm unit}^2} \sum_a \frac{d p_a}{d r}

where :math:`B_{\rm unit}(r)=(q/r)\psi^\prime` is the effective magnetic field strength and :math:`p=\sum_a n_a T_a` is the total plasma pressure.   
     
**Comments**

- NOTE: This parameter is *not* used in the standard DKE equation!  It is only used in the case of an anisotropic temperature species (e.g. :doc:`ANISO_MODEL_1 <aniso_model_1>` = 2) to compute :math:`d\Phi_*/dr`.
- This is only active with :doc:`EQUILIBRIUM_MODEL <equilibrium_model>` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:doc:`PROFILE_MODEL <profile_model>` = 2), :math:`\beta_*` is computed internally from the profile parameters in input.profiles and the normalizing length scale is the plasma minor radius.

**Internal name**
  
beta_star_in

**Default**

0.0
