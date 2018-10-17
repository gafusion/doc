Build from sources
==================

Prerequisites
-------------

These instructions assume you have a complete GACODE top-level directory, which can be cloned from GitHub::

  $ git clone git@github.com:gafusion/gacode.git

Environment variables
---------------------

First, you need to locate a suitable platform, or make your own platform files.  After cloning the repository, you can query the existing platforms using::

  $ ./gacode/shared/bin/gacode_platforms 
    
In order to compile the full GACODE package on a new machine, **platform files** must be created.  Let's imagine you have a new laptop, and you want this platform to be known as MY_PC.  In this case you'll need these lines in your shell RC file::
  
  export GACODE_PLATFORM=MY_PC
  export GACODE_ROOT=$HOME/gacode
  . $GACODE_ROOT/shared/bin/gacode_setup

Then you must create the following files:

#. Machine-specific compilation options:: 

   $GACODE_ROOT/platform/build/make.inc.MY_PC

#. Parallel execution command syntax::

   $GACODE_ROOT/platform/exec/exec.MY_PC

#. Any module load commands (optional) go here::

   $GACODE_ROOT/platform/env/env.MY_PC

Numerous templates for each of these files can be found in the specific folders, and most often there will be an existing machine files that is almost exactly what you need.  So, the strategy is to copy a similar machine file to your new one, and tweak as required. 

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

