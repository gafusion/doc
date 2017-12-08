Parameters for input.neo
~~~~~~~~~~~~~~~~~~~~~~~~

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
