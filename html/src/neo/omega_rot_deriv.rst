OMEGA_ROT_DERIV
---------------

**Definition**

The normalized toroidal rotation shear:

.. math::
   {\rm OMEGA\_ROT\_DERIV} = \frac{d \omega_0}{d r}\frac{a^2}{{\rm v}_{\rm norm}}

where :math:`\omega_0=-c\frac{d \Phi_{-1}}{d\psi}` is the torodial angular frequency.
   
     
**Comments**
  
- Used only if sonic rotation effects are included (:doc:`ROTATION_MODEL <rotation_model>` = 2).
- When experimental profiles are used (:doc:`PROFILE_MODEL <profile_model>` = 2), the toroidal angular frequency as a function of radius is read from input.profiles and its gradient is computed internally.  The associated :math:`E_r` is assumed to be the lowest-order field, :math:`E_r^{(-1)}`, and :math:`E_r^{(0)}` is assumed to be 0.

**Internal name**
  
omega_rot_deriv_in

**Default**

0.0

----

:doc:`Return to list of inputs <inputs>`
