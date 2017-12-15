THREED_EXB_DPHI0DR
------------------

**Definition**

The normalized equilibrium-scale radial electric field in the higher-order :math:`{\bf E} \times {\bf B}` drift velocity:

.. math::
   {\rm THREED\_EXB\_DPHI0DR} = \frac{\partial \Phi_0}{\partial r} \left( \frac{a e}{T_{\rm norm}} \right) 

such that

.. math::
   E_r^{(0)} = -\frac{\partial \Phi_0}{\partial r} \nabla r
     
**Comments**

- Used only if toroidal nonaxisymmetric effects (3D) are included (:doc:`THREED_MODEL <threed_model>` = 1).
- This does not affect the equilibrium potential in the neoclassical source term, which is specified by :doc:`DPHI0DR <dphi0dr>`.

**Internal name**
  
threed_exb_dphi0dr_in

**Default**

0.0

----

:doc:`Return to list of inputs <inputs>`
