THREED_EXB_MODEL
----------------

**Definition**

Parameter which selects whether to include the higher-order :math:`{\bf E} \times {\bf B}` drift velocity in the DKE with nonaxisymmetric effects (3D).
     
**Choices**
  
- THREED_EXB_MODEL = 0: higher-order :math:`{\bf E} \times {\bf B}` drift velocity not included.
- THREED_EXB_MODEL = 1: higher-order :math:`{\bf E} \times {\bf B}` drift velocity included.

  - Used only if toroidal nonaxisymmetric effects are included (:doc:`THREED_MODEL <threed_model>` = 1).

  - The value of the equilibrium potential in the higher-order  :math:`{\bf E} \times {\bf B}` drift velocity is specified by :doc:`THREED_EXB_DPHI0DR <threed_exb_dphi0dr>`.   Note that this does not affect the equilibrium potential in the neoclassical source term, which is specified by :doc:`DPHI0DR <dphi0dr>`.

**Internal name**

threed_exb_model

**Default**

0

----

:doc:`Return to list of inputs <inputs>`
