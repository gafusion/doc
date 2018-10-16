Running CGYRO on NERSC Cori
=================================

NERSC Cori is one of the most popular platforms on which to run CGYRO.
This document provides some guidance on how to best make use of its resources

Cori capabilities
-----------------

The bulk of the Cori compute power comes from the approximately 10k nodes, each hosting a single Xeon Phi CPU.
For our purposes, each Xeon Phi provides 128 execution threads.
Each node is also equiped with 96 GB of RAM.

CGYRO Platform File
-------------------

There are two recommended platform files available:
  * CORI_KNL_HT2_IFORT
  * CORI_KNL_HT2_MKL

When building the code, the first one will link against FFTW, while the seconds one will use the FFT libraries inside Intel Compilers' MKL library.

The MKL version generally provides faster code for big problems, e.g. *nl04* , while the FFTW version seems to be better for smaller problems, e.g. *nl01* .
The speed difference can be up to 20% at both extremes.

.. note:: When running the jobs, you must use the same platform file that you used for building the executable.

If you use the Atom provided installation at NERSC, please follow the instructions at the `Supported public AToM installations <https://scidac.github.io/atom/install.html>`_ web page.

Balancing MPI Rank vs OMP
-------------------------

When submitting a CGYRO job, you are asked to pick an MPI rank ( *-n* ) and the number of threads/process ( *-nomp* ).
The product will determine the amount of compute resources you will use.

The recommended setting is to pick **nomp** to be 4.

For jobs that use only a few nodes, **-nomp 2** may be better, and for really big runs, you may get a marginal speedup using **-nomp 8** or even **-nomp 16**.


Return to :doc:`top <cgyro_cori>`


