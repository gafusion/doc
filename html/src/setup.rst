Environment setup
=================

Below we give information about the environment setup required to run GACODE tools on maintained platforms.  One this step is complete, proceed to instructions on the code-specific pages for :doc:`CGYRO <cgyro/cgyro_platforms>`, :doc:`NEO <neo>`, :doc:`TGYRO <tgyro>`, and so on.

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
  
NERSC CORI
----------

Add the following lines to ``.bashrc.ext``:

**Bleeding edge:** ::

  export GACODE_PLATFORM=CORI_KNL_HT2_MKLHT
  export GACODE_ROOT=/project/projectdirs/atom/atom-install-cori/gacode-source-mklht
  . $GACODE_ROOT/shared/bin/gacode_setup
  . ${GACODE_ROOT}/platform/env/env.$GACODE_PLATFORM

**Stable:** ::

  export GACODE_PLATFORM=CORI_KNL_HT2_MKL
  export GACODE_ROOT=/project/projectdirs/atom/atom-install-cori/gacode-source-mkl
  . $GACODE_ROOT/shared/bin/gacode_setup
  . ${GACODE_ROOT}/platform/env/env.$GACODE_PLATFORM


OLCF SUMMIT
------------

Add these lines to ``.bashrc``::

export GACODE_ROOT=$PROJWORK/fus129/gacode
. ${GACODE_ROOT}/shared/bin/gacode_setup
. ${GACODE_ROOT}/platform/env/env.${GACODE_PLATFORM}


