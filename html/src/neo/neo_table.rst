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

   ":ref:`neo_n_radial`", Number of radial gridpoints,1
   ":ref:`neo_n_theta`", Number of poloidal gridpoints, 17
   ":ref:`neo_n_xi`", "Number of :math:`\xi` polynomials - 1", 17
   ":ref:`neo_n_energy`", Number of :math:`{\rm v}` polynomials - 1, 6

.. csv-table:: **Plasma equilibrium/geometry**
   :header: "input.neo parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":ref:`neo_equilibrium_model`", Geometry selector,0
   ":ref:`neo_rmin_over_a`", Normalized minor radius (min), 0.5
   ":ref:`neo_rmin_over_a_2`", Normalized minor radius (max), 0.6
   ":ref:`neo_rmaj_over_a`", Normalized major radius, 3.0
   ":ref:`neo_kappa`", Elongation, 1.0
   ":ref:`neo_s_kappa`", Elongation shear, 0.0
   ":ref:`neo_delta`", Triangularity, 0.0
   ":ref:`neo_s_delta`", Triangularity shear, 0.0
   ":ref:`neo_zeta`", Squareness, 0.0
   ":ref:`neo_s_zeta`", Squareness shear, 0.0
   ":ref:`neo_shift`", Shafranov shift, 0.0
   ":ref:`neo_zmag_over_a`", Normalized elevation, 0.0
   ":ref:`neo_s_zmag`", Gradient of elevation, 0.0
   ":ref:`neo_q`", Safety factor, 2.0
   ":ref:`neo_shear`", Magnetic shear, 1.0
   ":ref:`neo_beta_star`", Effective pressure gradient, 0.0
   ":ref:`neo_ipccw`", Determines the sign of the plasma current, -1
   ":ref:`neo_btccw`", Determines the sign of the toroidal field, -1
   ":ref:`neo_rho_star`", Normalized Larmor radius, 0.001
   ":ref:`neo_dphi0dr`", Normalized radial electric field, 0.0
   ":ref:`neo_epar0`", Normalized inductive electric field, 0.0
   ":ref:`neo_epar0_spitzer`", Normalized inductive electric field for spitzer problem, 1.0

.. csv-table:: **General models**
   :header: "input.neo parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":ref:`neo_silent_flag`", Output mode selector, 0
   ":ref:`neo_sim_model`", Numerical/analytic simulation model selector, 2
   ":ref:`neo_spitzer_model`", DKE/Spitzer problem selector, 0
   ":ref:`neo_collision_model`", Collision model selector, 4

.. csv-table:: **Profile models**
   :header: "input.neo parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":ref:`neo_profile_model`", Local/experimental profile selector, 1
   ":ref:`neo_profile_equilibrium_model`", Geometry selector for experimental profiles, 1
   ":ref:`neo_profile_erad0_model`", Determines whether to include :math:`E_r^{(0)}` in experimental profiles, 1

.. csv-table:: **Rotation physics**
   :header: "input.neo parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":ref:`neo_rotation_model`", Rotation model selector, 1
   ":ref:`neo_omega_rot`", Normalized toroidal angular frequency, 0.0
   ":ref:`neo_omega_rot_deriv`", Normalized toroidal rotation shear, 0.0

.. csv-table:: **Nonaxisymmetric effects**
   :header: "input.neo parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":ref:`neo_threed_model`", 3D model selector, 0
   ":ref:`neo_threed_exb_model`", 3D ExB drift velocity model selector (higher-order), 0
   ":ref:`neo_threed_exb_dphi0dr`", Normalized radial electric field in the 3D ExB drift velocity, 0
   
.. csv-table:: **Species-dependent parameters**
   :header: "input.neo parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":ref:`neo_n_species`", Number of kinetic species, 1
   ":ref:`neo_z_1`", "Charge of Species 1.  Also set Z_2, Z_3, ..., Z_11", 1
   ":ref:`neo_mass_1`", "Normalized mass of Species 1.  Alsoe set MASS_2, MASS_2, ..., MASS_11", 1.0
   ":ref:`neo_dens_1`", Normalized density of Species 1, "\{1.0,0,0,0,0,0,0,0,0,0,0\}"
   ":ref:`neo_temp_1`", Normalized temperature of Species 1, 1.0
   ":ref:`neo_dlnndr_1`", Normalized logarithmic density gradient of Species 1, 1.0
   ":ref:`neo_dlntdr_1`", Normalized logarithmic temperature of Species 1 , 1.0
   ":ref:`neo_profile_dlnndr_1_scale`", Scaling factor for profile normalized logarithmic density gradient of each species, 1.0
   ":ref:`neo_profile_dlntdr_1_scale`", Scaling factor for profile normalized logarithmic temperature gradient of each species, 1.0
   ":ref:`neo_aniso_model_1`", Anisotropic temperaure model for each species, 1
   ":ref:`neo_temp_para_1`", Normalized parallel temperature (aniso) for each species, 1
   ":ref:`neo_dlntdr_para_1`", Normalized logarithmic parallel temperature (aniso) of each species, 1
   ":ref:`neo_temp_perp_1`", Normalized perpendicular temperature (aniso) for each species, 1
   ":ref:`neo_dlntdr_perp_1`", Normalized logarithmic perpendicular temperature (aniso) of each species, 1
   ":ref:`neo_nu_1`", Normalized collision frequency of Species 1, 0.1
   ":ref:`neo_te_ade`", Normalized density of adiabatic electrons, 1.0
   ":ref:`neo_te_ade`", Normalized temperature of adiabatic electrons, 1.0
   ":ref:`neo_te_ade`", Normalized logarithmic density gradient of adiabatic electrons, 1.0
   ":ref:`neo_te_ade`", Normalized logarithmic temperature of adiabatic electrons, 1.0
   
Extra subroutine interface parameters
#####################################

These parameters are available only via the subroutine interface, i.e. not in **input.neo**.

.. csv-table::
   :header: "input.neo parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":ref:`neo_geo_ny`", Number of geometry Fourier coefficients, 0
   ":ref:`neo_geo_yin`", Array of normalized geometry Fourier coefficients, 0.0
	  
