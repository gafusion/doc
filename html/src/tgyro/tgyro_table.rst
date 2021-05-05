input.tgyro Tabular List
========================

.. csv-table:: **High-level control**
   :header: "input.tgyro parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":ref:`tgyro_mode`", Control TGYRO operational mode,1

.. csv-table:: **Iteration control**
   :header: "input.tgyro parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":ref:`tgyro_loc_dx`", Jacobian step length,0.1
   ":ref:`tgyro_loc_dx_max`", Maximum size of Newton step,1.0
   ":ref:`tgyro_loc_relax`", Iteration relaxation parameter,2.0
   ":ref:`tgyro_loc_restart_flag`", Restart control,0
   ":ref:`tgyro_loc_lock_profile_flag`", Initial profile calculation,0
   ":ref:`tgyro_loc_evolve_grad_only_flag`", Decouple profile and gradient evolution,0
   ":ref:`tgyro_loc_residual_method`", Residual formula,2
   ":ref:`tgyro_iteration_method`", Iteration scheme,1
   ":ref:`tgyro_relax_iterations`", Number of Newton iterations,0
   ":ref:`tgyro_write_profiles_flag`", Manage writing of updated :ref:`input.gacode`,0

.. csv-table:: **Profile Feedback Control**
   :header: "input.tgyro parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":ref:`tgyro_den_method`", Rules for evolving electron and ion densities, all 0
   ":ref:`tgyro_loc_te_feedback_flag`", Evolve electron temperature, 1
   ":ref:`tgyro_loc_ti_feedback_flag`", Evolve thermal ion temperature, 1
   ":ref:`tgyro_loc_er_feedback_flag`", Evolve electric field, 0

.. csv-table:: **Physics Control**
   :header: "input.tgyro parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":ref:`tgyro_loc_betae_scale`", Amount to scale electron :math:`\beta`,1.0
   ":ref:`tgyro_neo_method`", Control of NEO simulation,1
   ":ref:`tgyro_loc_scenario`", Power-balance scenario,1

.. csv-table:: **Species Parameters**
   :header: "input.tgyro parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":ref:`tgyro_therm_flag`", Toggle thermal/nonthermal species , 1
