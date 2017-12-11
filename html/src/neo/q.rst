Q
-----

**Definition**

Magnitude of the safety factor, :math:`|q|`, of the flux surface:

.. math::
   q(\psi) \doteq \frac{1}{2 \pi} \int_{0}^{2\pi} d\theta \; \frac{\mathbf{B} \cdot \nabla \varphi}{\mathbf{B} \cdot \nabla \theta}
     
**Comments**
  
- When experimental profiles are used (:doc:`PROFILE_MODEL <profile_model>` = 2), the safety factor as a function of radius is read from input.profiles.
- The orientation of the safety factor is determined by :doc:`IPCCW <ipccw>` and :doc:`BTCCW <btccw>`.
  
**Internal name**
  
q_in

**Default**

2.0
