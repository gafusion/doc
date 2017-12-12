SPITZER_MODEL
-------------

**Definition**

Parameter which selects whether to solve the standard neoclassical transport problem or the Spitzer problem.
     
**Choices**
  
- SPITZER_MODEL = 0: solve the standard neoclassical transport problem.
- SPITZER_MODEL = 1: solve the Spitzer problem.
  
  - Must be run with an electron species and an ion species.
  - The Spitzer coefficients (L11, L12, L21, L22) are output in the file out.neo.spitzer.

**Internal name**

spitzer_model

**Default**

0

----

:doc:`Return to list of inputs <inputs>`
