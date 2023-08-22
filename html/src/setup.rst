Environment setup
=================

Below we give information about the environment setup required to run GACODE tools on maintained platforms.  Once this step is complete, proceed to instructions on running cases :doc:`CGYRO <cgyro/running_cases>`, :doc:`NEO <neo>`, :doc:`TGYRO <tgyro>`, and so on.

NERSC PERLMUTTER (CPU)
----------------------

Add the following lines to ``.bashrc``::

  export GACODE_PLATFORM=PERLMUTTER_CPU
  export GACODE_ROOT=/global/common/software/atom/gacode-perlmutter-cpu
  . ${GACODE_ROOT}/shared/bin/gacode_setup
  . ${GACODE_ROOT}/platform/env/env.$GACODE_PLATFORM

  
Sample job layout (32 MPI, 8 OMP) = 1 node, 59 min wall-clock time::

  $ gacode_qsub -code cgyro -n 32 -nomp 8 -repo atom -w 00:59:00

.. important::
   Perlmutter CPU has 256 logical cores per node (8 OMP * 32 MPI)
  
NERSC PERLMUTTER (GPU)
----------------------

Add the following lines to ``.bashrc``::

  export GACODE_PLATFORM=PERLMUTTER_GPU
  export GACODE_ROOT=/global/common/software/atom/gacode-perlmutter-gpu
  . ${GACODE_ROOT}/shared/bin/gacode_setup
  . ${GACODE_ROOT}/platform/env/env.$GACODE_PLATFORM

Sample job layout (16 MPI, 8 OMP) = (1 node, 4 GPU) 59 min wall-clock time::

  $ gacode_qsub -code cgyro -n 16 -nomp 8 -repo atom -w 00:59:00

.. important::
   Perlmutter GPU has 4 GPUs and 128 logical cores per node (8 OMP * 16 MPI)

.. important::
   Better to set TOROIDALS_PER_PROC > 1 in input.cgyro and use -nomp 32

GA OMEGA
--------

To run in a **dedicated GACODE environment**, add these lines to ``.bashrc``::

  export GACODE_PLATFORM=IRIS
  export GACODE_ROOT=/fusion/projects/theory/gacode
  . ${GACODE_ROOT}/shared/bin/gacode_setup
  . ${GACODE_ROOT}/platform/env/env.${GACODE_PLATFORM}

