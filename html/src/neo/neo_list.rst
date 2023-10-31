Alphabetical list for input.neo
===============================

.. ===========================================================================================

.. _neo_aniso_model_*:

ANISO_MODEL_*
-------------

**Definition**

Parameter which selects whether to treat a species with an anisotropic temperature model.

**Choices**

- ANISO_MODEL_*=1: isotropic temperature model
- ANISO_MODEL_*=2: anisotropic temperature model
  
  - This option is presently not available for experimental profiles (:ref:`neo_profile_model` = 2).
  - This model requires :ref:`neo_rotation_model` = 2 due to the induced poloidal density asymmetry.
  - The parallel and perpendicular temperature :ref:`neo_temp_para_*` and :ref:`neo_temp_perp_*` and the parallel and perpendicular temperature gradient scale lengths :ref:`neo_dlntdr_para_*` and :ref:`neo_dlntdr_perp_*` must also be set.
  - The parameters :ref:`neo_temp_*` and :ref:`neo_dlntdr_*` are not used.  The effective Maxwellian temperature in the DKE is determined internally based on the parallel and perpendicular temperatures.

**Comments**

- DEFAULT: 1
- The anisotropic model of each species 1-11 is set as: ANISO_MODEL_1, ANISO_MODEL_2, ANISO_MODEL_3,...  
- The subroutine interface parameter is specified as a vector: neo_aniso_model_in(1:11)
  
-----

.. ===========================================================================================

.. _neo_beta_star:

BETA_STAR
---------

**Definition**

The normalized effective pressure gradient:

.. math::
   \beta_* = - \frac{8\pi a}{B_{\rm unit}^2} \sum_a \frac{d p_a}{d r}

where :math:`B_{\rm unit}(r)=(q/r)\psi^\prime` is the effective magnetic field strength and :math:`p=\sum_a n_a T_a` is the total plasma pressure.   
     
**Comments**

- DEFAULT: 0.0
- NOTE: This parameter is *not* used in the standard DKE equation!  It is only used in the case of an anisotropic temperature species (e.g. :ref:`neo_aniso_model_*` = 2) to compute :math:`d\Phi_*/dr`.
- This is only active with :ref:`neo_equilibrium_model` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:ref:`neo_profile_model` = 2), :math:`\beta_*` is computed internally from the profile parameters in input.profiles and the normalizing length scale is the plasma minor radius.

-----

.. ===========================================================================================

.. _neo_btccw:

BTCCW
-----

**Definition**

Parameter which selects the orientation of the toroidal magnetic field :math:`B_t` relative to the toroidal angle :math:`\varphi`.

**Choices**

- BTCCW = 1: Counter-clockwise when viewed from above the torus - negative :math:`\hat{e}_{\varphi}` for the right-handed coordinate system :math:`(r,\theta,\varphi)`.  Thus, :math:`B_t` is oriented along the negative :math:`\hat{e}_{\varphi}` direction.
- BTCCW = -1: Clockwise when viewed from above the torus - positive :math:`\hat{e}_{\varphi}` for the right-handed coordinate system :math:`(r,\theta,\varphi)`.  Thus, :math:`B_t` is oriented along the positive :math:`\hat{e}_{\varphi}` direction. 

**Comments**

- DEFAULT: -1
- In DIII-D, typically BTCCW = 1.
- When experimental profiles are used (:ref:`neo_profile_model` = 2), the orientiation of BT is inferred from input.profiles.


-----

.. ===========================================================================================

.. _neo_collision_model:

COLLISION_MODEL
---------------

**Definition**

Parameter which selects the collision operator model.
     
**Choices**
  
- COLLISION_MODEL = 1: Connor model.
- COLLISION_MODEL = 2: Zeroth-order Hirshman-Sigmar model.
- COLLISION_MODEL = 3: Full Hirshman-Sigmar model.
- COLLISION_MODEL = 4: Full linearized Fokker-Plank operator.
- COLLISION_MODEL = 5: FP test particle operator with ad hoc field particle operator.

**Comments**

- DEFAULT: 4

-----

.. ===========================================================================================

.. _neo_delta:

DELTA
-----

**Definition**

Average triangularity, :math:`\delta`, of the flux surface:

.. math::
   \delta = \frac{\delta_{+} + \delta_{-}}{2}

where :math:`\delta_{+}` is the upper triangularity and :math:`\delta_{-}` is the lower triangularity.

**Comments**

- DEFAULT: 0.0
- This is only active with :ref:`neo_equilibrium_model` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:ref:`neo_profile_model` = 2), the triangularity as a function of radius is read from input.profiles.

-----

.. ===========================================================================================

.. _neo_dens_*:

DENS_*
------

**Definition**

The normalized equilibrium-scale density:

.. math::
   {\rm DENS}\_* = \frac{n_{*}}{n_{\rm norm}}

**Commments**

- DEFAULT: DENS_1=1.0, DENS_2=DENS_3=...=0.0
- The density of each species 1-11 is set as: DENS_1, DENS_2, DENS_3,...
- When experimental profiles are used (:ref:`neo_profile_model` = 2), the density as a function of radius is read from input.profiles and the normalizing density is the local density of Species 1, :math:`n_{\rm norm}(r)=n_{0,{\rm species 1}}`.
- When rotation effects are included (:ref:`neo_rotation_model` = 2), this parameter is the value at the outboard midplane (:math:`\theta=0`).  
- The subroutine interface parameter is specified as a vector: neo_dens_in(1:11)
  
-----

.. ===========================================================================================

.. _neo_dlnndr_*:

DLNNDR_*
--------

**Definition**

The normalized equilibrium-scale density gradient scale length:

.. math::
   {\rm DLNNDR}\_* = -a \frac{\partial {\rm ln} n_{*}}{\partial r}

**Commments**

- DEFAULT: 1.0
- The density gradient scale length of each species 1-11 is set as: DLNNDR_1, DLNNDR_2, DLNNDR_3,...
- When experimental profiles are used (:ref:`neo_profile_model` = 2), the density as a function of radius is read from input.profiles and the density gradient is computed internally.  The normalizing length is the plasma minor radius.
- When rotation effects are included (:ref:`neo_rotation_model` = 2), this parameter is the value at the outboard midplane (:math:`\theta=0`).  
- The subroutine interface parameter is specified as a vector: neo_dlnndr_in(1:11)
  
-----

.. ===========================================================================================

.. _neo_dlnndre_ade:

DLNNDRE_ADE
-----------

**Definition**

The normalized equilibrium-scale density gradient scale length of the electrons for the case of adiabatic electrons:

.. math::
   {\rm DLNNDRE\_ADE} = -a \frac{\partial {\rm ln} n_{0,e}}{\partial r}

**Commments**

- DEFAULT: 1.0
- This parameter does not enter the DKE and is used only as a diagnostic for strong rotation (ref:`neo_rotation_model` = 2), for which it is the value at the outboard midplane (:math:`\theta=0`).
- This paramter is used only if no species with Z < 0 is specified.  
- When experimental profiles are used (:ref:`neo_profile_model` = 2), the density as a function of radius is read from input.profiles and the density gradient is computed internally.  The normalizing length is the plasma minor radius.
   
-----

.. ===========================================================================================

.. _neo_dlntdr_*:

DLNTDR_*
--------

**Definition**

The normalized equilibrium-scale temperature gradient scale length:

.. math::
   {\rm DLNTDR}\_* = -a \frac{d {\rm ln} T_{*}}{d r}

**Commments**

- DEFAULT: 1.0
- The temperature gradient scale length of each species 1-11 is set as: DLNTDR_1, DLNTDR_2, DLNTDR_3,...
- When experimental profiles are used (:ref:`neo_profile_model` = 2), the temperature as a function of radius is read from input.profiles and the temperature gradient is computed internally. The normalizing length is the plasma minor radius. 
- The subroutine interface parameter is specified as a vector: neo_dlntdr_in(1:11)
  
-----

.. ===========================================================================================

.. _neo_dlntdr_para_*:

DLNTDR_PARA_*
-------------

**Definition**

The normalized equilibrium-scale parallel temperature gradient scale length:

.. math::
   {\rm DLNTDR}\_PARA\_* = -a \frac{d {\rm ln} T_{\|,*}}{d r}

**Commments**

- DEFAULT: 1.0
- The parallel temperature gradient scale length of each species 1-11 is set as: DLNTDR_PARA_1, DLNTDR_PARA_2, DLNTDR_PARA_3,...
- This parameter is used only when the species' anisotropic flag is set (:ref:`neo_aniso_model_*` = 2). 
- The subroutine interface parameter is specified as a vector: neo_dlntdr_para_in(1:11)
  
-----

.. ===========================================================================================

.. _neo_dlntdr_perp_*:

DLNTDR_PERP_*
-------------

**Definition**

The normalized equilibrium-scale perpendicular temperature gradient scale length:

.. math::
   {\rm DLNTDR}\_PERP\_* = -a \frac{d {\rm ln} T_{\perp,*}}{d r}

**Commments**

- DEFAULT: 1.0
- The perpendicular temperature gradient scale length of each species 1-11 is set as: DLNTDR_PERP_1, DLNTDR_PERP_2, DLNTDR_PERP_3,...
- This parameter is used only when the species' anisotropic flag is set (:ref:`neo_aniso_model_*` = 2). 
- The subroutine interface parameter is specified as a vector: neo_dlntdr_perp_in(1:11)
  
-----

.. ===========================================================================================

.. _neo_dlntdre_ade:

DLNTDRE_ADE
-----------

**Definition**

The normalized equilibrium-scale temperature gradient scale length of the electrons for the case of adiabatic electrons:

.. math::
   {\rm DLNTDRE\_ADE} = -a \frac{\partial {\rm ln} T_{e}}{\partial r}

**Commments**

- DEFAULT: 1.0
- This parameter does not enter the DKE and is used only as a diagnostic for strong rotation (ref:`neo_rotation_model` = 2), for which it is the value at the outboard midplane (:math:`\theta=0`).
- This paramter is used only if no species with Z < 0 is specified.  
- When experimental profiles are used (:ref:`neo_profile_model` = 2), the temperature as a function of radius is read from input.profiles and the temperature gradient is computed internally.  The normalizing length is the plasma minor radius.
   
-----

.. ===========================================================================================

.. _neo_dphi0dr:

DPHI0DR
-------

**Definition**

The normalized equilibrium-scale radial electric field:

.. math::
   {\rm DPHI0DR} = \frac{\partial \Phi_0}{\partial r} \left( \frac{a e}{T_{\rm norm}} \right) 

such that

.. math::
   E_r^{(0)} = -\frac{\partial \Phi_0}{\partial r} \nabla r
     
**Comments**

- DEFAULT: 0.0
- When experimental profiles are used (:ref:`neo_profile_model` = 2), this is computed internally from the profile parameters is in input.profiles and the normalizing length scale is the plasma minor radius.  See also the parameter :ref:`neo_profile_erad0_model`, which allows the simulation to be done with DPHI0DR = 0 regardless of the value in input.profiles.
- If sonic rotation effects are included (:ref:`neo_rotation_model` = 2), then this parameter is ignored and :math:`E_r^{(0)}` is assumed to be zero. With experimental profiles, this means that the :math:`E_r^{(0)}` in input.profiles is assumed to be the lowest-order field in sonic rotation theory, i.e. :math:`E_r^{(-1)}`,and is used to compute the lowest-order sonic toroidal rotation parameters, :ref:`neo_omega_rot` and :ref:`neo_omega_rot_deriv`.

-----

.. ===========================================================================================

.. _neo_epar0:

EPAR0
-----

**Definition**

The normalized equilibrium-scale inductive electric field:

.. math::
   {\rm EPAR0} = \left< E_\| B \right> \left( \frac{a e}{T_{\rm norm} B_{\rm unit}} \right)
     
**Comments**

- DEFAULT: 0.0
- In the neo theory module, the input :math:`\left< E_\| B \right>` is used directly.
- For the DKE, it into the RHS neoclassical source term as
  
  .. math::
     {\rm v_\|} \left< E_\| B \right> \frac{B}{\left< B^2 \right>}
     
- :math:`E_\|` is not presently in input.profiles.  When experimental profiles are used (:ref:`neo_profile_model` = 2), EPAR0 is read from input.neo and is assumed to be radially constant.
- For the Spitzer problem (:ref:`neo_spitzer_model` = 1), use :ref:`neo_epar0_spitzer` instead.

-----

.. ===========================================================================================

.. _neo_epar0_spitzer:

EPAR0_SPITZER
-------------

**Definition**

The normalized equilibrium-scale inductive electric field for use in the Spitzer problem:

.. math::
   {\rm EPAR0} = E_\varphi \left( \frac{a e}{T_{\rm norm}} \right)
     
**Comments**

- DEFAULT: 1.0
- For the DKE, we assume that :math:`E_\varphi` is independent of :math:`\theta`, such that :math:`{\rm v}_\| E_\varphi = {\rm v}_\| {\rm EPAR0\_SPITZER}`.
- This parameter is used only for the Spitzer problem (:ref:`neo_spitzer_model` = 1).  For the standard neoclassical problem, use :ref:`neo_epar0` instead.

-----

.. ===========================================================================================

.. _neo_equilibrium_model:

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

- DEFAULT: 0
- For experimental profiles (:ref:`neo_profile_model` = 2), this parameter is ignored and the geometric equilibrium model is instead set by the parameter :ref:`neo_profile_equilibrium_model`.
- EQUILIBRIUM_MODEL=3 is available via interface.  For this option, the number of Fourier coefficients, :ref:`neo_geo_ny`, must be a positive integer, with the corresponding Fourier coefficients set in :ref:`neo_geo_yin`. For input.neo, these parameters are set by the file input.geo.  Note that in addition to the fourier coefficients, the input equilibrium parameters :ref:`neo_rmin_over_a`, :ref:`neo_rmaj_over_a`, :ref:`neo_q`, :ref:`neo_shear`, :ref:`neo_beta_star`, :ref:`neo_btccw`, and :ref:`neo_ipccw` must also be specified.
- See the :doc:`geometry notes <../geometry>` for more details about the geometric equilibrium models.

-----

.. ===========================================================================================

.. _neo_geo_ny:

GEO_NY
------

**Definition**

Number of Fourier coefficients for general Grad-Shafranov equilibrium.
     
**Comments**

- DEFAULT: 0
- This parameter is only available via subroutine interface and not by input.neo.
- This parameter is used only if :ref:`neo_equilibrium_model` = 3.  It must be a positive integer.  The Fourier coefficient values themselves are specified by :ref:`neo_geo_yin`.
- See the :doc:`geometry notes <../geometry>` for more details about the general geometry equilibrium model.  

-----

.. ===========================================================================================

.. _neo_geo_yin:

GEO_YIN
-------

**Definition**

Array of dimension (8,0:32) with the normalized Fourier coefficients :math:`\{a\_R,b\_R,a\_Z,b\_Z\}/a` and their radial derivatives :math:`\{a\_Rp,b\_Rp,a\_Zp,b\_Zp\}` for general Grad-Shafranov equilibrium.
     
**Comments**

- DEFAULT: 0.0
- This parameter is only available via subroutine interface and not by input.neo.
- This parameter is used only if :ref:`neo_equilibrium_model` = 3.  The number of Fourier coefficients is specified by :ref:`neo_geo_ny` and the coefficients are read-in as geo_yin(8,0:geo_ny).
- See the :doc:`geometry notes <../geometry>` for more details about the general geometry equilibrium model.  

-----

.. ===========================================================================================

.. _neo_ipccw:

IPCCW
-----

**Definition**

Parameter which selects the orientation of the plasma current (and thus the poloidal magnetic field :math:`B_p`) relative to the toroidal angle :math:`\varphi`.

**Choices**

- IPCCW = 1: Counter-clockwise when viewed from above the torus - negative :math:`\hat{e}_{\varphi}` for the right-handed coordinate system :math:`(r,\theta,\varphi)`.  Thus, :math:`B_p` is oriented along the negative :math:`\hat{e}_{\varphi}` direction.
- IPCCW = -1: Clockwise when viewed from above the torus - positive :math:`\hat{e}_{\varphi}` for the right-handed coordinate system :math:`(r,\theta,\varphi)`.  Thus, :math:`B_p` is oriented along the positive :math:`\hat{e}_{\varphi}` direction. 

**Comments**

- DEFAULT: -1
- In DIII-D, typically IPCCW = 1.
- When experimental profiles are used (:ref:`neo_profile_model` = 2), the orientiation of IP is inferred from input.profiles.

-----

.. ===========================================================================================

.. _neo_kappa:

KAPPA
-----

**Definition**

Elongation, :math:`\kappa`, of the flux surface.
     
**Comments**

- DEFAULT: 1.0
- This is only active with :ref:`neo_equilibrium_model` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:ref:`neo_profile_model` = 2), the elongation as a function of radius is read from input.profiles.

-----

.. ===========================================================================================

.. _neo_mass_*:

MASS_*
------

**Definition**

The normalized mass:

.. math::
   {\rm MASS}\_* = m_{*}/m_{\rm norm}

**Commments**

- DEFAULT: 1.0
- The mass of each species 1-11 is set as: MASS_1, MASS_2, MASS_3,...
- When experimental profiles are used (:ref:`neo_profile_model` = 2), the normalizing mass is deuterium, :math:`m_{\rm norm}=m_{D}` = 3.3452e-27 kg  
- The subroutine interface parameter is specified as a vector: neo_mass_in(1:11)
  
-----

.. ===========================================================================================
   
.. _neo_n_energy:

N_ENERGY
--------

**Definition**

The number of energy polynomials -  1 in the computational domain (:math:`n_{\varepsilon,\rm total}` = N_ENERGY+1).

**Comments**

- DEFAULT: 6
- The velocity-space coordinate :math:`x_a` is the normalized velocity: :math:`x_a = \sqrt{\varepsilon} = {\rm v}/(\sqrt{2}{\rm v}_{ta})`.
- NEO uses an expansion of associated Laguerre polynomials in :math:`x_a`, which is coupled with the Legendre expansion in :math:`\xi`: :math:`P_l(\xi) L_m^{k(l)+1/2}(x_a^2)x_a^{k(l)}`, where :math:`k(l)=0` for Legendre index :math:`l=0` and :math:`k(l)=1` for Legendre index :math:`l>0`.
- The collocation integrals are formed from the monomial basis elements, :math:`x_a^{2m+k(l)}`, which can be written in terms of Gamma and Beta functions.
  
-----

.. ===========================================================================================
   
.. _neo_n_radial:

N_RADIAL
--------

**Definition**

The number of radial gridpoints, :math:`n_r` in the computational domain.

**Comments**

- DEFAULT: 1
- The radial grid is defined on the range :ref:`neo_rmin_over_a`
  :math:`\le r/a \le` :ref:`neo_rmin_over_a_2`.  For a local simulation (:ref:`neo_profile_model` = 1), the normalizing length scale :math:`a` is arbitrary.  For a global simulation (:ref:`neo_profile_model` = 2), :math:`a` is the plasma minor radius at the center of the radial simulation domain.
- N_RADIAL > 1 requires a global profile model (:ref:`neo_profile_model` = 2).  Otherwise, N_RADIAL = 1 and the profile model is local (:ref:`neo_profile_model` = 1).
- For solution of only the first-order DKE, which is a radially-local problem, the radial grid is equally-spaced.

-----

.. ===========================================================================================

.. _neo_n_species:

N_SPECIES
---------

**Definition**

The number of kinetic species.

**Comments**

- DEFAULT: 1
- The maximum allowed N\_SPECIES is 11.
- Only one species with charge Z < 0 is allowed.  If no species with Z < 0 is specified, then an adiabatic electron model is assumed.
- For local simulations (:ref:`neo_profile_model` = 1), the order of the species and the normalizing density and temperature are arbitrary.

  - For each species 1-N_SPECIES, :ref:`neo_z_*`, :ref:`neo_mass_*`, :ref:`neo_dens_*`, :ref:`neo_temp_*`, :ref:`neo_dlnndr_*`, and :ref:`neo_dlntdr_*` are set in input.neo.  The collision frequency with respect to species 1 (:ref:`neo_nu_1`) is also set in input.neo.
  - Quasi-neutrality is not checked.

    
- For experimental profiles (:ref:`neo_profile_model` = 2), the normalizing mass is the mass of deuterium (:math:`m_D` = 3.3452e-27 kg), so the input masses should be given relative to this mass. The output quantities are normalized with respect to the density and temperature of the first species in input.neo and :math:`m_D`, with :math:`{\rm v}_{\rm norm} = \sqrt{T_{0,{\rm species 1}}/m_{D}}`.
  
  - The electron species, if kinetic, must be species number N_SPECIES in input.neo.
    
  - Of the species-dependent parameters in input.neo, only :ref:`neo_z_*`  and :ref:`neo_mass_*` are used, while :ref:`neo_dens_*`, :ref:`neo_temp_*`, :ref:`neo_dlnndr_*`, :ref:`neo_dlntdr_*`, and :ref:`neo_nu_1` are determined from the parameters read from input.profiles.

  - Quasi-neutrality is checked.

  - See :ref:`neo_profile_model` for more details.

-----

.. ===========================================================================================

.. _neo_n_theta:

N_THETA
--------

**Definition**

The number of theta gridpoints, :math:`n_\theta` in the computational domain.

**Comments**

- DEFAULT: 17
- N_THETA must be an odd number
- The theta grid range is equally-spaced and defined on the range :math:`-\pi \le \theta < \pi`.
- The theta derivatives in the kinetic equation are treated with a 4th-order centered finite difference scheme.  Periodic boundary conditions are assumed.

-----

.. ===========================================================================================

.. _neo_n_xi:

N_XI
--------

**Definition**

The number of xi polynomials -  1 in the computational domain (:math:`n_{\xi,\rm total}` = N_XI+1).

**Comments**

- DEFAULT: 17
- The velocity-space coordinate :math:`\xi` is the cosine of the pitch angle: :math:`\xi ={\rm v}_\|/{\rm v}`.
- NEO uses an expansion of Legendre polynomials in :math:`\xi`.
- The collocation integrals are done exactly analytically.  

----- 

.. ===========================================================================================

.. _neo_ne_ade:

NE_ADE
------

**Definition**

The normalized equilibrium-scale density of the electrons for the case of adiabatic electrons:

.. math::
   {\rm NE\_ADE} = \frac{n_{0,e}}{n_{\rm norm}}

**Commments**

- DEFAULT: 1.0
- This paramter is used only if no species with Z < 0 is specified.
- When experimental profiles are used (:ref:`neo_profile_model` = 2), the density as a function of radius is read from input.profiles and the normalizing density is the local density of Species 1, :math:`n_{\rm norm}(r)=n_{{\rm species 1}}`.
   
-----

.. ===========================================================================================
   
.. _neo_nu_1:

NU_1
----

**Definition**

The normalized collision frequency of the first kinetic species:

.. math::
   {\rm NU}\_1 = \frac{\tau_{11}^{-1}}{{\rm v}_{\rm norm}/a}

where

.. math::
   \tau_{ss}^{-1} = \frac{\sqrt{2} \pi e^4 z_s^4 n_{0s}}{m_s^{1/2} T_{0s}^{3/2}} {\rm ln} \Lambda

**Comments**

- DEFAULT: 0.1
- Only the collision frequency for Species 1 is specified. The collision frequencies for the other species are computed internally in the code using NU_1, :ref:`neo_z_*`, :ref:`neo_mass_*`, :ref:`neo_dens_*`, and :ref:`neo_temp_*`.
- When rotation effects are included (:ref:`neo_rotation_model` = 2), this parameter is the value at the outboard midplane (:math:`\theta = 0`).
- When experimental profiles are used (:ref:`neo_profile_model` = 2), this is computed internally from the profile parameters read from input.profiles. Also, the normalizing length scale is the plasma minor radius and the normalizing velocity is :math:`{\rm v}_{\rm norm} = \sqrt{T_{\rm species1}/m_{D}}`.
   
-----

.. ===========================================================================================

.. _neo_omega_rot:

OMEGA_ROT
---------

**Definition**

The normalized toroidal angular frequency:

.. math::
   {\rm OMEGA\_ROT} = \frac{\omega_0}{{\rm v}_{\rm norm}/a}

where :math:`\omega_0=-c\frac{d \Phi_{-1}}{d\psi}`   
   
     
**Comments**

- DEFAULT: 0.0
- Used only if sonic rotation effects are included (:ref:`neo_rotation_model` = 2).
- When experimental profiles are used (:ref:`neo_profile_model` = 2), the toroidal angular frequency as a function of radius is read from input.profiles.  The associated :math:`E_r` is assumed to be the lowest-order field, :math:`E_r^{(-1)}`, and :math:`E_r^{(0)}` is assumed to be 0.

-----

.. ===========================================================================================

.. _neo_omega_rot_deriv:

OMEGA_ROT_DERIV
---------------

**Definition**

The normalized toroidal rotation shear:

.. math::
   {\rm OMEGA\_ROT\_DERIV} = \frac{d \omega_0}{d r}\frac{a^2}{{\rm v}_{\rm norm}}

where :math:`\omega_0=-c\frac{d \Phi_{-1}}{d\psi}` is the torodial angular frequency.
   
     
**Comments**

- DEFAULT: 0.0
- Used only if sonic rotation effects are included (:ref:`neo_rotation_model` = 2).
- When experimental profiles are used (:ref:`neo_profile_model` = 2), the toroidal angular frequency as a function of radius is read from input.profiles and its gradient is computed internally.  The associated :math:`E_r` is assumed to be the lowest-order field, :math:`E_r^{(-1)}`, and :math:`E_r^{(0)}` is assumed to be 0.

-----

.. ===========================================================================================

.. _neo_profile_dlnndr_*_scale:

PROFILE_DLNNDR_*_SCALE
----------------------

**Definition**

Scaling factor for the normalized equilibrium-scale density gradient scale length in profile mode:

.. math::
   a \frac{\partial {\rm ln} n_{0,*}}{\partial r} \rightarrow {\rm PROFILE\_DLNNDR\_*\_SCALE} \times \left(a \frac{\partial {\rm ln} n_{0,*}}{\partial r} \right)

**Commments**

- DEFAULT: 1.0
- The scaling factor of each species 1-11 is set as: PROFILE_DLNNDR_1_SCALE, PROFILE_DLNNDR_2_SCALE, PROFILE_DLNNDR_3_SCALE,...
- This parameter is only used when experimental profiles are used (:ref:`neo_profile_model` = 2). The density as a function of radius is read from input.profiles and the density gradient is computed internally.  The normalizing length is the plasma minor radius.  This gradient scale length is then re-scaled.
- The subroutine interface parameter is specified as a vector: neo_profile_dlnndr_scale_in(1:11)
  
-----

.. =======================================================================

.. _neo_profile_dlntdr_*_scale:

PROFILE_DLNTDR_*_SCALE
----------------------

**Definition**

Scaling factor for the normalized equilibrium-scale temperature gradient scale length in profile mode:

.. math::
   a \frac{d {\rm ln} T_{*}}{d r} \rightarrow {\rm PROFILE\_DLNTDR\_*\_SCALE} \times \left( a \frac{d {\rm ln} T_{*}}{d r} \right)

**Commments**

- DEFAULT: 1.0
- The scaling factor of each species 1-11 is set as: PROFILE_DLNTDR_1_SCALE, PROFILE_DLNTDR_2_SCALE, PROFILE_DLNTDR_3_SCALE,...
- This parameter is only used when experimental profiles are used (:ref:`neo_profile_model` = 2). The temperature as a function of radius is read from input.profiles and the temperature gradient is computed internally.  The normalizing length is the plasma minor radius.  This gradient scale length is then re-scaled.
- The subroutine interface parameter is specified as a vector: neo_profile_dlntdr_scale_in(1:11)
  
-----

.. ===========================================================================================

.. _neo_profile_equilibrium_model:

PROFILE_EQUILIBRIUM_MODEL
-------------------------

**Definition**

Parameter which selects the geometric equilibrium model for experimental profiles.

**Choices**

- PROFILE_EQUILIBRIUM_MODEL = 1: Use Miller shaped geometry with the profiles of the geometric parameters as given in input.profiles.
- PROFILE_EQUILIBRIUM_MODEL = 2: Use the general Grad-Shafranov geometry with the fourier coefficients specified in input.profiles.geo.

**Comments**

- DEFAULT: 1
- Used only for experimental profiles (:ref:`neo_profile_model` = 2)
- See the :doc:`geometry notes <../geometry>` for more details about the geometric equilibrium models.

-----

.. ===========================================================================================

.. _neo_profile_erad0_model:

PROFILE_ERAD0_MODEL
-------------------

**Definition**

Parameter which selects whether to include :math:`E_r^{(0)}` for experimental profiles.

**Choices**

- PROFILE_ERAD0_MODEL = 0: :math:`E_r^{(0)}` is set to zero regardless of the value in input.profiles.
- PROFILE_ERAD0_MODEL = 1: :math:`E_r^{(0)}` as specified in input.profiles is used.

**Comments**

- DEFAULT: 1
- Used only for experimental profiles (:ref:`neo_profile_model` = 2).
- If sonic rotation effects are included (:ref:`neo_rotation_model` = 2) with experimental profiles, then this parameter is ignored and :math:`E_r^{(0)}` is assumed to be zero. This means that the :math:`E_r^{(0)}` in input.profiles is assumed to be the lowest-order field in sonic rotation theory, i.e. :math:`E_r^{(-1)}`,and is used to compute the lowest-order sonic toroidal rotation parameters, :ref:`neo_omega_rot` and :ref:`neo_omega_rot_deriv`.

-----

.. ===========================================================================================

.. _neo_profile_model:

PROFILE_MODEL
-------------

**Definition**

Parameter which selects how the radial profile is defined.

**Choices**

- PROFILE_MODEL = 1: local (one radius)
- PROFILE_MODEL = 2: global, using experimental profiles

**Comments**

- DEFAULT: 1
- For PROFILE_MODEL = 1, :ref:`neo_n_radial` must be 1.
  
  - The densities are set by :ref:`neo_dens_*` and quasi-neutrality is not checked.
  - The temperatures are set by :ref:`neo_temp_*`.
    
- For PROFILE_MODEL = 2, experimental profiles are defined in input.profiles.  The number of radial gridpoints is specified by :ref:`neo_n_radial`.
  
  - Additional models used for this case are specified by :ref:`neo_profile_equilibrium_model` and :ref:`neo_profile_erad0_model`.
  - Of the species-dependent parameters in input.neo, only :ref:`neo_z_*`  and :ref:`neo_mass_*` are used for this case. The normalizing mass is the mass of deuterium (:math:`m_D` = 3.3452e-27 kg), so the input masses should be given relative to this mass. The output quantities are normalized with respect to the density and temperature of the first species in input.neo and :math:`m_D`, with :math:`{\rm v}_{\rm norm} = \sqrt{T_{0,{\rm species 1}}/m_{D}}`.
  - The electron species, if kinetic, must be species number N_SPECIES in input.neo. 
  - If the density profiles in input.profiles are not quasi-neutral, then the density profile of the first ion species is re-set.

-----

.. ===========================================================================================

.. _neo_q:

Q
-

**Definition**

Magnitude of the safety factor, :math:`|q|`, of the flux surface:

.. math::
   q(\psi) \doteq \frac{1}{2 \pi} \int_{0}^{2\pi} d\theta \; \frac{\mathbf{B} \cdot \nabla \varphi}{\mathbf{B} \cdot \nabla \theta}
     
**Comments**

- DEFAULT: 2.0
- When experimental profiles are used (:ref:`neo_profile_model` = 2), the safety factor as a function of radius is read from input.profiles.
- The orientation of the safety factor is determined by :ref:`neo_ipccw` and :ref:`neo_btccw`.

-----

.. ===========================================================================================

.. _neo_rho_star:

RHO_STAR
--------

**Definition**

The ratio of the Larmor radius of the normalizing species to the normalizing length scale:

.. math::
   \rho_* = \frac{\rho_{\rm norm}}{a} \; , {\rm where} \; \rho_{\rm norm} = \frac{c \sqrt{m_{\rm norm} T_{\rm norm}}}{e |B_{\rm unit}|}
   
     
**Comments**

- DEFAULT: 0.001
- This parameter must be a positive number. The sign of :math:`B_{\rm unit}` is determined by :ref:`neo_ipccw` and :ref:`neo_btccw`.
- When experimental profiles are used (:ref:`neo_profile_model` = 2), :math:`\rho_*` is computed internally from the profile parameters in input.profiles and the normalizing length scale is the plasma minor radius.

-----

.. ===========================================================================================

.. _neo_rmaj_over_a:

RMAJ_OVER_A
-----------

**Definition**

The ratio of the flux-surface-center major radius, :math:`R_0`, to the normalizing length scale:math:`a`.

**Comments**

- DEFAULT: 3.0
- When experimental profiles are used (:ref:`neo_profile_model` = 2), the flux-surface-center major radius as a function of radius, :math:`R_0(r)` is read from input.profiles and the normalizing length scale is the plasma minor radius.

-----   

.. ===========================================================================================

.. _neo_rmin_over_a:

RMIN_OVER_A
-----------

**Definition**

The ratio of the midplane minor radius :math:`r` to the normalizing length scale:math:`a`.

**Comments**

- DEFAULT: 0.5
- For :ref:`neo_n_radial` > 1, this parameter is the lower bound of the radial grid.
  
-----

.. ===========================================================================================

.. _neo_rmin_over_a_2:

RMIN_OVER_A_2
-------------

**Definition**

The ratio of the midplane minor radius :math:`r` to the normalizing length scale:math:`a`.

**Comments**

- DEFAULT: 0.6
- For :ref:`neo_n_radial` > 1, this parameter is the upper bound of the radial grid.
- For :ref:`neo_n_radial` = 1, this parameter is not used.
  
-----

.. ===========================================================================================

.. _neo_rotation_model:

ROTATION_MODEL
--------------

**Definition**

Parameter which selects whether to solve the DKE in the diamagnetic ordering limit or in the sonic toroidal rotation ordering limit.
     
**Choices**
  
- ROTATION_MODEL = 1: sonic rotation effects not included (diamagnetic ordering assumed)
- ROTATION_MODEL = 2: sonic rotation effects included (solves the Hinton-Wong generalized DKE which allows for flow speeds on the order of the thermal speed).
  
  - The toroidal rotation frequency :ref:`neo_omega_rot` and the toroidal rotation shear :ref:`neo_omega_rot_deriv` must be specified.

**COMMENTS**

- DEFAULT: 1

-----

.. ===========================================================================================

.. _neo_s_delta:

S_DELTA
-------

**Definition**

Measure of the rate of change of the average triangularity of the flux surface:

.. math::
       s_\delta = r \frac{\partial \delta}{\partial r}

**Comments**

- DEFAULT: 0.0
- This is only active with :ref:`neo_equilibrium_model` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:ref:`neo_profile_model` = 2), the triangularity as a function of radius is read from input.profiles and the triangularity gradient is computed internally.

-----

.. ===========================================================================================

.. _neo_s_kappa:

S_KAPPA
-------

**Definition**

Measure of the rate of change of the elongation of the flux surface:

.. math::
       s_\kappa = \frac{r}{\kappa} \frac{\partial \kappa}{\partial r}

**Comments**

- DEFAULT: 0.0
- This is only active with :ref:`neo_equilibrium_model` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:ref:`neo_profile_model` = 2), the elongation as a function of radius is read from input.profiles and the elongation gradient is computed internally.
  
-----

.. ===========================================================================================

.. _neo_s_zeta:

S_ZETA
------

**Definition**

Measure of the rate of change of the squareness of the flux surface:

.. math::
       s_\zeta = r \frac{\partial \zeta}{\partial r}

**Comments**

- DEFAULT: 0.0
- This is only active with :ref:`neo_equilibrium_model` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:ref:`neo_profile_model` = 2), the squareness as a function of radius is read from input.profiles and the squareness gradient is computed internally.

-----

.. ===========================================================================================

.. _neo_s_zmag:

S_ZMAG
------

**Definition**

Measure of the rate of change of the elevation of the flux surface:

.. math::
       S_{Z0} = \frac{\partial Z_0}{\partial r}
     
**Comments**

- DEFAULT: 0.0
- This is only active with :ref:`neo_equilibrium_model` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:ref:`neo_profile_model` = 2), the flux-surface elevation as a function of radius, :math:`Z_0(r)`,  is read from input.profiles and its derivative is computed internally.

-----


.. ===========================================================================================

.. _neo_shear:

SHEAR
-----

**Definition**

Magnetic shear, :math:`s`, of the flux surface:

.. math::
   s = \frac{r}{q} \frac{\partial q}{\partial r}
     
**Comments**

- DEFAULT: 1.0
- NOTE: This parameter is *not* used in the standard DKE equation!  It is only used in the case of an anisotropic temperature species (e.g. :ref:`neo_aniso_model_*` = 2) to compute :math:`d\Phi_*/dr`.
- This is only active with :ref:`neo_equilibrium_model` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:ref:`neo_profile_model` = 2), the safety factor as a function of radius is read from input.profiles and the safety factor gradient is computed internally.

-----

.. ===========================================================================================

.. _neo_shift:

SHIFT
-----

**Definition**

Shafranov shift, :math:`\Delta`, of the flux surface:

.. math::
       \Delta = \frac{\partial R_0}{\partial r}
     
**Comments**

- DEFAULT: 0.0
- This is only active with :ref:`neo_equilibrium_model` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:ref:`neo_profile_model` = 2), the flux-surface-center major radius as a function of radius, :math:`R_0(r)`,  is read from input.profiles and its derivative is computed internally.

-----

.. _neo_shape_cos0:

SHAPE_COS0
----------

**Definition**

0th antisymmetric moment.

- DEFAULT = 0.0

----

.. _neo_shape_s_cos0:

SHAPE_S_COS0
------------

**Definition**

0th antisymmetric moment shear.

- DEFAULT = 0.0

----

.. _neo_shape_cos1:

SHAPE_COS1
----------

**Definition**

1st antisymmetric moment.

- DEFAULT = 0.0

----

.. _neo_shape_s_cos1:

SHAPE_S_COS1
------------

**Definition**

1th antisymmetric moment shear.

- DEFAULT = 0.0

----

.. _neo_shape_cos2:

SHAPE_COS2
----------

**Definition**

2nd antisymmetric moment.

- DEFAULT = 0.0

----

.. _neo_shape_s_cos2:

SHAPE_S_COS2
------------

**Definition**

2th antisymmetric moment shear.

- DEFAULT = 0.0

----

.. _neo_shape_cos3:

SHAPE_COS3
----------

**Definition**

3rd antisymmetric moment.

- DEFAULT = 0.0

----

.. _neo_shape_s_cos3:

SHAPE_S_COS3
------------

**Definition**

3rd antisymmetric moment.

- DEFAULT = 0.0

----

.. _neo_shape_sin3:

SHAPE_SIN3
----------

**Definition**

3rd symmetric moment.

- DEFAULT = 0.0

----

.. _neo_shape_s_sin3:

SHAPE_S_SIN3
------------

**Definition**

3rd symmetric moment shear.

- DEFAULT = 0.0

----

.. ===========================================================================================

.. _neo_silent_flag:

SILENT_FLAG
-----------

**Definition**

Parameter which selects how much data to print out.
     
**Choices**
  
- SILENT_FLAG = 0: output files are written.
- SILENT_FLAG > 0: no output files are written.

**Comments**

- DEFAULT: 0

-----

.. ===========================================================================================

.. _neo_sim_model:

SIM_MODEL
---------

**Definition**

Parameter which selects whether to determine the neoclassical transport from analytic theory or from numerical solution of the DKE.
     
**Choices**
  
- SIM_MODEL = 0: analytic theory only.
- SIM_MODEL = 1: numerical solution and analytic theory and NCLASS.
- SIM_MODEL = 2: numerical solution and analytic theory only.
- SIM_MODEL = 3: analytic theory and NCLASS only.  
- SIM_MODEL = 4: neural network of NEO DKE solution.

**Comments**

- DEFAULT: 2

-----

.. ===========================================================================================

.. _neo_spitzer_model:

SPITZER_MODEL
-------------

**Definition**

Parameter which selects whether to solve the standard neoclassical transport problem or the Spitzer problem.
     
**Choices**
  
- SPITZER_MODEL = 0: solve the standard neoclassical transport problem.
- SPITZER_MODEL = 1: solve the Spitzer problem.
  
  - Must be run with an electron species and an ion species.
  - The Spitzer coefficients (L11, L12, L21, L22) are output in the file out.neo.spitzer.

**Comments**

-- DEFAULT: 0

-----

.. ===========================================================================================

.. _neo_te_ade:

TE_ADE
------

**Definition**

The normalized equilibrium-scale temperature of the electrons for the case of adiabatic electrons:

.. math::
   {\rm TE\_ADE} = \frac{T_{0,e}}{T_{\rm norm}}

**Commments**

- DEFAULT: 1.0
- This paramter is used only if no species with Z < 0 is specified.
- When experimental profiles are used (:ref:`neo_profile_model` = 2), the temperature as a function of radius is read from input.profiles and the normalizing temperature is the local temperature of Species 1, :math:`T_{\rm norm}(r)=T_{{\rm species 1}}`.
   
-----

.. ===========================================================================================

.. _neo_temp_*:

TEMP_*
------

**Definition**

The normalized equilibrium-scale temperature:

.. math::
   {\rm TEMP}\_* = \frac{T_{0,*}}{T_{\rm norm}}

**Commments**

- DEFAULT: 1.0
- The temperature of each species 1-11 is set as: TEMP_1, TEMP_2, TEMP_3,...
- When experimental profiles are used (:ref:`neo_profile_model` = 2), the temperature as a function of radius is read from input.profiles and the normalizing temperature is the local temperature of Species 1, :math:`T_{\rm norm}(r)=T_{{\rm species 1}}`.
- The subroutine interface parameter is specified as a vector: neo_temp_in(1:11)
  
-----

.. ===========================================================================================

.. _neo_temp_para_*:

TEMP_PARA_*
-----------

**Definition**

The normalized equilibrium-scale parallel temperature:

.. math::
   {\rm TEMP\_PARA}\_* = \frac{T_{\|0,*}}{T_{\rm norm}}

**Commments**

- DEFAULT: 1.0
- The parallel temperature of each species 1-11 is set as: TEMP_PARA_1, TEMP_PARA_2, TEMP_PARA_3,...
- This parameter is used only when the species' anisotropic flag is set (:ref:`neo_aniso_model_*` = 2).
- The subroutine interface parameter is specified as a vector: neo_temp_para_in(1:11)
  
-----

.. ===========================================================================================

.. _neo_temp_perp_*:

TEMP_PERP_*
-----------

**Definition**

The normalized equilibrium-scale perpendicular temperature:

.. math::
   {\rm TEMP\_PERP}\_* = \frac{T_{\perp,*}}{T_{\rm norm}}

**Commments**

- DEFAULT: 1.0
- The perpendicular temperature of each species 1-11 is set as: TEMP_PERP_1, TEMP_PERP_2, TEMP_PERP_3,...
- This parameter is used only when the species' anisotropic flag is set (:ref:`neo_aniso_model_*` = 2).
- The subroutine interface parameter is specified as a vector: neo_temp_perp_in(1:11)
  
-----

.. ===========================================================================================

.. _neo_threed_model:

THREED_MODEL
------------

**Definition**

Parameter which selects whether to solve the DKE in toroidally axisymmetric limit (2D) or with nonaxisymmetric effects (3D).
     
**Choices**
  
- THREED_MODEL = 0: toroidally axisymmetric limit (2D).
- THREED_MODEL = 1: toroidally nonaxisymmetric effects are included (3D).

  - This option is presently not available for experimental profiles (:ref:`neo_profile_model` = 2).
    
  - The local 3D equilibrium solver LE3 must be run first.  All of the equilibrium parameters, including the spatial dimensions for :math:`(\theta,\varphi)`, are read from the LE3 output file.

  - Of the plasma equilibrium/geometry NEO input paramters, only :ref:`neo_rho_star`, :ref:`neo_dphi0dr`, and :ref:`neo_rmin_over_a` are used.

  - Of the numerical resolution NEO input parameters, only :ref:`neo_n_xi` and :ref:`neo_n_energy` are used.

**COMMENTS**

- DEFAULT: 0

-----

.. ===========================================================================================

.. _neo_threed_exb_model:

THREED_EXB_MODEL
----------------

**Definition**

Parameter which selects whether to include the higher-order :math:`{\bf E} \times {\bf B}` drift velocity in the DKE with nonaxisymmetric effects (3D).
     
**Choices**
  
- THREED_EXB_MODEL = 0: higher-order :math:`{\bf E} \times {\bf B}` drift velocity not included.
- THREED_EXB_MODEL = 1: higher-order :math:`{\bf E} \times {\bf B}` drift velocity included.

  - Used only if toroidal nonaxisymmetric effects are included (:ref:`neo_threed_model` = 1).

  - The value of the equilibrium potential in the higher-order  :math:`{\bf E} \times {\bf B}` drift velocity is specified by :ref:`neo_threed_exb_dphi0dr`.   Note that this does not affect the equilibrium potential in the neoclassical source term, which is specified by :ref:`neo_dphi0dr`.

**COMMENTS**    

- DEFAULT: 0
  
-----

.. ===========================================================================================

.. _neo_threed_exb_dphi0dr:

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

- DEFAULT: 0.0
- Used only if toroidal nonaxisymmetric effects (3D) are included (:ref:`neo_threed_model` = 1).
- This does not affect the equilibrium potential in the neoclassical source term, which is specified by :ref:`neo_dphi0dr`.

-----

.. ===========================================================================================

.. _neo_z_*:

Z_*
---

**Definition**

The species' charge.

**Commments**

- DEFAULT: 1.0
- The charge of each species 1-11 is set as: Z_1, Z_2, Z_3,...  
- The subroutine interface parameter is specified as a vector: neo_z_in(1:11)
  
-----

.. ===========================================================================================

.. _neo_zeta:

ZETA
----

**Definition**

Squareness, :math:`\zeta`, of the flux surface.
     
**Comments**

- DEFAULT: 0.0
- This is only active with :ref:`neo_equilibrium_model` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:ref:`neo_profile_model` = 2), the squareness as a function of radius is read from input.profiles.

-----

.. ===========================================================================================

.. _neo_zmag_over_a:

ZMAG_OVER_A
-----------

**Definition**

The ratio of the elevation of the flux surface, :math:`Z_0`, to the normalizing length scale :math:`a`.

**Comments**

- DEFAULT: 0.0
- When experimental profiles are used (:ref:`neo_profile_model` = 2), the flux-surface elevation as a function of radius, :math:`Z_0(r)` is read from input.profiles and the normalizing length scale is the plasma minor radius.

-----


Return to :doc:`table of inputs <neo_table>`   
