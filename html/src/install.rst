Install and build GACODE from sources 
=====================================
 
Prerequisites
-------------

These instructions assume you have a complete ``gacode`` top-level directory, which can cloned from GitHub::

  $ git clone git@github.com:gafusion/gacode.git

== Environment variables == 

First, you need to locate a suitable platform, or make your own platform config files.  You can query the
existing platforms using::

  $ ./GIT/gacode/shared/bin/gacode_platforms 



NERSC CORI::
  export GACODE_PLATFORM=HOPPER_CRAY
  export GACODE_ROOT=$HOME/gacode
  . $GACODE_ROOT/shared/bin/gacode_setup



== Compiling on a NEW platform ==

In order to compile the full GACODE package on a new machine, so-called <i>platform files</i> must be created.  Let's image you have a new laptop, and you want this platform to be known as SNOOPY.  Then, as described above, you'll need these lines in your shell RC file:

<pre>
export GACODE_PLATFORM=SNOOPY
export GACODE_ROOT=$HOME/gacode
. $GACODE_ROOT/shared/bin/gacode_setup
</pre>

Then you must create the following files:

1. Machine-specific compilation options: 
<pre>
$GACODE_ROOT/shared/install/make.inc.SNOOPY
</pre>

2. Parallel execution command syntax:
<pre>
$GACODE_ROOT/shared/exec/gyro.SNOOPY
</pre>

3. Extra compiler options needed by essential codes:
<pre>
$GACODE_ROOT/neo/install/make.ext.SNOOPY
$GACODE_ROOT/gyro/install/make.ext.SNOOPY
$GACODE_ROOT/gato/install/make.ext.SNOOPY
</pre>

Numerous templates for each of these files can be found in the specific folders, and most often there will be an existing machine files that is almost exactly what you need.  So, the strategy is to copy a similar machine file to your new one, and tweak as required.  If you send me your new machine files I'll add them to the GACODE repository.

== Building ==

To build the entire <tt>gacode</tt> project, typing

<pre>
$ cd $GACODE_ROOT
$ make
</pre>

By default (Jan 2013), <b>OpenMP</b> functionality is built by default.

You can build a <b>debug</b> version by typing

<pre>
$ make OPT=debug
</pre>

The build system is recursive, so this same approach works in all subdirectories (tgyro, gyro, neo, tglf, gato, etc).

== Automagic version logging ==

When building a version of gacode pulled from GitHub, the system will query git for the current revision, and log the exact revision hash. Running GYRO will yield an output file <tt>out.gyro.version</tt> containing what is effectively the exact version, the platform, and the execution date:

<pre>
r4-131-gef39
BANACH
Thu May 10 14:25:20 PDT 2012
</pre>

The same applies to tgyro and neo runs.

== Testing ==

To test GYRO:

<pre>
$ mkdir testdir ; cd testdir
$ gyro -g reg01
$ gyro -e reg01
</pre>

If you have installed everything correctly, this case will complete in a few seconds.  To check the result, type

<pre>
$ gyro_reg reg01
</pre>

If you get a PASS, then your installation is working correctly.  To run the entire regression case, type

<pre>
$ gyro -r -n 4
</pre>

This will run the complete regression test suite using 4 cores.

== Running production GYRO cases ==

=== Setup ===

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
