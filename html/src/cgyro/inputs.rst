Parameters for input.cgyro
~~~~~~~~~~~~~~~~~~~~~~~~~~

Simple example

.. literalinclude:: reg01.txt


.. csv-table:: **Plasma shape/geometry**
   :header: "input.cgyro parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":doc:`EQUILIBRIUM_MODEL <equilibrium_model>`", Geometry model selector,1
   ":doc:`RMIN <rmin>`", Normalized minor radius,1
   ":doc:`RMAJ <rmaj>`", Normalized major radius,1
   ":doc:`SHIFT <shift>`", Shafranov shift,1
   ":doc:`KAPPA <kappa>`", Elongation,1
   ":doc:`S_KAPPA <s_kappa>`", Elongation shear,1
   ":doc:`DELTA <delta>`", Triangularity,1
   ":doc:`S_DELTA <s_delta>`", Triangularity shear,1
   ":doc:`ZETA <zeta>`", Squareness,1
   ":doc:`S_ZETA <s_zeta>`", Squareness shear,1
   ":doc:`ZMAG <zmag>`", Elevation,1
   ":doc:`DZMAG <dzmag>`", Gradient of elevation,1
   ":doc:`Q <q>`", Safety factor,1
   ":doc:`S <s>`", Magnetic shear,1
   ":doc:`BTCCW <btccw>`", Field orientation,1
   ":doc:`IPCCW <ipccw>`", Current orientation,1
   ":doc:`UDSYMMETRY_FLAG <udsymmetry_flag>`", Enforce up-down symmetry,1

.. csv-table:: **Control parameters**
   :header: "input.cgyro parameter", "Short description", "Default"
   :widths: 13, 25, 5

   ":doc:`PROFILE_MODEL <profile_model>`", Profile input selector,1
   ":doc:`NONLINEAR_FLAG <nonlinear_flag>`", Toggle nonlinear simulation,0
   ":doc:`ZF_TEST_MODE <zf_test_mode>`", Control zonal flow testing,0
   ":doc:`SILENT_FLAG <silent_flag>`", Toggle silent output,0
   ":doc:`AMP <amp>`", Initial :math:`n>0` amplitude,0.1
   ":doc:`AMP0 <amp0>`", Initial :math:`n=0` amplitude,0.0
