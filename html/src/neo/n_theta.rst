N_THETA
-------

**Definition**

The number of theta gridpoints, :math:`n_\theta` in the computational domain.

**Comments**

- N_THETA must be an odd number
- The theta grid range is equally-spaced and defined on the range :math:`-\pi \le \theta < \pi`.
- The theta derivatives in the kinetic equation are treated with a 4th-order centered finite difference scheme.  Periodic boundary conditions are assumed.  
  
**Internal name**
  
n_theta

**Default**

17

----

:doc:`Return to list of inputs <inputs>`
