Environment setup
=================

Below we give information about the environment setup required to run GACODE tools on maintained platforms.  One this step is complete, proceed to instructions on running cases :doc:`CGYRO <cgyro/running_cases>`, :doc:`NEO <neo>`, :doc:`TGYRO <tgyro>`, and so on.

  
NERSC CORI
----------

Add the following lines to ``.bashrc``::

  export GACODE_PLATFORM=CORI_KNL_HT2_MKL
  export GACODE_ROOT=/global/cfs/cdirs/atom/atom-install-cori/gacode-source-mkl
  . ${GACODE_ROOT}/shared/bin/gacode_setup
  . ${GACODE_ROOT}/platform/env/env.$GACODE_PLATFORM


Sample job layout (1 node, 32 MPI, 4 OpenMP)::

  $ gacode_qsub -code cgyro -n 32 -nomp 4 -repo atom -w 15

NERSC PERLMUTTER (GPU)
----------------------

Add the following lines to ``.bashrc``::

  export GACODE_PLATFORM=PERLMUTTER_GPU
  export GACODE_ROOT=/global/cfs/cdirs/atom/atom-install-perlmutter/gacode-gpu
  . ${GACODE_ROOT}/shared/bin/gacode_setup
  . ${GACODE_ROOT}/platform/env/env.$GACODE_PLATFORM


Sample job layout (1 node, 4 GPU, 16 MPI, 8 OpenMP)::

  $ gacode_qsub -code cgyro -n 16 -nomp 8 -repo atom_g -w 15

GA IRIS
-------

To run in a **dedicated GACODE environment**, add these lines to ``.bashrc``::

  export GACODE_PLATFORM=IRIS
  export GACODE_ROOT=/fusion/projects/theory/gacode
  . ${GACODE_ROOT}/shared/bin/gacode_setup
  . ${GACODE_ROOT}/platform/env/env.${GACODE_PLATFORM}

This will purge all modules before setup, so if you want to add additional modules, do so after
executing the last line.

To run in an **OMFIT-friendly environment** (perhaps missing the most up-to-date GACODE functionality)
add these lines to ``.bashrc``::
 
  module load defaults
  module load atom/dev
  export GACODE_PLATFORM=SATURN_GCC
  export GACODE_ROOT=/fusion/projects/codes/atom/dev/atom_SATURN_GCC/gacode
  . $GACODE_ROOT/shared/bin/gacode_setup

