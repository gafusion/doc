TGYRO
=====

TGYRO is a parallel transport manager with the ability to call multiple
instances of TGLF and NEO in order to obtain steady-state temperature,
density and rotation profiles.  The code was designed to operate with a
comparatively *sparse* radial mesh so as to minimize the number of calls
to the transport model.

In addition to its role as a transport code, TGYRO also operates as a job
manager for ensembles of independent GYRO/CGYRO simulations.

Data input 
----------

The primary TGYRO input file is :doc:`input.tgyro <tgyro/tgyro_table>`, with profile data defined in :ref:`input.profiles`.  

Data output, python interface, and plotting
-------------------------------------------

Although there is a description of :doc:`output data <tgyro/outputs>`, it is suggested that users use the :doc:`python interface <tgyro/plot>` to output data.

Transport Equations 
-------------------

We give a brief description of the :doc:`equations solved <tgyro/equations>` in TGYRO.



