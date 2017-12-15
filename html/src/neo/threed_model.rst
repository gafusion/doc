THREED_MODEL
---------------

**Definition**

Parameter which selects whether to solve the DKE in toroidally axisymmetric limit (2D) or with nonaxisymmetric effects (3D).
     
**Choices**
  
- THREED_MODEL = 0: toroidally axisymmetric limit (2D).
- THREED_MODEL = 1: toroidally nonaxisymmetric effects are included (3D).

  - This option is presently not available for experimental profiles (:doc:`PROFILE_MODEL <profile_model>` = 2).
    
  - The local 3D equilibrium solver LE3 must be run first.  All of the equilibrium parameters, including the spatial dimensions for :math:`(\theta,\varphi)`, are read from the LE3 output file.

  - Of the plasma equilibrium/geometry NEO input paramters, only :doc:`RHO_STAR <rho_star>`, :doc:`DPHI0DR <dphi0dr>`, and :doc:`RMIN_OVER_A <rmin_over_a>` are used.

  - Of the numerical resolution NEO input parameters, only :doc:`N_XI <n_xi>` and :doc:`N_ENERGY <n_energy>` are used.

**Internal name**

threed_model

**Default**

0

----

:doc:`Return to list of inputs <inputs>`
