Tabular list for input.cgyro
============================

.. csv-table:: **Plasma shape/geometry**
   :header: "input.cgyro parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":ref:`cgyro_equilibrium_model`", Geometry model selector,2
   ":ref:`cgyro_rmin`", Normalized minor radius,0.5
   ":ref:`cgyro_rmaj`", Normalized major radius,3.0
   ":ref:`cgyro_shift`", Shafranov shift,0.0
   ":ref:`cgyro_kappa`", Elongation,1.0
   ":ref:`cgyro_s_kappa`", Elongation shear,0.0
   ":ref:`cgyro_delta`", Triangularity,0.0
   ":ref:`cgyro_s_delta`", Triangularity shear,0.0
   ":ref:`cgyro_zeta`", Squareness,0.0
   ":ref:`cgyro_s_zeta`", Squareness shear,0.0
   ":ref:`cgyro_zmag`", Elevation,0.0
   ":ref:`cgyro_dzmag`", Gradient of elevation,0.0
   ":ref:`cgyro_q`", Safety factor,2.0
   ":ref:`cgyro_s`", Magnetic shear,1.0
   ":ref:`cgyro_btccw`", Field orientation,-1.0
   ":ref:`cgyro_ipccw`", Current orientation,-1.0
   ":ref:`cgyro_udsymmetry_flag`", Enforce up-down symmetry,1

.. csv-table:: **Advanced shape parameters**
   :header: "input.cgyro parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":ref:`cgyro_shape_cos0`", Tilt,0.0
   ":ref:`cgyro_shape_s_cos0`", Tilt shear,0.0
   ":ref:`cgyro_shape_cos1`", Ovality,0.0
   ":ref:`cgyro_shape_s_cos1`", Ovality shear,0.0
   ":ref:`cgyro_shape_cos2`", 2nd antisymmetric moment,0.0
   ":ref:`cgyro_shape_s_cos2`", 2nd antisymmetric moment shear,0.0
   ":ref:`cgyro_shape_cos3`", 3rd antisymmetric moment, 0.0
   ":ref:`cgyro_shape_s_cos3`", 3rd antisymmetric moment shear,0.0
   ":ref:`cgyro_shape_sin3`", 3rd symmetric moment, 0.0
   ":ref:`cgyro_shape_s_sin3`", 3rd symmetric moment shear,0.0

.. csv-table:: **Control parameters**
   :header: "input.cgyro parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":ref:`cgyro_profile_model`", Profile input selector,1
   ":ref:`cgyro_nonlinear_flag`", Toggle nonlinear simulation,0
   ":ref:`cgyro_zf_test_mode`", Control zonal flow testing,0
   ":ref:`cgyro_silent_flag`", Toggle silent output,0
   ":ref:`cgyro_amp`", Initial :math:`n>0` amplitude,0.1
   ":ref:`cgyro_amp0`", Initial :math:`n=0` amplitude,0.0

.. csv-table:: **Fields**
   :header: "input.cgyro parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":ref:`cgyro_n_field`", Number of fields to evolve,1
   ":ref:`cgyro_betae_unit`", Electron beta,0.0
   ":ref:`cgyro_betae_unit_scale`", Electron beta scaling parameter,0.0
   ":ref:`cgyro_beta_star_scale`", Pressure gradient scaling factor,1.0
   ":ref:`cgyro_lambda_debye`", Debye length,0.0
   ":ref:`cgyro_lambda_debye_scale`", Debye length scaling factor,0.0

.. csv-table:: **Numerical Resolution**
   :header: "input.cgyro parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":ref:`cgyro_n_radial`", Number of radial :math:`k_x^0` wavenumbers,4
   ":ref:`cgyro_n_theta`", Number of poloidal :math:`\theta` gridpoints,24
   ":ref:`cgyro_n_xi`", Number of pitch angle :math:`\xi` gridpoints,16
   ":ref:`cgyro_n_energy`", Number of energy :math:`u` gridpoints,8
   ":ref:`cgyro_e_max`", Maximum energy ,8.0
   ":ref:`cgyro_n_toroidal`", Number of binormal :math:`k_y` wavenumbers,1
   ":ref:`cgyro_ky`", Binormal wavenumber or domain size,0.3
   ":ref:`cgyro_box_size`", Radial domain size,1

.. csv-table:: **Numerical Dissipation**
   :header: "input.cgyro parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":ref:`cgyro_up_radial`", Radial spectral upwind scaling,1.0
   ":ref:`cgyro_up_theta`", Poloidal upwind scaling,1.0
   ":ref:`cgyro_up_alpha`", Binormal spectral upwind scaling,0.0
   ":ref:`cgyro_nup_radial`", Radial spectral upwind order,3
   ":ref:`cgyro_nup_theta`", Poloidal upwind order,3
   ":ref:`cgyro_nup_alpha`", Binormal spectral upwind order,3

.. csv-table:: **Time Stepping**
   :header: "input.cgyro parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":ref:`cgyro_delta_t_method`", Time integrator selection,0
   ":ref:`cgyro_delta_t`", Time step,0.01
   ":ref:`cgyro_error_tol`", Error tolerance,1e-4
   ":ref:`cgyro_max_time`", Simulation time ,1.0
   ":ref:`cgyro_freq_tol`", Error tolerance for frequency,0.001
   ":ref:`cgyro_print_step`", Data output interval,100
   ":ref:`cgyro_restart_step`", Restart data output interval,10

.. csv-table:: **Species-related parameters**
   :header: "input.cgyro parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":ref:`cgyro_n_species`", Number of GK species (ions plus electrons), 1
   ":ref:`cgyro_z`", Species charge, 1
   ":ref:`cgyro_mass`", Species mass, 1.0
   ":ref:`cgyro_dens`", Species density, 1.0
   ":ref:`cgyro_temp`", Species temperature, 1.0
   ":ref:`cgyro_dlnndr`", Species density gradient, 1.0
   ":ref:`cgyro_dlntdr`", Species temperature gradient, 1.0
	    
.. csv-table:: **Collisions**
   :header: "input.cgyro parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":ref:`cgyro_nu_ee`", Electron-electron collision frequency, 0.1
   ":ref:`cgyro_collision_model`", Collision model selector, 4
   ":ref:`cgyro_collision_field_model`", Toggle self-consistent field update,1
   ":ref:`cgyro_collision_mom_restore`", Toggle momentum conservation,1
   ":ref:`cgyro_collision_ene_restore`", Toggle energy conservation,1
   ":ref:`cgyro_collision_ene_diffusion`", Toggle energy diffusion,1
   ":ref:`cgyro_collision_kperp`", Toggle so-called FLR term, 0
   ":ref:`cgyro_gpu_bigmem_flag`", Enable GPU offload, 0

.. csv-table:: **Rotation physics**
   :header: "input.cgyro parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":ref:`cgyro_rotation_model`", Rotation model selector,1
   ":ref:`cgyro_gamma_e`", Dopper shearing rate (:math:`E \times B` shear), 0.0
   ":ref:`cgyro_gamma_p`", Rotation shearing rate, 0.0
   ":ref:`cgyro_mach`", Rotation speed (Mach number), 0.0
   ":ref:`cgyro_gamma_e_scale`", Doppler shearing rate scaling factor, 1.0
   ":ref:`cgyro_gamma_p_scale`", Rotation shearing rate scaling factor, 1.0
   ":ref:`cgyro_mach_scale`", Rotation speed scaling factor, 1.0 

.. csv-table:: **Global-spectral parameters**
   :header: "input.cgyro parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":ref:`cgyro_n_global`", Global output resolution, 4
   ":ref:`cgyro_nu_global`", Source rate, 15.0
	    
.. csv-table:: **Output file control**
   :header: "input.cgyro parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":ref:`cgyro_field_print_flag`", Output of electromagnetic field components, 0
   ":ref:`cgyro_moment_print_flag`", Output of density and energy moments, 0
   ":ref:`cgyro_gflux_print_flag`", Output of global flux profiles, 0
   ":ref:`cgyro_h_print_flag`", Output of distribution (single-mode only), 0
