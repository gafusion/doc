SIM_MODEL
---------

**Definition**

Parameter which selects whether to determine the neoclassical transport from analytic theory or from numerical solution of the DKE.
     
**Choices**
  
- SIM_MODEL = 0: analytic theory only.
- SIM_MODEL = 1: numerical solution and analytic theory and NCLASS.
- SIM_MODEL = 2: numerical solution and analytic theory only.
- SIM_MODEL = 3: analytic theory and NCLASS only.  
- SIM_MODEL = 4: neural network of NEO DKE solution.

**Internal name**

sim_model

**Default**

2

----

:doc:`Return to list of inputs <inputs>`
