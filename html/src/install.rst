Install and build GACODE
========================
 
Prerequisites
-------------

These instructions assume you have a complete ``gacode`` top-level directory, which can be cloned from GitHub::

  $ git clone git@github.com:gafusion/gacode.git

Environment variables
---------------------

First, you need to locate a suitable platform, or make your own platform
config files.  After cloning the repository, you can query the existing
platforms using::

  $ ./gacode/shared/bin/gacode_platforms 
  
Typical installations
---------------------
  
To run on NERSC CORI KNL with the Intel Fortran compiler, add these
lines to ``.bashrc.ext``::

  export GACODE_PLATFORM=CORI_KNL_HT2_IFORT
  export GACODE_ROOT=/project/projectdirs/atom/atom-install-cori/gacode-source
  . $GACODE_ROOT/shared/bin/gacode_setup
  . ${GACODE_ROOT}/platform/env/env.$GACODE_PLATFORM

The last line above loads the required modules for the given platform.
  
Compiling on a NEW platform
---------------------------

In order to compile the full GACODE package on a new machine, so-called **platform files** must be created.  Let's image you have a new laptop, and you want this platform to be known as MY_PC.  Then, as described above, you'll need these lines in your shell RC file::
  
  export GACODE_PLATFORM=MYCOMPUTER
  export GACODE_ROOT=$HOME/gacode
  . $GACODE_ROOT/shared/bin/gacode_setup

Then you must create the following files:

#. Machine-specific compilation options:: 

   $ GACODE_ROOT/platform/build/make.inc.MYCOMPUTER

#. Parallel execution command syntax::

   $ GACODE_ROOT/platform/exec/exec.MYCOMPUTER

#. Any module load commands (optional) go here::

   $ GACODE_ROOT/platform/env/env.MYCOMPUTER

Numerous templates for each of these files can be found in the specific
folders, and most often there will be an existing machine files that
is almost exactly what you need.  So, the strategy is to copy a similar
machine file to your new one, and tweak as required. 

Building
--------

To build the entire ``gacode`` project, type::

  $ cd $GACODE_ROOT
  $ make

To test that the build is uccessful, you can run regression tests::

  $ neo -r
  $ tglf -r
  $ cgyro -r -n 4 -nomp 2

This last command run the complete ``cgyro`` regression test suite using
4 MPI tasks and 2 OpenMP threads (8 total threads).

