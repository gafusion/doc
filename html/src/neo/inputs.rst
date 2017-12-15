**********
NEO Inputs
**********

When run in the traditional (stand-alone) way, all NEO input parameters reside in the file **input.neo**

Some features of **input.neo** to notes:

- Parameters not specified in input.neo are filled in by default. Default values are shown in the parameter definitions.
- The ordering of parameters is arbitrary.
- Lines beginning with # are comments.
- No spaces on the left or right of the equal symbol (:math:`=`) are allowed.
- Parameters with a _MODEL specifier should normally take non-negative integer values.

Subroutine interface
####################

NEO can also be run using a subroutine interface. In this case, inputs and outputs are contained in a monolithic module file named neo_interface. The interface parameter name is formed by prepending neo\_ and appending \_in to the name of the corresponding input.neo parameter.

.. code:: fortran
	  
	  use neo_interface
	  call neo_init
	  ! Set neo_interface inputs (e.g. neo_n_species_in = 2 ...)
	  call neo_run
	  ! Get neo_interface outputs (e.g. jbs = neo_jpar_dke_out ...)
  

Parameters for input.neo
########################

.. csv-table:: **Numerical resolution**
   :header: "input.neo parameter", "Interface parameter", "Short description", "Default"
   :widths: 13, 15, 25, 5

   ":doc:`N_RADIAL <n_radial>`", neo_n_radial_in, Number of radial gridpoints,1
   ":doc:`N_THETA <n_theta>`", neo_n_theta_in, Number of poloidal gridpoints, 17
   ":doc:`N_XI <n_xi>`", neo_xi_in, "Number of :math:`\xi` polynomials - 1", 17
   ":doc:`N_ENERGY <n_energy>`", neo_n_energy_in, Number of :math:`{\rm v}` polynomials - 1, 6

.. csv-table:: **Plasma equilibrium/geometry**
   :header: "input.neo parameter", "Interface parameter", "Short description", "Default"
   :widths: 13, 15, 25, 5

   ":doc:`EQUILIBRIUM_MODEL <equilibrium_model>`", neo_equilibrium_in, Geometry selector,0
   ":doc:`RMIN_OVER_A <rmin_over_a>`", neo_rmin_over_a_in, Normalized minor radius (min), 0.5
   ":doc:`RMIN_OVER_A_2 <rmin_over_a_2>`", neo_rmin_over_a_2_in, Normalized minor radius (max), 0.6
   ":doc:`RMAJ_OVER_A <rmin_over_a_2>`", neo_rmaj_over_a_in, Normalized major radius, 3.0
   ":doc:`KAPPA <kappa>`", neo_kappa_in, Elongation, 1.0
   ":doc:`S_KAPPA <s_kappa>`", neo_s_kappa_in, Elongation shear, 0.0
   ":doc:`DELTA <delta>`", neo_delta_in, Triangularity, 0.0
   ":doc:`S_DELTA <s_delta>`", neo_s_delta_in, Triangularity shear, 0.0
   ":doc:`ZETA <zeta>`", neo_zeta_in, Squareness, 0.0
   ":doc:`S_ZETA <s_zeta>`", neo_s_zeta_in, Squareness shear, 0.0
   ":doc:`SHIFT <shift>`", neo_shift_in, Shafranov shift, 0.0
   ":doc:`ZMAG_OVER_A <zmag_over_a>`", neo_zmag_over_a_in, Normalized elevation, 0.0
   ":doc:`S_ZMAG <s_zmag>`", neo_s_zmag_in, Gradient of elevation, 0.0
   ":doc:`Q <q>`", neo_q_in, Safety factor, 2.0
   ":doc:`Shear <shear>`", neo_shear_in, Magnetic shear, 1.0
   ":doc:`BETA_STAR <beta_star>`", neo_beta_star_in, Effective pressure gradient, 0.0
   ":doc:`IPCCW <ipccw>`", neo_ipccw_in, Determines the sign of the plasma current, -1
   ":doc:`BTCCW <btccw>`", neo_btccw_in, Determines the sign of the toroidal field, -1
   ":doc:`RHO_STAR <rho_star>`", neo_rho_star_in, Normalized Larmor radius, 0.001
   ":doc:`DPHI0DR <dphi0dr>`", neo_dphi0dr_in, Normalized radial electric field, 0.0
   ":doc:`EPAR0 <epar0>`", neo_epar0_in, Normalized inductive electric field, 0.0
   ":doc:`EPAR0_SPITZER <epar0_spitzer>`", neo_epar0_spitzer_in, Normalized inductive electric field for spitzer problem, 1.0

.. csv-table:: **General models**
   :header: "input.neo parameter", "Interface parameter", "Short description", "Default"
   :widths: 13, 15, 25, 5

   ":doc:`SILENT_FLAG <silent_flag>`", neo_silent_flag_in, Output mode selector, 0
   ":doc:`SIM_MODEL <sim_model>`", neo_sim_model_in, Numerical/analytic simulation model selector, 2
   ":doc:`SPITZER_MODEL <spitzer_model>`", neo_spitzer_model_in, DKE/Spitzer problem selector, 0
   ":doc:`COLLISION_MODEL <collision_model>`", neo_collision_model_in, Collision model selector, 4

.. csv-table:: **Profile models**
   :header: "input.neo parameter", "Interface parameter", "Short description", "Default"
   :widths: 13, 15, 25, 5

   ":doc:`PROFILE_MODEL <profile_model>`", neo_profile_model_in, Local/experimental profile selector, 1
   ":doc:`PROFILE_EQUILIBRIUM_MODEL <profile_equilibrium_model>`", neo_profile_equilibrium_model_in, Geometry selector for experimental profiles, 1
   ":doc:`PROFILE_ERAD0_MODEL <profile_erad0_model>`", neo_profile_erad0_model_in, Determines whether to include :math:`E_r^{(0)}` in experimental profiles, 1

.. csv-table:: **Rotation physics**
   :header: "input.neo parameter", "Interface parameter", "Short description", "Default"
   :widths: 13, 15, 25, 5

   ":doc:`ROTATION_MODEL <rotation_model>`", neo_rotation_model_in, Rotation model selector, 1
   ":doc:`OMEGA_ROT <omega_rot>`", neo_omega_rot_in, Normalized toroidal angular frequency, 0.0
   ":doc:`OMEGA_ROT_DERIV <omega_rot_deriv>`", neo_omega_rot_in, Normalized toroidal rotation shear, 0.0

.. csv-table:: **Nonaxisymmetric effects**
   :header: "input.neo parameter", "Interface parameter", "Short description", "Default"
   :widths: 13, 15, 25, 5

   ":doc:`THREED_MODEL <threed_model>`", neo_threed_model_in, 3D model selector, 0
   ":doc:`THREED_EXB_MODEL <threed_exb_model>`", neo_threed_exb_model_in, 3D ExB drift velocity model selector (higher-order), 0
   ":doc:`THREED_EXB_DPHI0DR <threed_exb_dphi0dr>`", neo_threed_exb_dphi0dr, Normalized radial electric field in the 3D ExB drift velocity, 0
   
.. csv-table:: **Species-dependent parameters**
   :header: "input.neo parameter", "Interface parameter", "Short description", "Default"
   :widths: 13, 15, 25, 5

   ":doc:`N_SPECIES <n_species>`", neo_n_species_in, Number of kinetic species, 1
   ":doc:`Z_{1-11} <z_1>`", neo_z_in(), Charge of each species 1-11, 1
   ":doc:`MASS_{1-11} <mass_1>`", neo_mass_in(), Normalized mass of each species , 1.0
   ":doc:`DENS_{1-11} <dens_1>`", neo_dens_in(), Normalized density of each species, "\{1.0,0,0,0,0,0,0,0,0,0,0\}"
   ":doc:`TEMP_{1-11} <temp_1>`", neo_temp_in(), Normalized temperature of each species, 1.0
   ":doc:`DLNNDR_{1-11} <dlnndr_1>`", neo_dlnndr_in(), Normalized logarithmic density gradient of each species, 1.0
   ":doc:`DLNTDR_{1-11} <dlntdr_1>`", neo_dlntdr_in(), Normalized logarithmic temperature of each species, 1.0
   ":doc:`PROFILE_DLNNDR_{1-11}_SCALE <profile_dlnndr_1_scale>`", neo_profile_dlnndr_scale_in(), Scaling factor for profile normalized logarithmic density gradient of each species, 1.0
   ":doc:`PROFILE_DLNTDR_{1-11}_SCALE <profile_dlntdr_1_scale>`", neo_profile_dlntdr_scale_in(), Scaling factor for profile normalized logarithmic temperature gradient of each species, 1.0
   ":doc:`ANISO_MODEL_{1-11} <aniso_model_1>`", neo_aniso_model_in(), Anisotropic temperaure model for each species, 1
   ":doc:`TEMP_PARA_{1-11} <temp_para_1>`", neo_temp_para_in(), Normalized parallel temperature (aniso) for each species, 1
   ":doc:`DLNTDR_PARA_{1-11} <dlntdr_para_1>`", neo_dlntdr_para_in(), Normalized logarithmic parallel temperature (aniso) of each species, 1
   ":doc:`TEMP_PERP_{1-11} <temp_perp_1>`", neo_temp_perp_in(), Normalized perpendicular temperature (aniso) for each species, 1
   ":doc:`DLNTDR_PERP_{1-11} <dlntdr_perp_1>`", neo_dlntdr_perp_in(), Normalized logarithmic perpendicular temperature (aniso) of each species, 1
   ":doc:`NU_1 <nu_1>`", neo_nu_1_in, Normalized collision frequency of Species 1, 0.1
   ":doc:`NE_ADE <te_ade>`", neo_ne_ade_in, Normalized density of adiabatic electrons, 1.0
   ":doc:`TE_ADE <te_ade>`", neo_te_ade_in, Normalized temperature of adiabatic electrons, 1.0
   ":doc:`DLNNDRE_ADE <te_ade>`", neo_dlnndre_ade_in, Normalized logarithmic density gradient of adiabatic electrons, 1.0
   ":doc:`DLNTDRE_ADE <te_ade>`", neo_te_dlntdre_in, Normalized logarithmic temperature of adiabatic electrons, 1.0
   
Extra subroutine interface parameters
#####################################

These parameters are available only via the subroutine interface, i.e. not in **input.neo**.

.. csv-table::
   :header: "input.neo parameter", "Interface parameter", "Short description", "Default"
   :widths: 13, 15, 25, 5

   ":doc:`GEO_NY <geo_ny>`", neo_geo_ny_in, Number of geometry Fourier coefficients, 0
   ":doc:`GEO_YIN <geo_yin>`", neo_geo_yin_in, Array of normalized geometry Fourier coefficients, 0.0
