.. |exb| mathmacro:: \mathbf{E}\times\mathbf{B}

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
   \beta_* = \frac{8\pi}{B_\mathrm{unit}^2} \frac{dp}{dr}

**Comments**

- DEFAULT = 1.0
- In the absence of scaling, the value of :math:`\beta_*` will be computed self-consistently given the value of :math:`\beta_{e,\mathrm{unit}}` set in :ref:`cgyro_betae_unit`.
- Often it is desired to reduce :math:`\beta_{e,\mathrm{unit}}` but leave the pressure gradient unchanged.  In this case, one might reduce :ref:`cgyro_betae_unit` by a factor of 2, and then set BETA_STAR_SCALE=2.

----

.. _cgyro_btccw:

BTCCW
-----

**Definition**

Parameter which selects the orientation of the toroidal magnetic field :math:`B_t` relative to the toroidal angle :math:`\varphi`.

**Choices**

- BTCCW = 1: Counter-clockwise when viewed from above the torus - negative :math:`\hat{e}_{\varphi}` for the right-handed coordinate system :math:`(r,\theta,\varphi)`.  Thus, :math:`B_t` is oriented along the negative :math:`\hat{e}_{\varphi}` direction.
- BTCCW = -1: Clockwise when viewed from above the torus - positive :math:`\hat{e}_{\varphi}` for the right-handed coordinate system :math:`(r,\theta,\varphi)`.  Thus, :math:`B_t` is oriented along the positive :math:`\hat{e}_{\varphi}` direction. 

**Comments**

- DEFAULT = -1
- In DIII-D, typically BTCCW = 1.
- When experimental profiles are used (:ref:`cgyro_profile_model` = 2), the orientiation of :math:`B_t` is inferred from :ref:`input.profiles`.


----

.. _cgyro_box_size:

BOX_SIZE
--------

**Definition**

Factor to determine the radial box length, :math:`L_x`, as a multiple of the distance between reference singular surfaces, :math:`L_0 = r/(qs)`.

.. math::
    \frac{L_x}{a} = \mathrm{BOX\_SIZE} \; \left( \frac{r}{qs} \right)


**Comments**

- DEFAULT = 1.0
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
  

----

.. _cgyro_collision_field_model:

COLLISION_FIELD_MODEL
---------------------

**Definition**

----

.. _cgyro_collision_mom_restore:

COLLISION_MOM_RESTORE
---------------------

**Definition**

----

.. _cgyro_collision_ene_restore:

COLLISION_ENE_RESTORE
---------------------

**Definition**

----

.. _cgyro_collision_ene_diffusion:

COLLISION_ENE_DIFFUSION
-----------------------

**Definition**

----

.. _cgyro_collision_kperp:

COLLISION_KPERP
---------------

**Definition**

----

.. _cgyro_delta:

DELTA
-----

**Definition**

Triangularity, :math:`\delta`, of the flux surface:
   
**Comments**

- DEFAULT = 0.0
- This is only active with :ref:`cgyro_equilibrium_model` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:ref:`cgyro_profile_model` = 2), the triangularity as a function of radius is read from input.profiles.

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

.. _cgyro_dens:

DENS_*
------

**Definition**

----

.. _cgyro_dlnndr:

DLNNDR_*
--------

**Definition**

----

.. _cgyro_dlntdr:

DLNTDR_*
--------

**Definition**

----

.. _cgyro_dzmag:

DZMAG
-----

**Definition**

----

.. _cgyro_equilibrium_model:

EQUILIBRIUM_MODEL
-----------------

**Definition**

----

.. _cgyro_field_print_flag:

FIELD_PRINT_FLAG
----------------

**Definition**

Toggle printing of :math:`\delta A_\parallel(k_x^0,k_y,t)` and :math:`\delta B_\parallel(k_x^0,k_y,t)` .

**Comments**

- DEFAULT = 0.

----

.. _cgyro_freq_tol:

FREQ_TOL
--------

**Definition**

----

.. _cgyro_gamma_e:

GAMMA_E
-------

**Definition**

Normalized :math:`\exb` shearing rate :math:`(a/c_s) \gamma_E`.

**Comments**

- DEFAULT = 0.0
      
----

.. _cgyro_gamma_e_scale:

GAMMA_E_SCALE
-------------

**Definition**

----

.. _cgyro_gamma_p:

GAMMA_P
-------

**Definition**

----

.. _cgyro_gamma_p_scale:

GAMMA_P_SCALE
-------------

**Definition**

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

----

.. _cgyro_kappa:

KAPPA
-----

**Definition**

Elongation, :math:`\kappa`, of the flux surface.

**Comments**

- DEFAULT = 1.0
- This is only active with :ref:`cgyro_equilibrium_model` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:ref:`cgyro_profile_model` = 2), the elongation as a function of radius is read from input.profiles.

----

.. _cgyro_kxkyflux_print_flag:

KXKYFLUX_PRINT_FLAG
-------------------

**Definition**

Toggle printing of :math:`Q_a(k_x^0,k_y,t)` .

**Comments**

- DEFAULT = 0.

----

.. _cgyro_ky:

KY
--

**Definition**

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

----

.. _cgyro_mach_scale:

MACH_SCALE
----------

**Definition**

----

.. _cgyro_mass:

MASS_*
------

**Definition**

----

.. _cgyro_max_time:

MAX_TIME
--------

**Definition**

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

.. _cgyro_nonlinear_flag:

NONLINEAR_FLAG
--------------

**Definition**

----

.. _cgyro_n_field:

N_FIELD
-------

**Definition**

----

.. _cgyro_up_radial:

UP_RADIAL
---------

**Definition**

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

----

.. _cgyro_n_theta:

N_THETA
-------

**Definition**

----

.. _cgyro_n_xi:

N_XI
----

**Definition**

----

.. _cgyro_n_energy:

N_ENERGY
--------

**Definition**

----

.. _cgyro_e_max:

E_MAX
-----

**Definition**

----

.. _cgyro_n_toroidal:

N_TOROIDAL
----------

**Definition**

----

.. _cgyro_n_species:

N_SPECIES
---------

**Definition**

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

----

.. _cgyro_q:

Q
-

**Definition**

Safety factor, :math:`q`, of the flux surface.
     
**Comments**

- DEFAULT = 2.0
- This is only active with :ref:`cgyro_equilibrium_model` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:ref:`cgyro_profile_model` = 2), the safety factor as a function of radius is read from input.profiles and the safety factor gradient is computed internally.
  
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
- When experimental profiles are used (:ref:`cgyro_profile_model` = 2), the safety factor as a function of radius is read from input.profiles and the safety factor gradient is computed internally.
  
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
- When experimental profiles are used (:ref:`cgyro_profile_model` = 2), the flux-surface-center major radius as a function of radius, :math:`R_0(r)`,  is read from input.profiles and its derivative is computed internally.

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

----

.. _cgyro_s_kappa:

S_KAPPA
-------

**Definition**

----

.. _cgyro_s_zeta:

S_ZETA
------

**Definition**

----

.. _cgyro_temp:

TEMP*
-----

**Definition**

----

.. _cgyro_udsymmetry_flag:

UDSYMMETRY_FLAG
---------------

**Definition**

----

.. _cgyro_z:

Z_*
---

**Definition**

Species charge.  First species charge is ``Z_1``, and so on.

**Comments**

- DEFAULT = 1
- A typical case (deuterium, carbon, electrons) would be ``Z_1=1``, ``Z_2=6``, ``Z_3=-1``.
     
----

.. _cgyro_zeta:

ZETA
----

**Definition**

Squareness, :math:`\zeta`, of the flux surface.
     
**Comments**

- DEFAULT = 0.0
- This is only active with :ref:`cgyro_equilibrium_model` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:ref:`cgyro_profile_model` = 2), the squareness as a function of radius is read from input.profiles.

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


