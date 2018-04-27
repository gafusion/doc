CGYRO output files
==================

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
   :header: "Filename", "Short description"
   :widths: 20, 30

   out.cgyro.time,Time and error vector
   out.cgyro.timing,Kernel timer data
