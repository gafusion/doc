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

Trading speed vs efficiency
---------------------------

As with most HPC codes, CGYRO will run faster when using more compute resources (i.e. compute nodes).
However, like most HPC codes, the efficiency will generally decrease as you use more resources, too.
I.e. you will be able to get **less computation done with the same amount of allocation time**.

Often, this is an expected tradeoff to get the desired results within a reasonable amount of time,
but it should be a conscious decision.
E.g. if you need the results of 8 independent simulations at once, and you do not care for partial results,
it will be more efficient to run them in parallel, each using 1/8th of the resources,
instead of running them sequentially using as many resources as possible for each.

The actual speedup, and the related efficiency, depends on the actual input setup.
Below you can see the wallclock results doing a few steps for the very small *nl01*, the medium sized *nl03* and the large *nl04*.

.. csv-table:: **nl01**
   :header: "#nodes","Wallclock time","Speedup","Efficiency"

   2,38.4,1.0x,100%
   4,22.3,1.7x,86%
   8,12.3,3.1x,78%
   16,7.0,5.5x,69%
   32,5.2,7.4x,46%
   64,4.1,9.5x,30%

.. csv-table:: **nl03**
   :header: "#nodes","Wallclock time","Speedup","Efficiency"

   8,933,1.0x,100%
   16,489,1.9x,95%
   32,259,3.6x,90%
   64,152,6.1x,77%
   128,85,11x,68%
   256,57,16x,51%

.. csv-table:: **nl04**
   :header: "#nodes","Wallclock time","Speedup","Efficiency"

   128,153.7,1.0x,100%
   256,101.4,1.5x,76%
   512,56.9,2.7x,68%
   1024,36.8,4.2x,52%


Return to :doc:`top <cgyro_cori>`


