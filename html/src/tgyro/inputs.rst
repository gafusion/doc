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
