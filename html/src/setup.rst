Environment setup
=================

Below we give information about the environment setup required to run GACODE tools on maintained platforms.  One this step is complete, proceed to instructions on the code-specific pages for :doc:`CGYRO <cgyro/cgyro_platforms>`, :doc:`NEO <neo>`, :doc:`TGYRO <tgyro>`, and so on.

GA IRIS
-------

NERSC CORI
----------
  
To run on NERSC CORI KNL with the Intel Fortran and FFTW, add these
lines to ``.bashrc.ext``::

  export GACODE_PLATFORM=CORI_KNL_HT2_IFORT
  export GACODE_ROOT=/project/projectdirs/atom/atom-install-cori/gacode-source
  . $GACODE_ROOT/shared/bin/gacode_setup
  . ${GACODE_ROOT}/platform/env/env.$GACODE_PLATFORM

To run on NERSC CORI KNL with the Intel Fortran and MKL, add these
lines to ``.bashrc.ext``::

  export GACODE_PLATFORM=CORI_KNL_HT2_MKL
  export GACODE_ROOT=/project/projectdirs/atom/atom-install-cori/gacode-source-mkl
  . $GACODE_ROOT/shared/bin/gacode_setup
  . ${GACODE_ROOT}/platform/env/env.$GACODE_PLATFORM


OLCF TITAN
----------

To run on OLCF TITAN with the PGI compiler, add these lines to ``.bashrc``::

  export GACODE_PLATFORM=TITAN_PGI
  export GACODE_ROOT=/ccs/proj/fus116/candy/gacode
  . $GACODE_ROOT/shared/bin/gacode_setup
  . ${GACODE_ROOT}/platform/env/env.$GACODE_PLATFORM


