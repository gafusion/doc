EQUILIBRIUM_MODEL
-----------------

**Definition**

Parameter which selects the geometric equilibrium model.

**Choices**

- EQUILIBRIUM_MODEL = 0: s-alpha
- EQUILIBRIUM_MODEL = 1: large aspect ratio
- EQUILIBRIUM_MODEL = 2: Miller
- EQUILIBRIUM_MODEL = 3: General Grad-Shafranov

**Comments**
  
- For experimental profiles (:doc:`PROFILE_MODEL <profile_model>` = 2), this parameter is ignored and the geometric equilibrium model is instead set by the parameter :doc:`PROFILE_EQUILIBRIUM_MODEL <profile_equilibrium_model>`.
- EQUILIBRIUM_MODEL=3 is available via interface.  For this option, the number of Fourier coefficients, :doc:`GEO_NY <geo_ny>`, must be a positive integer, with the corresponding Fourier coefficients set in :doc:`GEO_YIN <geo_yin>`. For input.neo, these parameters are set by the file input.geo.  Note that in addition to the fourier coefficients, the input equilibrium parameters :doc:`RMIN_OVER_A <rmin_over_a>`, :doc:`RMAJ_OVER_A <rmaj_over_a>`, :doc:`Q <q>`, :doc:`SHEAR <shear>`, :doc:`BETA_STAR <beta_star>`, :doc:`BTCCW <btccw>`, and :doc:`IPCCW <ipccw>` must also be specified.
- See the geometry notes for more details about the geometric equilibrium models.

**Internal name**
  
equilibrium_model

**Default**

0

----

:doc:`Return to list of inputs <inputs>`
