RHO_STAR
--------

**Definition**

The ratio of the Larmor radius of the normalizing species to the normalizing length scale:

.. math::
   \rho_* = \frac{\rho_{\rm norm}}{a} \; , {\rm where} \; \rho_{\rm norm} = \frac{c \sqrt{m_{\rm norm} T_{\rm norm}}}{e |B_{\rm unit}|}
   
     
**Comments**
  
- This parameter must be a positive number. The sign of :math:`B_{\rm unit}` is determined by :doc:`IPCCW <ipccw>` and :doc:`BTCCW <btccw>`.
- When experimental profiles are used (:doc:`PROFILE_MODEL <profile_model>` = 2), :math:`\rho_*` is computed internally from the profile parameters in input.profiles and the normalizing length scale is the plasma minor radius.

**Internal name**
  
rho_in

**Default**

0.001
