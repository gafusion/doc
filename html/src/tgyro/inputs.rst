Parameters for input.tgyro
~~~~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table:: **Numerical resolution**
   :header: "input.neo parameter", "Interface parameter", "Short description", "Default"
   :widths: 13, 15, 25, 5

   ":doc:`N_RADIAL <n_radial>`", neo_n_radial_in, Number of radial gridpoints,1
   ":doc:`N_THETA <n_theta>`", neo_n_theta_in, Number of poloidal gridpoints, 17
   ":doc:`N_XI <n_xi>`", neo_xi_in, "Number of :math:`\xi` polynomials - 1", 17
   ":doc:`N_ENERGY <n_energy>`", neo_n_energy_in, Number of energy polynomials, 6

.. csv-table:: **Plasma equilibrium/geometry**
   :header: "input.neo parameter", "Interface parameter", "Short description", "Default"
   :widths: 13, 15, 25, 5

   ":doc:`EQUILIBRIUM_MODEL <equilibrium_model>`", neo_equilibrium_in, Geometry selector,0
   ":doc:`RMIN_OVER_A <rmin_over_a>`", neo_rmin_over_a_in, Normalized minor radius (min), 0.5
   ":doc:`RMIN_OVER_A_2 <rmin_over_a_2>`", neo_rmin_over_a_2_in, Normalized minor radius (max), 0.6
