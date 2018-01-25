Install and build GACODE from sources 
=====================================
 
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
  
  export GACODE_PLATFORM=MY_PC
  export GACODE_ROOT=$HOME/gacode
  . $GACODE_ROOT/shared/bin/gacode_setup

Then you must create the following files:

#. Machine-specific compilation options:: 

   $ GACODE_ROOT/platform/build/make.inc.MY_PC

#. Parallel execution command syntax::

   $ GACODE_ROOT/platform/exec/exec.MY_PC

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

Running production GYRO cases
-----------------------------

Setup:

The input files and configuration for numerous linear and nonlinear cases can be auto-generated using the <tt>-g</tt> flag.  Often, it is easiest to find a template case that is close to what you would like to run, and then modify it accordingly.  A relatively simple nonlinear case is <tt>nl01</tt>.  You can generate the template for this by typing

<pre>
$ gyro -g nl01
</pre>

It is <font color=red>strongly suggested</font> that you first run your case in '''test mode''' using the <tt>-t</tt> flag:

<pre>
$ gyro -t nl01
</pre>

On large systems like hopper and jaguarpf, you will need to establish an [http://www.nersc.gov/users/computational-systems/hopper/running-jobs/interactive-jobs/ interactive queue] to execute the command above.  The result should be diagnostics printed to the screen plus a few output files.  Pay attention to the file <tt>out.gyro.efficiency</tt>:
<pre>
$ cat nl01/out.gyro.efficiency
</pre>

This shows the acceptable number of MPI tasks, together with the approximate parallel efficiency.  If you are using OpenMP, this number represents MPI tasks only, and the total core count would be multiplied by the number of OpenMP threads.  

=== Batch submission ===

On established platforms, the burden of writing batch script files and setting core counts is solved for you using the <tt>gyro_bat</tt> script.  To submit the nonlinear job above, you could type

<pre>
$ gyro_bat -e nl01 -n 256
</pre>

and then answer the subsequent questions.  GYRO is built with OpenMP capability by default, so you can specify the number of OpenMP threads as well.  This is a bit tricky and its easiest to refer to the [[Gyrotiming | examples here]].
