Parameters for input.neo
~~~~~~~~~~~~~~~~~~~~~~~~~~

Some features of **input.neo** to note:

- Parameters not specified in input.neo are filled in by default. Default values are shown in the parameter definitions.
- The ordering of parameters is arbitrary.
- Lines beginning with # are comments.
- No spaces on the left or right of the equal symbol (:math:`=`) are allowed.
- Parameters with a _MODEL specifier should normally take non-negative integer values.

.. csv-table:: **Numerical resolution**
   :header: "input.neo parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":doc:`N_RADIAL <n_radial>`", Number of radial gridpoints,1
   ":doc:`N_THETA <n_theta>`", Number of poloidal gridpoints, 17
   ":doc:`N_XI <n_xi>`", "Number of :math:`\xi` polynomials - 1", 17
   ":doc:`N_ENERGY <n_energy>`", Number of :math:`{\rm v}` polynomials - 1, 6

.. csv-table:: **Plasma equilibrium/geometry**
   :header: "input.neo parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":doc:`EQUILIBRIUM_MODEL <equilibrium_model>`", Geometry selector,0
   ":doc:`RMIN_OVER_A <rmin_over_a>`", Normalized minor radius (min), 0.5
   ":doc:`RMIN_OVER_A_2 <rmin_over_a_2>`", Normalized minor radius (max), 0.6
   ":doc:`RMAJ_OVER_A <rmin_over_a_2>`", Normalized major radius, 3.0
   ":doc:`KAPPA <kappa>`", Elongation, 1.0
   ":doc:`S_KAPPA <s_kappa>`", Elongation shear, 0.0
   ":doc:`DELTA <delta>`", Triangularity, 0.0
   ":doc:`S_DELTA <s_delta>`", Triangularity shear, 0.0
   ":doc:`ZETA <zeta>`", Squareness, 0.0
   ":doc:`S_ZETA <s_zeta>`", Squareness shear, 0.0
   ":doc:`SHIFT <shift>`", Shafranov shift, 0.0
   ":doc:`ZMAG_OVER_A <zmag_over_a>`", Normalized elevation, 0.0
   ":doc:`S_ZMAG <s_zmag>`", Gradient of elevation, 0.0
   ":doc:`Q <q>`", Safety factor, 2.0
   ":doc:`Shear <shear>`", Magnetic shear, 1.0
   ":doc:`BETA_STAR <beta_star>`", Effective pressure gradient, 0.0
   ":doc:`IPCCW <ipccw>`", Determines the sign of the plasma current, -1
   ":doc:`BTCCW <btccw>`", Determines the sign of the toroidal field, -1
   ":doc:`RHO_STAR <rho_star>`", Normalized Larmor radius, 0.001
   ":doc:`DPHI0DR <dphi0dr>`", Normalized radial electric field, 0.0
   ":doc:`EPAR0 <epar0>`", Normalized inductive electric field, 0.0
   ":doc:`EPAR0_SPITZER <epar0_spitzer>`", Normalized inductive electric field for spitzer problem, 1.0

.. csv-table:: **General models**
   :header: "input.neo parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":doc:`SILENT_FLAG <silent_flag>`", Output mode selector, 0
   ":doc:`SIM_MODEL <sim_model>`", Numerical/analytic simulation model selector, 2
   ":doc:`SPITZER_MODEL <spitzer_model>`", DKE/Spitzer problem selector, 0
   ":doc:`COLLISION_MODEL <collision_model>`", Collision model selector, 4

.. csv-table:: **Profile models**
   :header: "input.neo parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":doc:`PROFILE_MODEL <profile_model>`", Local/experimental profile selector, 1
   ":doc:`PROFILE_EQUILIBRIUM_MODEL <profile_equilibrium_model>`", Geometry selector for experimental profiles, 1
   ":doc:`PROFILE_ERAD0_MODEL <profile_erad0_model>`", Determines whether to include :math:`E_r^{(0)}` in experimental profiles, 1

.. csv-table:: **Rotation physics**
   :header: "input.neo parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":doc:`ROTATION_MODEL <rotation_model>`", Rotation model selector, 1
   ":doc:`OMEGA_ROT <omega_rot>`", Normalized toroidal angular frequency, 0.0
   ":doc:`OMEGA_ROT_DERIV <omega_rot_deriv>`", Normalized toroidal rotation shear, 0.0

.. csv-table:: **Nonaxisymmetric effects**
   :header: "input.neo parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":doc:`THREED_MODEL <threed_model>`", 3D model selector, 0
   ":doc:`THREED_EXB_MODEL <threed_exb_model>`", 3D ExB drift velocity model selector (higher-order), 0
   ":doc:`THREED_EXB_DPHI0DR <threed_exb_dphi0dr>`", Normalized radial electric field in the 3D ExB drift velocity, 0
   
.. csv-table:: **Species-dependent parameters**
   :header: "input.neo parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":doc:`N_SPECIES <n_species>`", Number of kinetic species, 1
   ":doc:`Z_{1-11} <z_1>`", Charge of each species 1-11, 1
   ":doc:`MASS_{1-11} <mass_1>`", Normalized mass of each species , 1.0
   ":doc:`DENS_{1-11} <dens_1>`", Normalized density of each species, "\{1.0,0,0,0,0,0,0,0,0,0,0\}"
   ":doc:`TEMP_{1-11} <temp_1>`", Normalized temperature of each species, 1.0
   ":doc:`DLNNDR_{1-11} <dlnndr_1>`", Normalized logarithmic density gradient of each species, 1.0
   ":doc:`DLNTDR_{1-11} <dlntdr_1>`", Normalized logarithmic temperature of each species, 1.0
   ":doc:`PROFILE_DLNNDR_{1-11}_SCALE <profile_dlnndr_1_scale>`", Scaling factor for profile normalized logarithmic density gradient of each species, 1.0
   ":doc:`PROFILE_DLNTDR_{1-11}_SCALE <profile_dlntdr_1_scale>`", Scaling factor for profile normalized logarithmic temperature gradient of each species, 1.0
   ":doc:`ANISO_MODEL_{1-11} <aniso_model_1>`", Anisotropic temperaure model for each species, 1
   ":doc:`TEMP_PARA_{1-11} <temp_para_1>`", Normalized parallel temperature (aniso) for each species, 1
   ":doc:`DLNTDR_PARA_{1-11} <dlntdr_para_1>`", Normalized logarithmic parallel temperature (aniso) of each species, 1
   ":doc:`TEMP_PERP_{1-11} <temp_perp_1>`", Normalized perpendicular temperature (aniso) for each species, 1
   ":doc:`DLNTDR_PERP_{1-11} <dlntdr_perp_1>`", Normalized logarithmic perpendicular temperature (aniso) of each species, 1
   ":doc:`NU_1 <nu_1>`", Normalized collision frequency of Species 1, 0.1
   ":doc:`NE_ADE <te_ade>`", Normalized density of adiabatic electrons, 1.0
   ":doc:`TE_ADE <te_ade>`", Normalized temperature of adiabatic electrons, 1.0
   ":doc:`DLNNDRE_ADE <te_ade>`", Normalized logarithmic density gradient of adiabatic electrons, 1.0
   ":doc:`DLNTDRE_ADE <te_ade>`", Normalized logarithmic temperature of adiabatic electrons, 1.0
   
Extra subroutine interface parameters
#####################################

These parameters are available only via the subroutine interface, i.e. not in **input.neo**.

.. csv-table::
   :header: "input.neo parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":doc:`GEO_NY <geo_ny>`", Number of geometry Fourier coefficients, 0
   ":doc:`GEO_YIN <geo_yin>`", Array of normalized geometry Fourier coefficients, 0.0
	  
