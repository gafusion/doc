.. _input.gacode:

input.gacode
==============

.. |ip| replace:: :doc:`input.gacode <input_gacode>`

To see what a sample |ip| looks like, at the command line type

.. code:: bash

	  $ cgyro -g reg14 ; cat reg14/input.gacode

Overview
--------

The file |ip| contains the entire dataset required for specification of experimental profiles. All such profiles are specified on an nexp-point grid.  The information included is sufficient to carry out simulations of strongly-shaped up-down asymmetric (i.e., arbitrary) equilibria using the new :doc:`HAM equilibrium parameters <geometry>`.  

Profile ordering in |ip| is arbitrary and comment lines (starting with ``#`` in the first column) can be added for convenience.  These comment lines are ignored by the parser.  To generate |ip|, please use the ``profiles_gen`` command-line tool. 

.. csv-table:: **File structure**
   :header: "parameter", "description"
   :widths: 5, 20

   ``nion``, Total number of ions (thermal and fast).
   ``nexp``, Number of experimental data gridpoints.
   ``rho(:)``,"The dimensionless ONETWO flux-surface label, :math:`\hat\rho = \rho(r)/\rho(a)`. This should span the region :math:`{\hat\rho} \in [0,1]` using n_grid_exp values. The grid-spacing can be nonuniform."
   ``rmin(:)``,"The generalized minor radius, :math:`r`, in units of :math:`{\rm m}`. See :doc:`here <geometry>` for definition."
   ``polflux(:)``, "Poloidal flux over :math:`2\pi`, in units of Webers/radian."
   ``q(:)``, "Safety factor, :math:`q`."
   ``omega0(:)``, "Rotation frequency, :math:`\omega_0 = \displaystyle \frac{c E_r }{R B_p} = -c \frac{d \Phi}{d \psi}` in units of :math:`{\rm rad/s}`. For more information, see :doc:`plasma rotation <rotation>`."
   ``rmaj(:)``,"The generalized major radius, :math:`R_0(r)`, in units of :math:`{\rm m}`."
   ``zmag(:)``,"Flux-surface elevation, :math:`Z_0`, in units of :math:`{\rm m}`."
   ``kappa(:)``,"The dimensionless plasma elongation, :math:`\kappa`."
   ``delta(:)``,"The dimensionless plasma triangularity, :math:`\delta`."
   ``zeta(:)``,"Plasma squareness, :math:`\zeta`."
   ``shape_cos0(:)``," " 
   ``shape_cos1(:)``," "
   ``shape_cos2(:)``," " 
   ``shape_cos3(:)``," "
   ``shape_sin3(:)``," "
   ``ne(:)``,"The electron density, :math:`n_e`, in units of :math:`10^{19}/{\rm m}^3`."
   ``te(:)``,"The electron temperature, :math:`T_e`, in units of :math:`{\rm keV}`."
   ``ptot(:)``,"Total plasma pressure, in units of Pascals."
   ``z_eff(:)``,"The (dimensionless) effective ion charge, :math:`Z_{\rm eff}`."
   "``ni(:,:)``","Ion density in units of :math:`10^{19}/{\rm m}^3`. There is a column for every ion species."
   "``ti(:,:)``","Ion temperature in units of :math:`{\rm keV}`. There is a column for every ion species."
   ``jbs(:)``,"Bootstrap current (parallel) in units of :math:`{\rm MA/m^2}`."
   ``jbstor(:)``,"Bootstrap current (toroidal) in units of :math:`{\rm MA/m^2}`."
   "``vtor(:,:)``","Ion toroidal velocity in units of :math:`{\rm m/s}`. There is a column for every ion species."
   "``vpol(:,:)``","Ion poloidal velocity in units of :math:`{\rm m/s}`. There is a column for every ion species."
   ``qsync(:)``,"Electron synchrotron radiation in units of :math:`{\rm MW/m^3}`."
   ``qbrem(:)``,"Bremsstrahlung radiation in units of :math:`{\rm MW/m^3}`."
   ``qline(:)``,"Electron line radiation in units of :math:`{\rm MW/m^3}`."

