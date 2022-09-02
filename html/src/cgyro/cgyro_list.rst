.. |exb| mathmacro:: \mathbf{E}\times\mathbf{B}
.. |dphi| mathmacro:: \delta\phi
.. |dap| mathmacro:: \delta A_\parallel
.. |dbp| mathmacro:: \delta B_\parallel

Alphabetical list for input.cgyro
=================================

.. _cgyro_amp:

AMP
---

**Definition**

Initial amplitude of finite-:math:`n` modes.

**Comments**

- DEFAULT = 0.1
- For linear simulations, the value is unimportant
- For nonlinear runs, this will usually need to be reduced to a smaller value.

----

.. _cgyro_amp0:

AMP0
----

**Definition**

Initial amplitude of :math:`n = 0` modes.

**Comments**

- DEFAULT = 0.0

----

.. _cgyro_betae_unit:

BETAE_UNIT
----------
**Comments**

- DEFAULT = 0.0


**Definition**

The electron beta with reference to :math:`B_\mathrm{unit}`:

.. math::
   \beta_{e,\mathrm{unit}} \doteq \frac{8 \pi n_e T_e}{B_\mathrm{unit}^2}


**Comments**

- DEFAULT = 0.0
   
----

.. _cgyro_betae_unit_scale:

BETAE_UNIT_SCALE
----------------

**Definition**

Scale factor for :ref:`cgyro_betae_unit`.

**Comments**

- DEFAULT = 1.0

----

.. _cgyro_beta_star_scale:

BETA_STAR_SCALE
---------------

**Definition**

Pressure gradient scaling factor.  Here, the pressure gradient factor is
defined as

.. math::
   \beta_* = - \frac{8\pi}{B_\mathrm{unit}^2} \frac{dp}{dr}

**Comments**

- DEFAULT = 1.0
- In the absence of scaling, the value of :math:`\beta_*` will be computed self-consistently given the value of :math:`\beta_{e,\mathrm{unit}}` set in :ref:`cgyro_betae_unit`.
- Often it is desired to reduce :math:`\beta_{e,\mathrm{unit}}` but leave the effective :math:`\beta_*` unchanged.  In this case, one should divide :ref:`cgyro_betae_unit` by 2, then set BETA_STAR_SCALE=2.

----

.. _cgyro_btccw:

BTCCW
-----

**Definition**

Parameter which selects the orientation of the toroidal magnetic field :math:`B_t` relative to the toroidal angle :math:`\varphi`.

**Choices**

- BTCCW = 1: Counter-clockwise when viewed from above the torus - negative :math:`\mathbf{e}_{\varphi}` for the right-handed coordinate system :math:`(r,\theta,\varphi)`.  Thus, :math:`B_t` is oriented along the negative :math:`\mathbf{e}_{\varphi}` direction.
- BTCCW = -1: Clockwise when viewed from above the torus - positive :math:`\mathbf{e}_{\varphi}` for the right-handed coordinate system :math:`(r,\theta,\varphi)`.  Thus, :math:`B_t` is oriented along the positive :math:`\mathbf{e}_{\varphi}` direction. 

**Comments**

- DEFAULT = -1
- In DIII-D, typically BTCCW = 1.
- When experimental profiles are used (:ref:`cgyro_profile_model` = 2), the orientiation of :math:`B_t` is inferred from :ref:`input.gacode`.


----

.. _cgyro_box_size:

BOX_SIZE
--------

**Definition**

Integer multiplier to determine the radial box length, :math:`L_x`, as a multiple of the distance between reference singular surfaces, :math:`L_0 = r/(qs)`.

.. math::
    \frac{L_x}{a} = \mathrm{BOX\_SIZE} \; \left( \frac{r}{qs} \right)


**Comments**

- DEFAULT = 1 (integer)
- Note that the reference singular surface spacing refers to :math:`n=1` which is always the lowest non-zero mode in CGYRO.
- Also, :math:`r \rightarrow` :ref:`cgyro_rmin`, :math:`s \rightarrow` :ref:`cgyro_s`, :math:`q \rightarrow` :ref:`cgyro_q`. 

----

.. _cgyro_collision_model:

COLLISION_MODEL
---------------

**Definition**

Collision operator selection.

**Choices**

- COLLISION_MODEL = 1: Lorentz ee+ei
- COLLISION_MODEL = 2: Connor
- COLLISION_MODEL = 4: Sugama (maximal accuracy)
- COLLISION_MODEL = 5: Simple Lorentz ee+ei (fastest)

**Comments**

- DEFAULT = 4
- To control conservation and other properties, the following parameters can be set: :ref:`cgyro_collision_field_model`, :ref:`cgyro_collision_mom_restore`, :ref:`cgyro_collision_ene_restore`, :ref:`cgyro_collision_ene_diffusion`, :ref:`cgyro_collision_kperp`
- Memory usage can be reduced by setting :ref:`cgyro_collision_precision_mode`.
- On GPU systems, GPU offload is controlled by :ref:`cgyro_gpu_bigmem_flag`. When that is not enabled, the slower but less GPU memory demanding CPU-only Sugama operator is used.
  
----

.. _cgyro_collision_field_model:

COLLISION_FIELD_MODEL
---------------------

**Definition**

Flag to toggle self-consistent field update during collisions.

**Choices**

- COLLISION_FIELD_MODEL = 0: Field update OFF
- COLLISION_FIELD_MODEL = 1: Field update ON 

**Comments**

- DEFAULT = 1

----

.. _cgyro_collision_mom_restore:

COLLISION_MOM_RESTORE
---------------------

**Definition**

Flag to toggle collisional momentum conservation.

**Choices**

- COLLISION_MOM_RESTORE = 0: Momentum conservation OFF
- COLLISION_MOM_RESTORE = 1: Momentum conservation ON 

**Comments**

- DEFAULT = 1
- For test purposes only.

----

.. _cgyro_collision_ene_restore:

COLLISION_ENE_RESTORE
---------------------

**Definition**

Flag to toggle collisional energy conservation.

**Choices**

- COLLISION_ENE_RESTORE = 0: Energy conservation OFF
- COLLISION_ENE_RESTORE = 1: Energy conservation ON 

**Comments**

- DEFAULT = 1
- For test purposes only.

----

.. _cgyro_collision_ene_diffusion:

COLLISION_ENE_DIFFUSION
-----------------------

**Definition**

Flag to toggle collisional energy diffusion.

**Choices**

- COLLISION_ENE_DIFFUSION = 0: Energy diffusion OFF
- COLLISION_ENE_DIFFUSION = 1: Energy diffusion ON 

**Comments**

- DEFAULT = 1
- For test purposes only.

----

.. _cgyro_collision_kperp:

COLLISION_KPERP
---------------

**Definition**

Flag to toggle :math:`k_\perp^2` terms in collision operator.

**Choices**

- COLLISION_KPERP = 0: Terms OFF
- COLLISION_KPERP = 1: Terms ON 

**Comments**

- DEFAULT = 1
- For test purposes only.

----

.. _cgyro_collision_precision_mode:

COLLISION_PRECISION_MODE
------------------------

**Definition**

Control the precision of the Sugama cmat constants.

**Choices**

- COLLISION_PRECISION_MODE = 0: Full 64-bit precision
- COLLISION_PRECISION_MODE = 1: Use lower-precision 32-bit precision for off-diagonal element.

**Comments**

- DEFAULT = 0
- Only active for :ref:`cgyro_collision_model` =4
- Selecting COLLISION_PRECISION_MODE = 1 results in significant memory saving and negligible precision loss in most use-cases.

----

.. _cgyro_collision_full_stripes:

COLLISION_FULL_STRIPES
----------------------

**Definition**

Number of full 64-bit stripes to use close to the diagonal in low-precision mode.

**Comments**

- DEFAULT = 8
- Only active for :ref:`cgyro_collision_model` =4 and :ref:`cgyro_collision_precision_mode` =1

----

.. _cgyro_delta:

DELTA
-----

**Definition**

Triangularity, :math:`\delta`, of the flux surface:
   
**Comments**

- DEFAULT = 0.0
- This is only active with :ref:`cgyro_equilibrium_model` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:ref:`cgyro_profile_model` = 2), the triangularity as a function of radius is read from :ref:`input.gacode`.

----

.. _cgyro_delta_t:

DELTA_T
-------

**Definition**

Simulation timestep :math:`(c_s/a) \Delta t`.

**Comments**

- DEFAULT = 0.01
- Because CGYRO uses an explicit time-integration scheme for collisionless terms, the timestep must typically be smaller than for long-wavelength GYRO simulations. 

----

.. _cgyro_delta_t_method:

DELTA_T_METHOD
--------------

**Definition**

Control for adaptive or fixed time-stepping.

**Choices**

- DELTA_T_METHOD = 0: RK4 4:4(3) [non-adaptive]
- DELTA_T_METHOD = 1: Cash-Karp 6:5(4) 
- DELTA_T_METHOD = 2: Bogacki-Shampine 7:5(4) 
- DELTA_T_METHOD = 3: Verner 10:7(6)

**Comments**

- DEFAULT = 0
- Notation is s:o(e) where s=stages,o=order,e=order of error estimate.
  
----

.. _cgyro_dens:

DENS_*
------

**Definition**

The normalized equilibrium-scale density.  First species density is DENS_1, and so on.

.. math::
   \mathrm{DENS}* = \frac{n_{*}}{n_e}

**Commments**

- DEFAULT = :math:`[1,0,0,\ldots]`
- The user should set DENS=1 for electrons.
- When experimental profiles are used (:ref:`cgyro_profile_model` = 2), the densities
  are automatically normalized to :math:`n_e`.
- When rotation effects are included (:ref:`cgyro_rotation_model` = 2), this parameter
  is the density at the outboard midplane (:math:`\theta=0`).  

----

.. _cgyro_dlnndr:

DLNNDR_*
--------

**Definition**

The normalized equilibrium-scale density gradient scale length:

.. math::
   \mathrm{DLNNDR}\_* = -a \frac{\partial {\rm ln} n_{*}}{\partial r}

**Commments**

- DEFAULT = :math:`[1,1,1,\ldots]`
- When experimental profiles are used (:ref:`cgyro_profile_model` = 2), the density as a function of radius is
  read from :ref:`input.gacode` and the gradient is computed internally.  The normalizing length is the
  plasma minor radius.
- When rotation effects are included (:ref:`cgyro_rotation_model` = 2), this parameter is the value at the
  outboard midplane (:math:`\theta=0`).  

----

.. _cgyro_dlntdr:

DLNTDR_*
--------

**Definition**

The normalized equilibrium-scale temperature gradient scale length:

.. math::
   \mathrm{DLNTDR}\_* = -a \frac{\partial {\rm ln} T_{*}}{\partial r} \; .

**Commments**

- DEFAULT = :math:`[1,1,1,\ldots]`
- When experimental profiles are used (:ref:`cgyro_profile_model` = 2), the temperature as a function of radius is
  read from :ref:`input.gacode` and the gradient is computed internally.  The normalizing length is the
  plasma minor radius.
- When rotation effects are included (:ref:`cgyro_rotation_model` = 2), this parameter is the value at the
  outboard midplane (:math:`\theta=0`).  

----

.. _cgyro_dzmag:

DZMAG
-----

**Definition**

Rate of change of plasma elevation:

.. math::
   a \frac{\partial Z_0(r)}{\partial r} \; .


----

.. _cgyro_e_max:

E_MAX
-----

**Definition**

Maximum value of (pseudospectral) dimensionless energy, :math:`\varepsilon_\mathrm{max}` 

**Comments**

- DEFAULT = 8.0
- Corresponds to Maxwellian factor :math:`\displaystyle e^{-\varepsilon_\mathrm{max}}`

----

.. _cgyro_error_tol:

ERROR_TOL
---------

**Definition**

Error tolerance for adaptive time-stepping.

**Comments**

- DEFAULT = 1e-4
- Decrease this slightly for very-high-transport cases

----

.. _cgyro_equilibrium_model:

EQUILIBRIUM_MODEL
-----------------

**Definition**

Flux-surface shape specification parameter.

**Choices**

- EQUILIBRIUM_MODEL = 1: :math:`s` - :math:`\alpha` 
- EQUILIBRIUM_MODEL = 2: Miller parameterization
- EQUILIBRIUM_MODEL = 3: General (Fourier) parameterization 

**Comments**

- DEFAULT = 2
- EQUILIBRIUM_MODEL=1 is not available for experimental profiles (:ref:`cgyro_profile_model` =2).

----

.. _cgyro_field_print_flag:

FIELD_PRINT_FLAG
----------------

**Definition**

Toggle printing of :math:`\dap(k_x^0,k_y,t)` and :math:`\dbp(k_x^0,k_y,t)` .

**Comments**

- DEFAULT = 0
- Output files are ``bin.cgyro.kxky_apar`` and ``bin.cgyro.kxky_bpar``, respectively
- Even if this flag is set to zero, potential fluctuations :math:`\dphi(k_x^0,k_y,t)` are written to ``bin.cgyro.kxky_phi``

----

.. _cgyro_freq_tol:

FREQ_TOL
--------

**Definition**

Eigenvalue convergence tolerance for linear simulations.

**Comments**

- DEFAULT = 0.001

----

.. _cgyro_gamma_e:

GAMMA_E
-------

**Definition**

Normalized :math:`\exb` shearing rate :math:`\displaystyle \frac{a}{c_s} \gamma_E`.

**Comments**

- DEFAULT = 0.0
- See discussion on :doc:`plasma rotation <../rotation>`
     
----

.. _cgyro_gamma_e_scale:

GAMMA_E_SCALE
-------------

**Definition**

Scaling factor applied to experimental value of :math:`\gamma_E` .

**Comments**

- DEFAULT = 1.0
- Only active for :ref:`cgyro_profile_model` =2

----

.. _cgyro_gamma_p:

GAMMA_P
-------

**Definition**

Normalized rotation shearing rate :math:`\displaystyle \frac{a}{c_s} \gamma_p`.

**Comments**

- DEFAULT = 0.0
- See discussion on :doc:`plasma rotation <../rotation>`

----

.. _cgyro_gamma_p_scale:

GAMMA_P_SCALE
-------------

**Definition**

Scaling factor applied to experimental value of :math:`\gamma_p` .

**Comments**

- DEFAULT = 1.0
- Only active for :ref:`cgyro_profile_model` =2

----

.. _cgyro_gpu_bigmem_flag:

GPU_BIGMEM_FLAG
---------------

**Definition**

Enable (or disable) memory intensive GPU offload.

**Choices**

- GPU_BIGMEM_FLAG = 0: The slower but less GPU memory demanding CPU-only Sugama operator is used.
- GPU_BIGMEM_FLAG = 1: The GPU-accelerated Sugama operator is used. Large memory use due to cmat.
- GPU_BIGMEM_FLAG > 1: Less GPU memory demanding, as only 1/GPU_BIGMEM_FLAG of cmat is kept in memory at any time. Slower due to memory copies.

**Comments**

- DEFAULT = 1
- Only active on GPU systems for :ref:`cgyro_collision_model` =4

----

.. _cgyro_h_print_flag:

H_PRINT_FLAG
------------

**Definition**

Toggle printing of distribution for single-mode runs.

**Comments**

- DEFAULT = 0.

----

.. _cgyro_ipccw:

IPCCW
-----

**Definition**

Parameter which selects the orientation of the plasma current (and thus the poloidal magnetic field :math:`B_p`) relative to the toroidal angle :math:`\varphi`.

**Choices**

- IPCCW = 1: Counter-clockwise when viewed from above the torus - negative :math:`\mathbf{e}_{\varphi}` for the right-handed coordinate system :math:`(r,\theta,\varphi)`.  Thus, :math:`B_p` is oriented along the negative :math:`\mathbf{e}_{\varphi}` direction.
- IPCCW = -1: Clockwise when viewed from above the torus - positive :math:`\mathbf{e}_{\varphi}` for the right-handed coordinate system :math:`(r,\theta,\varphi)`.  Thus, :math:`B_p` is oriented along the positive :math:`\mathbf{e}_{\varphi}` direction. 

**Comments**

- DEFAULT = -1
- In DIII-D, typically IPCCW = 1.
- When experimental profiles are used (:ref:`cgyro_profile_model` = 2), the orientiation of IP is inferred from :ref:`input.gacode`.

----

.. _cgyro_kappa:

KAPPA
-----

**Definition**

Elongation, :math:`\kappa`, of the flux surface.

**Comments**

- DEFAULT = 1.0
- This is only active with :ref:`cgyro_equilibrium_model` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:ref:`cgyro_profile_model` = 2), the elongation as a function of radius is read from input.gacode.

----

.. _cgyro_gflux_print_flag:

GFLUX_PRINT_FLAG
----------------

**Definition**

Toggle printing of global flux profiles.

**Comments**

- DEFAULT = 0
- See also :ref:`cgyro_n_global`

----

.. _cgyro_ky:

KY
--

**Definition**

Selector for value of :math:`k_\theta \rho_s` .

**Comments**

- If :ref:`cgyro_n_toroidal` = 1, this is the simulated value of :math:`k_\theta \rho_s`
- If :ref:`cgyro_n_toroidal` > 1, this is the lowest nonzero value of :math:`k_\theta \rho_s`
- Use the output in ``out.cgyro.info`` to guide selection of KY

----

.. _cgyro_lambda_debye:

LAMBDA_DEBYE
------------

**Definition**

----

.. _cgyro_lambda_debye_scale:

LAMBDA_DEBYE_SCALE
------------------

**Definition**

----

.. _cgyro_mach:

MACH
----

**Definition**

Rotation speed (Mach number) :math:`M` 

**Comments**

- DEFAULT = 0.0
- See discussion in :doc:`plasma rotation <../rotation>`

----

.. _cgyro_mach_scale:

MACH_SCALE
----------

**Definition**

Scaling factor applied to experimental value of :math:`M` .

**Comments**

- DEFAULT = 1.0
- Only active for :ref:`cgyro_profile_model` =2

----

.. _cgyro_mass:

MASS_*
------

**Definition**

The species mass normalized to deuterium mass: MASS_1, and so on.

.. math::
   {\rm MASS}\_* = \frac{m_*}{m_D} \; .

**Commments**

- DEFAULT = :math:`[1,1,1,\ldots]`
- When experimental profiles are used (:ref:`cgyro_profile_model` = 2), the normalizing mass is deuterium.
- A typical case (deuterium, carbon, electrons) would be::

   MASS_1=1.0
   MASS_2=6.0
   MASS_3=2.724e-4


----

.. _cgyro_max_time:

MAX_TIME
--------

**Definition**

Maximum simulation time in units of :math:`a/c_s`

----

.. _cgyro_moment_print_flag:

MOMENT_PRINT_FLAG
-----------------

**Definition**

Toggle printing of :math:`\delta n_a(k_x^0,k_y,t)`
and :math:`\delta E_a(k_x^0,k_y,t)` .

**Comments**

- DEFAULT = 0.

----

.. _cgyro_mpi_rank_order:

MPI_RANK_ORDER
--------------

**Definition**

Specify the relative ordering of MPI ranks.

**Choices**

- MPI_RANK_ORDER = 1: Depth-first mode
- MPI_RANK_ORDER = 2: Breadth-first mode

**Comments**

- DEFAULT = 2
- The optimal value depends on both the hardware and the problem being run.

----

.. _cgyro_nonlinear_flag:

NONLINEAR_FLAG
--------------

**Definition**

Toggle inclusion of nonlinear terms.

**Choices**

- NONLINEAR_FLAG=0: Nonlinear terms OFF
- NONLINEAR_FLAG=1: Nonlinear terms ON

**Comments**

- DEFAULT = 0
  
----

.. _cgyro_n_field:

N_FIELD
-------

**Definition**

Selector for number of fluctuating fields

**Choices**

- N_FIELD=1: Retain :math:`\dphi`
- N_FIELD=2: Retain :math:`(\dphi,\dap)`
- N_FIELD=3: Retain :math:`(\dphi,\dap,\dbp)`
  
**Comments**

- DEFAULT = 1

----

.. _cgyro_n_global:

N_GLOBAL
--------

**Definition**

Control number of global output harmonics
  
**Comments**

- DEFAULT = 4
- Making this larger retains shorter scales in the output

----

.. _cgyro_nu_global:

NU_GLOBAL
---------

**Definition**

Source rate

**Comments**

- DEFAULT = 15.0
- Making this larger increases the source rate

----

.. _cgyro_nup_radial:

NUP_RADIAL
----------

**Definition**

----

.. _cgyro_up_theta:

UP_THETA
--------

**Definition**

----

.. _cgyro_nup_theta:

NUP_THETA
---------

**Definition**

Accuracy control for the poloidal discretization scheme.

**Choices**

- NUP_THETA=1: 1st-order conservative upwind
- NUP_THETA=2: 3rd-order conservative upwind
- NUP_THETA=3: 5th-order conservative upwind

**Comments**

- DEFAULT=3 (5th order)
- The numerical scheme (conservative upwind) is modified by projecting out density and current perturbations induced by the grid-scale dissipation.
  
----

.. _cgyro_up_alpha:

UP_ALPHA
--------

**Definition**

----

.. _cgyro_nup_alpha:

NUP_ALPHA
---------

**Definition**

----

.. _cgyro_nu_ee:

NU_EE
-----

**Definition**

Electron-electron collision frequency :math:`\nu_{ee}`, in units of :math:`c_s/a`.

.. math::
   \nu_{ee} = \frac{4\pi n_e e^4}{(2T_e)^{3/2} m_e^{1/2}} \,\log\Lambda \; .
  
**Comments**

- DEFAULT = 0.1
- All ion collision rates are self-consistently determined from :ref:`cgyro_nu_ee`.
- The recommended *minimum value* is :ref:`cgyro_nu_ee` = 0.01.

----

.. _cgyro_n_radial:

N_RADIAL
--------

**Definition**

Number of radial wavenumbers (radial Fourier harmonics) to retain in simulation.

**Comments**

- DEFAULT = 4
- For **linear simulations** with :ref:`cgyro_box_size` =1, this can be as small as 2, but a minimium of 4 is recommended.
- For **nonlinear simulations**, we recommend N_RADIAL > :math:`L_x/\rho`
- Wavenumbers span :math:`p = -N , \ldots , N-1` where :math:`N` = N_RADIAL/2
  
----

.. _cgyro_n_theta:

N_THETA
-------

**Definition**

Number of poloidal gridpoints :math:`\theta_i`.  There is a single poloidal mesh for both the distribution function and the fields (unlike GYRO).

**Comments**

- DEFAULT = 24
- The order of accuracy of the poloidal discretization is controlled by  :ref:`cgyro_nup_theta`.
  
----

.. _cgyro_n_xi:

N_XI
----

**Definition**

Number of Legendre pseudospectral meshpoints :math:`\xi_i` to retain in simulation.

**Comments**

- DEFAULT = 16
- This is the **pitch-angle resolution**
- This is equivalent to number of retained Legendre polynomials
  
----

.. _cgyro_n_energy:

N_ENERGY
--------

**Definition**

Number of generalized-Laguerre pseudospectral meshpoints :math:`v_i` to retain in simulation 

**Comments**

- DEFAULT = 8
- This is the **energy resolution**
- This is equivalent to number of retained Laguerre polynomials

----

.. _cgyro_n_toroidal:

N_TOROIDAL
----------

**Definition**

Number of toroidal harmonics (binormal Fourier modes).  

**Comments**

- Together with :ref:`cgyro_ky`, this controls the toroidal resolution.
  
----

.. _cgyro_n_species:

N_SPECIES
---------

**Definition**

Number of kinetic species (includes electrons and all ions).

**Comments**

- DEFAULT = 1

----

.. _cgyro_print_step:

PRINT_STEP
----------

**Definition**

----

.. _cgyro_profile_model:

PROFILE_MODEL
-------------

**Definition**

Selector for profile data input.

**Choices**

- PROFILE_MODEL=1: Set local profile parameters in input.cgyro.
- PROFILE_MODEL=2: Compute local profile parameters from data in :ref:`input.gacode`.

**Comments**

- DEFAULT = 1
  
----

.. _cgyro_q:

Q
-

**Definition**

Safety factor, :math:`q`, of the flux surface.
     
**Comments**

- DEFAULT = 2.0
- This is only active with :ref:`cgyro_equilibrium_model` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:ref:`cgyro_profile_model` = 2), the safety factor as a function of radius is read from :ref:`input.gacode` and the safety factor gradient is computed internally.
  
----

.. _cgyro_quasineutral_flag:

QUASINEUTRAL_FLAG
-----------------

**Definition**

Enforce quasineutrality when using experimental profiles.

**Choices**

- QUASINEUTRAL_FLAG=0: Use raw density data.
- QUASINEUTRAL_FLAG=1: Reset main ion density to enforce quasineutrality.

**Comments**

- DEFAULT = 1
- This is only active when experimental profiles are used (:ref:`cgyro_profile_model` = 2).
  
----
  
.. _cgyro_restart_step:

RESTART_STEP
------------

.. _cgyro_rmin:

RMIN
----

**Definition**

The ratio :math:`r/a`, where :math:`r` is the :doc:`minor radius <../geometry>` and :math:`a` is the radius of the LCFS.

**Comments**

- DEFAULT = 0.5

----

.. _cgyro_rmaj:

RMAJ
----

**Definition**

The ratio :math:`R_0/a`, where :math:`R_0` is the :doc:`major radius <../geometry>` and :math:`a` is the radius of the LCFS.

**Comments**

- DEFAULT = 3.0

----
  
.. _cgyro_rotation_model:

ROTATION_MODEL
--------------

**Definition**

**Choices**

- ROTATION_MODEL = 1: Weak rotation 
- ROTATION_MODEL = 2: Sonic (Sugama) rotation

**Comments**

- DEFAULT = 1

----

.. _cgyro_s:

S
-

**Definition**

Magnetic shear, :math:`s`, of the flux surface:

.. math::
   s = \frac{r}{q} \frac{\partial q}{\partial r} \; .
 
**Comments**

- DEFAULT = 1.0
- This is only active with :ref:`cgyro_equilibrium_model` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:ref:`cgyro_profile_model` = 2), the safety factor as a function of radius is read from input.gacode and the safety factor gradient is computed internally.
  
----

.. _cgyro_shift:

SHIFT
-----

**Definition**

Shafranov shift, :math:`\Delta`, of the flux surface:

.. math::
       \Delta = \frac{\partial R_0}{\partial r} \; .
     
**Comments**

- DEFAULT = 0.0
- This is only active with :ref:`cgyro_equilibrium_model` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:ref:`cgyro_profile_model` = 2), the flux-surface-center major radius as a function of radius, :math:`R_0(r)`,  is read from input.gacode and its derivative is computed internally.

----

.. _cgyro_shape_cos0:

SHAPE_COS0
----------

**Definition**

0th antisymmetric moment.

- DEFAULT = 0.0

----

.. _cgyro_shape_s_cos0:

SHAPE_S_COS0
------------

**Definition**

0th antisymmetric moment shear.

- DEFAULT = 0.0

----

.. _cgyro_shape_cos1:

SHAPE_COS1
----------

**Definition**

1st antisymmetric moment.

- DEFAULT = 0.0

----

.. _cgyro_shape_s_cos1:

SHAPE_S_COS1
------------

**Definition**

1th antisymmetric moment shear.

- DEFAULT = 0.0

----

.. _cgyro_shape_cos2:

SHAPE_COS2
----------

**Definition**

2nd antisymmetric moment.

- DEFAULT = 0.0

----

.. _cgyro_shape_s_cos2:

SHAPE_S_COS2
------------

**Definition**

2th antisymmetric moment shear.

- DEFAULT = 0.0

----

.. _cgyro_shape_cos3:

SHAPE_COS3
----------

**Definition**

3rd antisymmetric moment.

- DEFAULT = 0.0

----

.. _cgyro_shape_s_cos3:

SHAPE_S_COS3
------------

**Definition**

3rd antisymmetric moment.

- DEFAULT = 0.0

----

.. _cgyro_shape_sin3:

SHAPE_SIN3
----------

**Definition**

3rd symmetric moment.

- DEFAULT = 0.0

----

.. _cgyro_shape_s_sin3:

SHAPE_S_SIN3
------------

**Definition**

3rd symmetric moment shear.

- DEFAULT = 0.0

----

.. _cgyro_silent_flag:

SILENT_FLAG
-----------

**Definition**

----

.. _cgyro_s_delta:

S_DELTA
-------

**Definition**

Measure of the rate of change of the average triangularity of the flux surface:

.. math::
       s_\delta = r \, \frac{\partial \delta}{\partial r} \; .

**Comments**

- DEFAULT: 0.0
- This is only active with :ref:`cgyro_equilibrium_model` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:ref:`cgyro_profile_model` = 2), the triangularity as a function of radius is read from :ref:`input.gacode` and the triangularity gradient is computed internally.

----

.. _cgyro_s_kappa:

S_KAPPA
-------

**Definition**

Measure of the rate of change of the elongation of the flux surface:

.. math::
       s_\kappa = \frac{r}{\kappa} \frac{\partial \kappa}{\partial r} \; .

**Comments**

- DEFAULT: 0.0
- This is only active with :ref:`cgyro_equilibrium_model` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:ref:`cgyro_profile_model` = 2), the elongation as a function of radius is read from :ref:`input.gacode` and the elongation gradient is computed internally.
 
----

.. _cgyro_s_zeta:

S_ZETA
------

**Definition**

Measure of the rate of change of the average squareness of the flux surface:

.. math::
       s_\zeta = r \, \frac{\partial \zeta}{\partial r} \; .

**Comments**

- DEFAULT: 0.0
- This is only active with :ref:`cgyro_equilibrium_model` = 2 (the Miller equilibrium model).

----

.. _cgyro_temp:

TEMP_*
------

**Definition**

The normalized equilibrium-scale temperature.  First species temperature is TEMP_1, and so on.

.. math::
   \mathrm{TEMP}\_* = \frac{T_{*}}{T_e} \; .

**Commments**

- DEFAULT: TEMP\_*= :math:`[1,\ldots]`
- The user should set TEMP=1 for electrons.
- When experimental profiles are used (:ref:`cgyro_profile_model` = 2), the temperatures
  are automatically normalized to :math:`T_e`.

----

.. _cgyro_udsymmetry_flag:

UDSYMMETRY_FLAG
---------------

**Definition**

----

.. _cgyro_up_radial:

UP_RADIAL
---------

**Definition**

----

.. _cgyro_upwind_single_flag:

UPWIND_SINGLE_FLAG
------------------

**Definition**

Control the precision of upwind communication.

**Choices**

- UPWIND_SINGLE_FLAG = 0: Full 64-bit precision
- UPWIND_SINGLE_FLAG = 1: Faster but lower 32-bit precision.

**Comments**

- DEFAULT = 0

----

.. _cgyro_velocity_order:

VELOCITY_ORDER
--------------

**Definition**

Specify the ordering inside the velocity space

**Choices**

- VELOCITY_ORDER = 1: species inner loop, energy outer loop
- VELOCITY_ORDER = 2: xi inner loop, species outer loop

**Comments**

- DEFAULT = 1
- VELOCITY_ORDER=2 drastically reduces the cost of communication, but requires MPI rank to be a multiple of both N_TOROIDAL and N_SPECIES.
- The restart file format is specific to VELOCITY_ORDER.

----

.. _cgyro_z:

Z_*
---

**Definition**

Species charge.  First species charge is Z_1, and so on.

**Comments**

- DEFAULT = 1
- A typical case (deuterium, carbon, electrons) would be::

   Z_1=1
   Z_2=6
   Z_3=-1
     
----

.. _cgyro_z_eff:

Z_EFF
-----

**Definition**

User-specified value for :math:`Z_\mathrm{eff}`. 
     
**Comments**

- DEFAULT = 1.0
- Normally this is computed self-consistently by CGYRO, but can be set by the user
- Enabled by setting :ref:`cgyro_z_eff_method` = 1 
- Only allowable with **simple** collision models: :ref:`cgyro_collision_model` = 1 or 5 

----

.. _cgyro_z_eff_method:

Z_EFF_METHOD
------------

**Definition**

Control how :math:`Z_\mathrm{eff}` is computed.

**Choices**

- Z_EFF_METHOD=1: Use value for Z_EFF defined in input.cgyro (or input.gacode)
- Z_EFF_METHOD=2: Compute Z_EFF automatically and self-consistently based on species data **(recommended)**

**Comments**

- DEFAULT = 2
- Only allowable with **simple** collision models: :ref:`cgyro_collision_model` = 1 or 5 

----

.. _cgyro_zeta:

ZETA
----

**Definition**

Squareness, :math:`\zeta`, of the flux surface.
     
**Comments**

- DEFAULT = 0.0
- This is only active with :ref:`cgyro_equilibrium_model` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:ref:`cgyro_profile_model` = 2), the squareness as a function of radius is read from input.gacode.

----

.. _cgyro_zf_test_mode:

ZF_TEST_MODE
------------

**Definition**

----

.. _cgyro_zmag:

ZMAG
----

**Definition**

----


Return to :doc:`table of inputs <cgyro_table>`


