OMEGA_ROT
---------

**Definition**

The normalized toroidal angular frequency:

.. math::
   {\rm OMEGA\_ROT} = \frac{\omega_0}{{\rm v}_{\rm norm}/a}

where :math:`\omega_0=-c\frac{d \Phi_{-1}}{d\psi}`   
   
     
**Comments**
  
- Used only if sonic rotation effects are included (:doc:`ROTATION_MODEL <rotation_model>` = 2).
- When experimental profiles are used (:doc:`PROFILE_MODEL <profile_model>` = 2), the toroidal angular frequency as a function of radius is read from input.profiles.  The associated :math:`E_r` is assumed to be the lowest-order field, :math:`E_r^{(-1)}`, and :math:`E_r^{(0)}` is assumed to be 0.

**Internal name**
  
omega_rot_in

**Default**

0.0

----

:doc:`Return to list of inputs <inputs>`
