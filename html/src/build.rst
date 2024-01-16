Build from sources
==================

Prerequisites
-------------

These instructions assume you have a complete GACODE top-level directory, which can be cloned from GitHub::

  $ git clone git@github.com:gafusion/gacode.git

Concept of platform files
-------------------------

In order to compile the full GACODE package on a new machine, **platform files** must be created. You can use existing ones or create your own.  After cloning the repository, you can query the existing platforms using::

  $ ./gacode/shared/bin/gacode_platforms 

To create new platform files (say, for a new platform MINE) then copy/edit the following files::

  $GACODE_ROOT/platform/build/make.inc.MINE
  $GACODE_ROOT/platform/exec/exec.MINE
  $GACODE_ROOT/platform/env/env.MINE (if needed)

Numerous templates for each of these files can be found in the specific folders, and most often there will be an existing machine files that is almost exactly what you need
  
Environment variables
---------------------

To use your new platform files, enter the following lines in your shell RC file::
  
  export GACODE_PLATFORM=MINE
  export GACODE_ROOT=$HOME/gacode
  . $GACODE_ROOT/shared/bin/gacode_setup
  . $GACODE_ROOT/platform/env/env.MINE (if needed)

OpenBLAS
--------

When building with gfortran, we recommend using `OpenBLAS <https://github.com/xianyi/OpenBLAS.git>`_. It is important to build with **single-threaded** settings. In the Makefile.rule file in the top-level OpenBLAS directory, set::

   FC=gfortran
   BINARY=64
   USE_THREAD=0
   NUM_THREADS=1
   NO_SHARED=1
   NO_CBLAS=1
   NO_LAPACKE=1

You can find an example of linking to OpenBLAS in platform/build/make.inc.MINT.

Building
--------

To build the entire GACODE project, type::

  $ cd $GACODE_ROOT
  $ make

To test that the build is successful, you can run regression tests::

  $ neo -r
  $ tglf -r
  $ cgyro -r -n 4 -nomp 2

This last command run the complete CGYRO regression test suite using 4 MPI tasks and 2 OpenMP threads (8 total threads).

