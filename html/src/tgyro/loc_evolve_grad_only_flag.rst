LOC_EVOLVE_GRAD_ONLY_FLAG
-------------------------

**Definition**

Flag to allow decoupling of profile and corresponding gradient scale length evolution

**Choices**

- LOC_EVOLVE_GRAD_ONLY_FLAG=0: Self-consistently evolve profiles and gradients.
- LOC_EVOLVE_GRAD_ONLY_FLAG=1: Evolve gradient scale lengths while holding density, temperature, and rotation profiles fixed.

**Comments**

- By setting this flag to 1, one effectively transforms TGYRO from a transport code into a parallel job management routine which solves for the local flux-matching gradients at each specified radius, while holding local density, temperatures and rotation values fixed. This process allows one to more efficiently calculate local flux-matching solutions and stiffness assessments, while eliminating changes to the gyroBohm normalizations and plasma parameters such as :math:`T_e/T_i` and collisionality arising from model performance at other radii.
  
**Internal name**

loc_evolve_grad_only_flag

**Default**

0

----

:doc:`Return to list of inputs <inputs>`
