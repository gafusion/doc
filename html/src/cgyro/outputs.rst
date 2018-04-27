CGYRO output files
==================

It is not **not recommended** to read these files directly.  Rather, we encourage the use
of the CGYRO :doc:`python data interface <plot>`.


.. csv-table:: **Time-independent output**
   :header: "Filename", "Short description"
   :widths: 20, 30

   out.cgyro.egrid,Energy mesh and various weights
   out.cgyro.equilibrium,Physics input data
   out.cgyro.grids,Mesh dimensions and coordinates
   out.cgyro.hosts,MPI ranks and hostnames
   out.cgyro.info,Human-readable description of simulation
   out.cgyro.memory,Memory usage statistics
   out.cgyro.mpi,Recommendations for choosing MPI tasks and OMP threads
   out.cgyro.version,Version information and timestamp for simulation
   bin.cgyro.geo,GK equation coefficients versus :math:`\theta`

.. csv-table:: **Common time-dependent output**
   :header: "Filename", "Short description", "Switch"
   :widths: 20,25,15

   out.cgyro.time,Time and error vector
   out.cgyro.timing,Kernel timer data
   bin.cgyro.freq, Mode frequency vector
   bin.cgyro.kxky_phi, ":math:`\delta\phi(k_x^0,k_y,t)`",
   bin.cgyro.kxky_apar, ":math:`\delta A_\parallel(k_x^0,k_y,t)`",":ref:`cgyro_field_print_flag` = 1"
   bin.cgyro.kxky_bpar, ":math:`\delta B_\parallel(k_x^0,k_y,t)`",":ref:`cgyro_field_print_flag` = 1"
   bin.cgyro.kxky_n, ":math:`\delta n_a(k_x^0,k_y,t)`",":ref:`cgyro_moment_print_flag` = 1"
   bin.cgyro.kxky_e, ":math:`\delta E_a(k_x^0,k_y,t)`",":ref:`cgyro_moment_print_flag` = 1"
   bin.cgyro.kxky_flux_e, ":math:`Q_a(k_x^0,k_y,t)`",":ref:`cgyro_kxkyflux_print_flag` = 1"
   bin.cgyro.ky_flux, ":math:`\Gamma_a, \Pi_a, Q_a` versus :math:`(k_y,t)`" 

.. csv-table:: **Restart data**
   :header: "Filename", "Short description"
   :widths: 20, 30

   out.cgyro.tag,Restart tag file (contains time index and value)
   out.cgyro.restart,Binary restart file
