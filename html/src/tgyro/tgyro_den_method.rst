TGYRO_DEN_METHOD*
-----------------

**Definition**

Rules for evolving species. 

**Choices**

- TGYRO_DEN_METHOD*=0: Do not evolve species
- TGYRO_DEN_METHOD*=1: Evolve species by solving transport equation
- TGYRO_DEN_METHOD*=-1: Use species to enforce quasineutrality (can use this for more than one species simultaneously)

**Comments**

- Electrons are TGYRO_DEN_METHOD0, the first ion is TGYRO_DEN_METHOD1, etc.
- To evolve electrons, with first ion used to set quasineutrality, and second ion density fixed, set

  .. code-block:: none

     TGYRO_DEN_METHOD0=1
     TGYRO_DEN_METHOD1=-1
     TGYRO_DEN_METHOD2=0

- To evolve the second ion density, and adjust the main ion to enforce quasineutrality, set

  .. code-block:: none

     TGYRO_DEN_METHOD0=0
     TGYRO_DEN_METHOD1=-1
     TGYRO_DEN_METHOD2=1

**Internal name**

tgyro_den_method*

**Default**

0

----

:doc:`Return to list of inputs <inputs>`
