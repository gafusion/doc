TGYRO_MODE
----------

**Definition**

High-level control of TGYRO operational mode.

**Choices**

- TGYRO_MODE=1 : Operate as transport code. 
- TGYRO_MODE=3 : Multi-job control of GYRO or CGYRO.

**Comments**

Sample input.tgyro for TGYRO_MODE=1 to run as transport code

.. code-block:: none

   DIR TGLF1 1
   DIR TGLF2 1
   DIR TGLF3 1
   DIR TGLF4 1

   TGYRO_MODE=1
   
   #-----------------------------------------------------
   # NEO control
   LOC_NEO_METHOD=1
   #-----------------------------------------------------

   #-----------------------------------------------------
   # Profile control
   TGYRO_DEN_METHOD0=0
   LOC_TE_FEEDBACK_FLAG=1
   LOC_TI_FEEDBACK_FLAG=1
   #-----------------------------------------------------

   #-----------------------------------------------------
   # Physics control
   # (1=static exch, 2=dynamic exch, 3=reactor)
   LOC_SCENARIO=2 
   TGYRO_RMAX=0.75
   #-----------------------------------------------------

   #-----------------------------------------------------
   # Iteration control
   TGYRO_ITERATION_METHOD=1
   LOC_RESIDUAL_METHOD=3

   LOC_DX=0.02

   # TGYRO iterations
   TGYRO_RELAX_ITERATIONS=4

   # Restart (0=new,1=restart)
   LOC_RESTART_FLAG=0
   #-----------------------------------------------------

   
Sample input.tgyro for TGYRO_MODE=2 to run 6 instances of CGYRO

.. code-block:: none

   DIR c1 384 GAMMA_E=0.0
   DIR c2 384 GAMMA_E=0.02
   DIR c3 384 GAMMA_E=0.04
   DIR c4 384 GAMMA_E=0.06
   DIR c5 384 GAMMA_E=0.08
   DIR c6 384 GAMMA_E=0.10

   TGYRO_MODE=3
   TGYRO_MULTI_CODE=cgyro

**Internal name**

tgyro_mode

**Default**

1

----

:doc:`Return to list of inputs <inputs>`
