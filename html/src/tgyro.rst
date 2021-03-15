TGYRO
=====

Quick links
-----------

.. toctree::
   :titlesonly:

   tgyro/tgyro_table
   tgyro/tgyro_list
   tgyro/equations
   tgyro/solver
   tgyro/scenarios
   tgyro/output
   tgyro/plot

Overview
--------

TGYRO is a parallel transport manager with the ability to call multiple
instances of TGLF and NEO in order to obtain steady-state temperature,
density and rotation profiles.  The code was designed to operate with a
comparatively *sparse* radial mesh so as to minimize the number of calls
to the transport model.

In addition to its role as a transport code, TGYRO also operates as a job
manager for ensembles of independent GYRO/CGYRO simulations.

Data input 
----------

The primary TGYRO input file is :doc:`input.tgyro <tgyro/tgyro_table>`, with
profile data defined in :ref:`input.gacode`.  

Data output, python interface, and plotting
-------------------------------------------

Although there is a description of :doc:`output data <tgyro/output>`, it is
suggested that users use the :doc:`python interface <tgyro/plot>` to output data.

Transport equations and solution 
--------------------------------

We give a brief description of the transport equations, see :ref:`tgyro_equations`.
Unlike most other transport solvers, the solution algorithm in TGYRO is **not** based
on time-integration of the transport equations.  Instead, the steady-state 
equations are solved (see  :ref:`tgyro_solver`).  



