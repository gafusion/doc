Parameters for input.cgyro
~~~~~~~~~~~~~~~~~~~~~~~~~~

Simple example

.. literalinclude:: reg01.txt


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

.. csv-table:: **Control parameters**
   :header: "input.cgyro parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":ref:`PROFILE_MODEL <profile_model>`", Profile input selector,1
   ":ref:`NONLINEAR_FLAG <nonlinear_flag>`", Toggle nonlinear simulation,0
   ":ref:`ZF_TEST_MODE <zf_test_mode>`", Control zonal flow testing,0
   ":ref:`SILENT_FLAG <silent_flag>`", Toggle silent output,0
   ":ref:`AMP <amp>`", Initial :math:`n>0` amplitude,0.1
   ":ref:`AMP0 <amp0>`", Initial :math:`n=0` amplitude,0.0

.. csv-table:: **Fields**
   :header: "input.cgyro parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":ref:`N_FIELD <n_field>`", Number of fields to evolve,1
   ":ref:`BETAE_UNIT <betae_unit>`", Electron beta,0.0
   ":ref:`BETAE_UNIT_SCALE <betae_unit_scale>`", Electron beta scaling parameter,0.0
   ":ref:`BETA_STAR <beta_star>`", :math:`\displaystyle \frac{8\pi}{B_\mathrm{unit}^2} \frac{dp}{dr}`,0
   ":ref:`BETA_STAR_SCALE <beta_star_scale>`", Scaling factor for BETA_STAR ,0
   ":ref:`LAMBDA_DEBYE <silent_flag>`", Debye length,0.0
   ":ref:`LAMBDA_DEBYE_SCALE <amp>`", Debye length scaling factor,0.0

