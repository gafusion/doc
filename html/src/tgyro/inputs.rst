Parameters for input.tgyro
~~~~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table:: **High-level control**
   :header: "input.tgyro parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":doc:`TGYRO_MODE <tgyro_mode>`", Control TGYRO operational mode,1

.. csv-table:: **Iteration control**
   :header: "input.tgyro parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":doc:`LOC_DX <loc_dx>`", Jacobian step length,0.1
   ":doc:`LOC_DX_MAX <loc_dx_max>`", Maximum size of Newton step,1.0
   ":doc:`LOC_RELAX <loc_relax>`", Iteration relaxation parameter,2.0
   ":doc:`LOC_RESTART_FLAG <loc_restart_flag>`", Restart control,0
   LOC_BC_OFFSET, Disabled,0
   ":doc:`LOC_LOCK_PROFILE_FLAG <loc_lock_profile_flag>`", Initial profile calculation,0
   ":doc:`LOC_EVOLVE_GRAD_ONLY_FLAG <loc_evolve_grad_only_flag>`", Decouple profile and gradient evolution,0
   ":doc:`LOC_RESIDUAL_METHOD <loc_residual_method>`", Residual formula,2
   ":doc:`TGYRO_ITERATION_METHOD <tgyro_iteration_method>`", Iteration scheme,1
   ":doc:`TGYRO_RELAX_ITERATIONS <tgyro_relax_iterations>`", Number of Newton iterations,0
   ":doc:`TGYRO_WRITE_PROFILES_FLAG <tgyro_write_profiles_flag>`", Manage writing of updated ``input.profiles``,0

.. csv-table:: **Profile Feedback Control**
   :header: "input.tgyro parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":doc:`TGYRO_DEN_METHODn <tgyro_den_method>`", Rules for evolving electron and ion densities, all 0
   ":doc:`LOC_TE_FEEDBACK_FLAG <loc_te_feedback_flag>`", Evolve electron temperature, 1
   ":doc:`LOC_TI_FEEDBACK_FLAG <loc_ti_feedback_flag>`", Evolve thermal ion temperature, 1
   ":doc:`LOC_ER_FEEDBACK_FLAG <loc_er_feedback_flag>`", Evolve electric field, 0
   ":doc:`LOC_HE_FEEDBACK_FLAG <loc_he_feedback_flag>`", Evolve helium ash using alpha source, 0

.. csv-table:: **Physics Control**
   :header: "input.tgyro parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":doc:`LOC_BETAE_SCALE <loc_betae_scale>`", Amount to scale electron :math:`\beta`,1.0


