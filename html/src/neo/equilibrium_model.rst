``EQUILIBRIUM_MODEL``

**Definition**

Parameter which selects the geometric equilibrium model.

**Choices**

- ``EQUILIBRIUM_MODEL=0``: s-alpha
- ``EQUILIBRIUM_MODEL=1``: large aspect ratio
- ``EQUILIBRIUM_MODEL=2``: Miller
- ``EQUILIBRIUM_MODEL=3``: General Grad-Shafranov

**Comments**
  
- For experimental profiles _PROFILE_MODEL=2, this parameter is ignored
  and the geometric equilibrium model is instead set by the parameter PROFILE_EQUILIBRIUM_MODEL.
- EQUILIBRIUM_MODEL=3 is available via interface.  For this option, the number of Fourier coefficients, GEO_NY, must be a positive integer, with the corresponding Fourier coefficients set in [[GEO_YIN-neo|GEO_YIN]]. For input.neo, these parameters are set by the file input.geo.  Note that in addition to the fourier coefficients, the input equilibrium parameters [[RMIN_OVER_A-neo|RMIN_OVER_A]], [[RMAJ_OVER_A-neo|RMAJ_OVER_A]], [[Q-neo|Q]], [[SHEAR-neo|SHEAR]], [[BETA_STAR-neo|BETA_STAR]], [[BTCCW-neo|BTCCW]], and [[IPCCW-neo|IPCCW]] must also be specified.
- See the [[gyrogeometry | geometry notes]]  for more details about the geometric equilibrium models.

**Internal name**
  
``equilibrium_model``

**Default**

``0``
