.. |exb| mathmacro:: \mathbf{E}\times\mathbf{B}

Alphabetical list for input.tglf
================================


.. _TGLF_ADIABATIC_ELEC:

ADIABATIC_ELEC
--------------

**Definition**

Use adiabatic electrons. Adiabatic electrons are assumed to be perfectly Maxwellian and remain so by responding immediately to any change in electrostatic potential along the magnetic field. Generally this assumption works for ITG cases, but not for trapped electron modes, so can be used to distinguish their relative importance.


**Comments**

- DEFAULT = .false.

----

.. _TGLF_ALPHA_E:

ALPHA_E
-------

**Definition**

Multiplies ExB velocity shear for spectral shift model [Staebler et al., PRL, 2013].


**Comments**

- DEFAULT = 1.0

----

.. _TGLF_ALPHA_ZF:

ALPHA_ZF
--------

**Definition**

Zonal flow mixing coefficient (used by SAT1, SAT2, SAT3). Note: Can be used as hidden switch that avoids picking the lowest ky as the peak in gamma/ky when ALPHA_ZF=-1.0. This switch is useful when an MHD mode at the lowest ky causes a large amount of flux.


**Comments**

- DEFAULT = 1.0

----

.. _TGLF_ALPHA_MACH:

ALPHA_MACH
----------

**Definition**

Multiplies parallel velocity for all species.


**Comments**

- DEFAULT = 0.0

----

.. _TGLF_ALPHA_P:

ALPHA_P
-------

**Definition**

Multiplies parallel velocity shear for all species.


**Comments**

- DEFAULT = 1.0

----

.. _TGLF_ALPHA_QUENCH:

ALPHA_QUENCH
------------

**Definition**


**Choices**

- ALPHA_QUENCH = 1.0: use quench rule
- ALPHA_QUENCH = 0.0: use new spectral shift model


**Comments**

- DEFAULT = 0.0

----

.. _TGLF_ALPHA_SA:

ALPHA_SA
--------

**Definition**

Normalized pressure gradient.


**Comments**

- DEFAULT = 0.0

----

.. _TGLF_AS_1:

AS_1
----

**Definition**

Species array of densities :math:`{\frac {n_{s}}{n_{e}}}`.


**Comments**

- DEFAULT = 1.0 , 1.0

----

.. _TGLF_BETAE:

BETAE
-----

**Definition**

:math:`\beta _{e}\,\!`  defined with respect to :math:`B_{\rm {unit}}\,\!`.


**Comments**

- DEFAULT = 0.0

----

.. _TGLF_B_MODEL_SA:

B_MODEL_SA
----------

**Definition**

0/1 to exclude/include the B(theta) factor in k_per.


**Comments**

- DEFAULT = 1

----

.. _TGLF_DEBYE:

DEBYE
-----

**Definition**

Debye length/gyroradius.


**Comments**

- DEFAULT = 0.0

----

.. _TGLF_DEBYE_FACTOR:

DEBYE_FACTOR
------------

**Definition**

Multiplies the debye length.


**Comments**

- DEFAULT = 1.0

----

.. _TGLF_DELTA_LOC:

DELTA_LOC
---------

**Definition**



**Comments**

- DEFAULT = 0.0

----

.. _TGLF_DRMAJDX_LOC:

DRMAJDX_LOC
-----------

**Definition**

:math:`{\frac {\partial R_{maj}}{\partial x}}`.


**Comments**

- DEFAULT = 0.0

----

.. _TGLF_DRMINDX_LOC:

DRMINDX_LOC
-----------

**Definition**

Allows for x different than r :math:`{\frac {\partial r}{\partial x}}`.


**Comments**

- DEFAULT = 1.0

----

.. _TGLF_DZMAJDX_LOC:

DZMAJDX_LOC
-----------

**Definition**

:math:`{\frac {\partial Z_{maj}}{\partial x}}`.


**Comments**

- DEFAULT = 0.0 

----

.. _TGLF_ETG_FACTOR:

ETG_FACTOR
----------

**Definition**

Exponent for ETG saturation rule.

**Comments**

- DEFAULT = 1.25

----

.. _TGLF_FILTER:

FILTER
------

**Definition**

Sets threshold for frequency/drift frequency to filter out non-driftwave instabilities.


**Comments**

- DEFAULT = 2.0

----

.. _TGLF_FIND_WIDTH:

FIND_WIDTH
----------

**Definition**


**Choices**

- FIND_WIDTH = .true. : find the width that maximizes the growth rate
- FIND_WIDTH = .false. : use width


**Comments**

- DEFAULT = .true.

----

.. _TGLF_FT_MODEL_SA:

FT_MODEL_SA
-----------

**Definition**

1 uses trapped fraction at the outboard midplane.


**Comments**

- DEFAULT = 1

----

.. _TGLF_GCHAT:

GCHAT
-----

**Definition**

Multiplies the curvature drift irreducible terms.


**Comments**

- DEFAULT = 1.0

----

.. _TGLF_GEOMETRY_FLAG:

GEOMETRY_FLAG
-------------

**Definition**

Geometry type.

**Choices**

- GEOMETRY_FLAG = 0: :math:`s-\alpha`
- GEOMETRY_FLAG = 1: Miller
- GEOMETRY_FLAG = 2: Fourier
- GEOMETRY_FLAG = 3: ELITE

**Comments**

- DEFAULT = 1

----

.. _TGLF_GHAT:

GHAT
----

**Definition**

Multiplies the curvature drift closure terms.


**Comments**

- DEFAULT = 1.0

----

.. _TGLF_GRADB_FACTOR:

GRADB_FACTOR
------------

**Definition**

Multiplies the gradB terms.


**Comments**

- DEFAULT = 0.0

----

.. _TGLF_IBRANCH:

IBRANCH
-------

**Definition**


**Choices**

- IBRANCH = 0: find two most unstable modes one for each sign of frequency, electron drift direction (1), ion drift direction (2)
- IBRANCH = -1: sort the unstable modes by growthrate in rank order


**Comments**

- DEFAULT = -1

----

.. _TGLF_IFLUX:

IFLUX
-----

**Definition**

Compute quasilinear weights and mode amplitudes.


**Comments**

- DEFAULT = .true. 

----

.. _TGLF_KAPPA_LOC:

KAPPA_LOC
---------

**Definition**

Elongation of flux surface, :math:`\kappa \,\!`.


**Comments**

- DEFAULT = 1.0

----

.. _TGLF_KX0_LOC:

KX0_LOC
-------

**Definition**

kx0/ky ballooning mode offset.


**Comments**

- DEFAULT = 0.0

----

.. _TGLF_KY:

KY
--

**Definition**

:math:`k_{\theta }\rho _{s,{\rm {unit}}}\,\!` for single-mode call to TGLF or user-definded ky grid (see KYGRID_MODEL=0 below).

**Comments**

- DEFAULT = 0.3

----

.. _TGLF_KYGRID_MODEL:

KYGRID_MODEL
------------

**Definition**


**Choices**

- KYGRID_MODEL = 0: user defined ky grid with NKY modes up to maximum KY, equal spaced with kymin=KY/NKY
- KYGRID_MODEL = 1: standard ky spectrum often used for SAT0 and SAT1, where kymin=0.1/rho_ion
- KYGRID_MODEL = 4: additional low-ky modes preferred for SAT2, where kymin=0.05*grad_r0/rho_ion

**Comments**

- DEFAULT = 1

----

.. _TGLF_LINSKER_FACTOR:

LINSKER_FACTOR
--------------

**Definition**

Multiplies the Linsker terms.


**Comments**

- DEFAULT = 0.0

----

.. _TGLF_MASS_1:

MASS_1
------

**Definition**

Species masses normalized to :math:`m_{D}`.


**Comments**

- DEFAULT = me/md , 1.0

----

.. _TGLF_NBASIS_MAX:

NBASIS_MAX
----------

**Definition**

Maximum number of parallel basis functions.


**Comments**

- DEFAULT = 4

----

.. _TGLF_NBASIS_MIN:

NBASIS_MIN
----------

**Definition**

Minimum number of parallel basis functions.


**Comments**

- DEFAULT = 2 

----

.. _TGLF_NEW_EIKONAL:

NEW_EIKONAL
-----------

**Definition**



**Choices**

- NEW_EIKONAL = .true. : compute the eikonal
- NEW_EIKONAL = .false. : use the eikonal computed on the last call to TGLF made with tglf_new_eikonal_in = .true.


**Comments**

- DEFAULT = .true.

----

.. _TGLF_NKY:

NKY
---

**Definition**

Number of poloidal modes in the high-k spectrum of TGLF, i.e. number of modes with logarithmic spacing to cover roughly 1 < ky < 24.


**Comments**

- DEFAULT = 12

----

.. _TGLF_NMODES:

NMODES
------

**Definition**

Number of modes to store for tglf_ibranch_in = -1.


**Comments**

- DEFAULT = 2

----

.. _TGLF_NS:

NS
--

**Definition**

Number of species including both electrons and ions.

**Comments**

- DEFAULT = 2

----

.. _TGLF_NWIDTH:

NWIDTH
------

**Definition**

Maximum number of widths used in search for maximum growth rate.


**Comments**

- DEFAULT = 21

----

.. _TGLF_NXGRID:

NXGRID
------

**Definition**

Number of nodes in Gauss-Hermite quadrature.


**Comments**

- DEFAULT = 16

----

.. _TGLF_PARK:

PARK
----

**Definition**

Multiplies the parallel gradient term.


**Comments**

- DEFAULT = 1.0 

----

.. _TGLF_P_PRIME_LOC:

P_PRIME_LOC
-----------

**Definition**

:math:`{\frac {qa^{2}}{rB_{unit}^{2}}}{\frac {\partial p}{\partial r}}`.


**Comments**

- DEFAULT = 0.0

----

.. _TGLF_Q_LOC:

Q_LOC
-----

**Definition**

Absolute value of the safety factor, :math:`ABS(q)\,\!`.


**Comments**

- DEFAULT = 2.0

----

.. _TGLF_Q_PRIME_LOC:

Q_PRIME_LOC
-----------

**Definition**

:math:`{\frac {q^{2}a^{2}}{r^{2}}}s`.


**Comments**

- DEFAULT = 16.0

----

.. _TGLF_Q_SA:

Q_SA
----

**Definition**

Absolute value of safety factor.


**Comments**

- DEFAULT = 2.0 

----

.. _TGLF_RLNS_1:

RLNS_1
------

**Definition**

Species array of normalized density gradients :math:`-{\frac {a}{n_{s}}}{\frac {dn_{s}}{dr}}`.


**Comments**

- DEFAULT = 1.0 , 1.0

----

.. _TGLF_RLTS_1:

RLTS_1
------

**Definition**

Species array of normalized temperature gradients :math:`-{\frac {a}{T_{s}}}{\frac {dT_{s}}{dr}}`.


**Comments**

- DEFAULT = 3.0 , 3.0

----

.. _TGLF_RMAJ_LOC:

RMAJ_LOC
--------

**Definition**

Flux surface centroid major radius :math:`R_{maj}/a\,\!`.


**Comments**

- DEFAULT = 3.0

----

.. _TGLF_RMAJ_SA:

RMAJ_SA
-------

**Definition**

Normalized major radius of flux surface :math:`R_{maj}/a\,\!`.


**Comments**

- DEFAULT = 3.0

----

.. _TGLF_RMIN_LOC:

RMIN_LOC
--------

**Definition**

Flux surface centroid minor radius :math:`r/a\,\!`.


**Comments**

- DEFAULT = 0.5

----

.. _TGLF_RMIN_SA:

RMIN_SA
-------

**Definition**

Normalized minor radius of flux surface :math:`r/a\,\!`.


**Comments**

- DEFAULT = 0.5

----

.. _TGLF_SAT_RULE:

SAT_RULE
--------

**Definition**

- SAT_RULE = 0 finds zonal flow shear at each ky (e.g. Kinsey, Staebler, Waltz, PoP, 2008)
- SAT_RULE = 1 finds dominant saturation mechanism (ZF mixing rate or drift-wave growth rate) and includes ky-coupling (Staebler et al., PoP, 2016)
- SAT_RULE = 2 builds on SAT1 with refined geometric effects (due to Shafranov shift and elongation), improved TEM physics, simplified spectral shift (e.g. Staebler et al., NF, 2021; Staebler et al., PPCF, 2021)
- SAT_RULE = 3 builds on SAT2, captures anti-gyroBohm scaling of fluxes, treats saturation of ITG and TEM differently, has quasi-linear model approximations to align quasi-linear weights with NL GK simulations (e.g. Dudding et al., NF, 2022; Dudding PhD Thesis)

**Comments**

- DEFAULT = 0

----

.. _TGLF_SHAT_SA:

SHAT_SA
-------

**Definition**

Magnetic shear :math:`{\frac {r}{q}}{\frac {\partial q}{\partial r}}`.


**Comments**

- DEFAULT = 1.0

----

.. _TGLF_SIGN_BT:

SIGN_BT
-------

**Definition**

Sign of :math:`B_{T}`  with repsect to CCW toroidal direction from top.


**Comments**

- DEFAULT = 1

----

.. _TGLF_SIGN_IT:

SIGN_IT
-------

**Definition**

Sign of :math:`I_{T}`  with repsect to CCW toroidal direction from top.


**Comments**

- DEFAULT = 1

----

.. _TGLF_S_DELTA_LOC:

S_DELTA_LOC
-----------

**Definition**

Shear in triangularity, :math:`r{\frac {\partial \delta }{\partial r}}`.


**Comments**

- DEFAULT = 0.0 

----

.. _TGLF_S_KAPPA_LOC:

S_KAPPA_LOC
-----------

**Definition**

Shear in elongation, :math:`{\frac {r}{\kappa }}{\frac {\partial \kappa }{\partial r}}`.


**Comments**

- DEFAULT = 16.0

----

.. _TGLF_S_ZETA_LOC:

S_ZETA_LOC
-----------

**Definition**

Shear in squareness, :math:`r{\frac {\partial \zeta }{\partial r}}`.


**Comments**

- DEFAULT = 0.0

----

.. _TGLF_TAUS_1:

TAUS_1
------

**Definition**

Species array of temperatures :math:`{\frac {T_{s}}{T_{e}}}`.


**Comments**

- DEFAULT = 1.0 , 1.0

----

.. _TGLF_THETA0_SA:

THETA0_SA
---------

**Definition**

:math:`\theta _{0}={\frac {k_{x}}{sk_{y}}}`.


**Comments**

- DEFAULT = 0.0

----

.. _TGLF_THETA_TRAPPED:

THETA_TRAPPED
-------------

**Definition**

Parameter to adjust trapped fraction model.


**Comments**

- DEFAULT = 0.7

----

.. _TGLF_UNITS:

UNITS
------

**Definition**

Units system used for SAT1 (default is GYRO, but with CGYRO you get the more recent Nov. 2019 version of the spectral shift model and overall geometry factors calibrated by CGYRO runs). Note that  UNITS=CGYRO is enforced for SAT2, and GYRO is enforced for SAT0.


**Comments**

- DEFAULT = GYRO

----

.. _TGLF_USE_BISECTION:

USE_BISECTION
-------------

**Definition**

Use bisection search method to find width that maximizes growth rate.


**Comments**

- DEFAULT = .true.

----

.. _TGLF_USE_BPAR:

USE_BPAR
--------

**Definition**

Include compressional magnetic fluctuations, :math:`\delta B_{\lVert }`. Note: The BPAR flutter is not well resolved by TGLF (not enough moments) and does not reproduce GYRO linear results for NSTX-U.


**Comments**

- DEFAULT = .false.

----

.. _TGLF_USE_BPER:

USE_BPER
--------

**Definition**

Include transverse magnetic fluctuations, :math:`\delta A_{\lVert }`.


**Comments**

- DEFAULT = .false.

----

.. _TGLF_USE_INBOARD_DETRAPPED:

USE_INBOARD_DETRAPPED
---------------------

**Definition**

Set trapped fraction to zero if eigenmode is inward ballooning.


**Comments**

- DEFAULT = .false.

----

.. _TGLF_USE_MHD_RULE:

USE_MHD_RULE
------------

**Definition**

Ignore pressure gradient contribution to curvature drift. Recommend setting to .false. for high beta.


**Comments**

- DEFAULT = .true.

----

.. _TGLF_USE_TRANSPORT_MODEL:

USE_TRANSPORT_MODEL
-------------------

**Definition**



**Comments**

- DEFAULT = .true.

----

.. _TGLF_VEXB:

VEXB
----

**Definition**

Normalized of ExB velocity Doppler shift common to all species (not in use, see VPAR).


**Comments**

- DEFAULT = 0.0

----

.. _TGLF_VEXB_SHEAR:

VEXB_SHEAR
----------

**Definition**

Normalized toroidal ExB velocity Doppler shift gradient common to all species. For large ExB velocity ordering :math:`V_{tor}=V_{ExB}`.
VEXB_SHEAR = :math:`-SIGN(I_{tor}){\frac {r}{ABS(q)}}{\frac {\partial }{\partial r}}({\frac {V_{ExB}}{R}}){\frac {a}{c_{s}}}`.


**Comments**

- DEFAULT = 0.0

----

.. _TGLF_VPAR_1:

VPAR_1
------

**Definition**

Species array of parallel velocities, :math:`SIGN(I_{tor}){\frac {R_{maj}V_{tor}}{Rc_{s}}}`.


**Comments**

- DEFAULT = 0.0 , 0.0

----

.. _TGLF_VPAR_MODEL:

VPAR_MODEL
----------

**Definition**



**Choices**

- VPAR_MODEL = 0: low-Mach-number limit


**Comments**

- DEFAULT = 0

----

.. _TGLF_VPAR_SHEAR_1:

VPAR_SHEAR_1
------------

**Definition**

Normalized parallel velocity gradient, :math:`-SIGN(I_{tor})R_{maj}{\frac {\partial }{\partial r}}({\frac {V_{tor}}{R}}){\frac {a}{c_{s}}}`.


**Comments**

- DEFAULT = 0.0 , 0.0 

----

.. _TGLF_VPAR_SHEAR_MODEL:

VPAR_SHEAR_MODEL
----------------

**Definition**

Depricated parameter.


**Comments**

- DEFAULT = 0

----

.. _TGLF_WD_ZERO:

WD_ZERO
-------

**Definition**

Cutoff for curvature drift eigenvalues to prevent zero.


**Comments**

- DEFAULT = 0.1

----

.. _TGLF_WIDTH:

WIDTH
-----

**Definition**

Maximum width of the Gaussian measure for the parallel Hermite polynomial basis.


**Comments**

- DEFAULT = 1.65

----

.. _TGLF_WIDTH_MIN:

WIDTH_MIN
---------

**Definition**

Minimum width used in search for maximum growth rate.


**Comments**

- DEFAULT = 0.3

----

.. _TGLF_WRITE_WAVEFUNCTION_FLAG:

WRITE_WAVEFUNCTION_FLAG
-----------------------

**Definition**

Self-explanatory.


**Comments**

- DEFAULT = 0

----

.. _TGLF_XNUE:

XNUE
----

**Definition**

Electron-ion collision frequency :math:`{\frac {v_{ei}}{c_{s}/a}}`.


**Comments**

- DEFAULT = 0.0

----

.. _TGLF_XNU_FACTOR:

XNU_FACTOR
----------

**Definition**

Multiplies the trapped/passing boundary electron-ion collision terms.


**Comments**

- DEFAULT = 1.0

----

.. _TGLF_XNU_MODEL:

XNU_MODEL
---------

**Definition**

Collision model. 


**Choices**

- XNU_MODEL = 2: default preset for SAT0 and SAT1
- XNU_MODEL = 3: default preset for SAT2


**Comments**

- DEFAULT = 2

----

.. _TGLF_XWELL_SA:

XWELL_SA
--------

**Definition**

Magnetic well.


**Comments**

- DEFAULT = 0.0

----

.. _TGLF_ZEFF:

ZEFF
----

**Definition**

Effective ion charge.


**Comments**

- DEFAULT = 1.0

----

.. _TGLF_ZETA_LOC:

ZETA_LOC
--------

**Definition**

Squareness, :math:`\zeta \,\!` , of flux surface.


**Comments**

- DEFAULT = 0.0

----

.. _TGLF_ZMAJ_LOC:

ZMAJ_LOC
--------

**Definition**

Flux surface centroid elevation :math:`Z_{maj}/a\,\!`.


**Comments**

- DEFAULT = 0.0 

----

.. _TGLF_ZS_1:

ZS_1
----

**Definition**

Species charge numbers.


**Comments**

- DEFAULT = -1.0 , 1.0

----Return to :doc:`table of inputs and outputs <tglf_table>`

