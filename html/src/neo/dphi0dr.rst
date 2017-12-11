DPHI0DR
-------

**Definition**

The normalized equilibrium-scale radial electric field:

.. math::
   {\rm DPHI0DR} = \frac{\partial \Phi_0}{\partial r} \left( \frac{a e}{T_{\rm norm}} \right) 

such that

.. math::
   E_r^{(0)} = -\frac{d \Phi_0}{\partial r} \nabla r
     
**Comments**

- When experimental profiles are used (:doc:`PROFILE_MODEL <profile_model>` = 2), this is computed internally from the profile parameters is in input.profiles and the normalizing length scale is the plasma minor radius.  See also the parameter :doc:`PROFILE_ERAD0_MODEL <profile_erad0_model>`, which allows the simulation to be done with DPHI0DR = 0 regardless of the value in input.profiles.
- If sonic rotation effects are included (:doc:`ROTATION_MODEL <rotation_model>` = 2), then this parameter is ignored and :math:`E_r^{(0)}` is assumed to be zero. With experimental profiles, this means that the :math:`E_r^{(0)}` in input.profiles is assumed to be the lowest-order field in sonic rotation theory, i.e. :math:`E_r^{(-1)}`,and is used to compute the lowest-order sonic toroidal rotation parameters, :doc:`OMEGA_ROT <omega_rot>` and :doc:`OMEGA_ROT_DERIV <omega_rot_deriv>`.

**Internal name**
  
dphi0dr_in

**Default**

0.0

----

:doc:`Return to list of inputs <inputs>`
