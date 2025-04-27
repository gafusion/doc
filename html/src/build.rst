Build on your laptop
====================

First step
----------

You will need suitable python and fortran environments. There is detailed help for

* :ref:`Linux MINT/UBUNTU users <buildlinux>` 
* :ref:`OSX users <buildosx>` 
* :ref:`Conda users <buildconda>`

If you need more help, please don't hesitate to raise an issue at https://github.com/gafusion/gacode/issues.

Source code
-----------

You should clone the gacode repository from GitHub. This was you can keep your installation up to date

.. code::
   
   $ git clone git@github.com:gafusion/gacode.git

Concept of platform files
-------------------------

In order to compile the full GACODE package on a new machine, a version of the **platform files** must be selected. You can use existing ones or create your own.  After cloning the repository, you can query the existing platforms using

.. code::
   
   $ ./gacode/shared/bin/gacode_platforms 

If you decide to create new platform files (say, for a new platform MINE) then create the following files, starting from one of the existing ones (say, CONDA_OMPI_GNU)::

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

Using system provided builds is better, but when building from scrath with gfortran, we recommend using `OpenBLAS <https://github.com/xianyi/OpenBLAS.git>`_. It is important to build with **single-threaded** settings. In the Makefile.rule file in the top-level OpenBLAS directory, set::

   BINARY=64
   USE_THREAD=0
   USE_LOCKING=1
   NO_SHARED=1
   NO_CBLAS=1
   NO_LAPACKE=1

You can find an example of linking to OpenBLAS in the `MINT platform file <https://github.com/gafusion/gacode/blob/master/platform/build/make.inc.MINT>`_. To test the thread safety, you can use the test program in shared/hybridtest::

   $ cd gacode/shared/hybridtest
   $ make clean ; make
   $ ./test

Building
--------

To build the entire GACODE project, type::

  $ cd $GACODE_ROOT ; make

To build just one of the tools, go into the specific subdirectory::

  $ cd $GACODE_ROOT/cgyro ; make


To test that the build is successful, you can run regression tests::

  $ neo -r
  $ tglf -r
  $ cgyro -r -n 4 -nomp 2

This last command run the complete CGYRO regression test suite using 4 MPI tasks and 2 OpenMP threads (8 total threads).

