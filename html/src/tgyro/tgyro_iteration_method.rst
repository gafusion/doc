TGYRO_ITERATION_METHOD
----------------------

**Definition**

Variation of Newton method used for root-finding.

**Choices**

- TGYRO_ITERATION_METHOD=1 : Local residual (standard) method
- TGYRO_ITERATION_METHOD=4 : Global residual method (serial version)
- TGYRO_ITERATION_METHOD=5 : Global residual method (parallel version)
- TGYRO_ITERATION_METHOD=6 : Simple relaxation method (**in development**)

**Comments**

- If TGYRO_ITERATION_METHOD=5, use (n_evolve+1)*n_mpi rather than simply n_mpi in ``input.tgyro``
- For example, if evolving :math:`T_e` and :math:`T_i`, then n_evolve+1=3, so set 3*n_mpi in ``input.tgyro``
- TGYRO_ITERATION_METHOD=6 uses a simple relaxation scheme

  .. math::

     \frac{dz}{z} = -\mathrm{LOC\_RELAX} \, \frac{Q_\mathrm{tot} - Q_\mathrm{target}}{\max(|Q_\mathrm{tot}|,|Q_\mathrm{target}|,1)}

  .. math::

- In TGYRO_ITERATION_METHOD=6, if :math:`dz/z >` LOC_DX_MAX, then :math:`dz/z =` LOC_DX_MAX
- In TGYRO_ITERATION_METHOD=6, LOC_RELAX=0.1 and LOC_DX_MAX=0.05 are good starting points     


**Internal name**

tgyro_iteration_method

**Default**

1

----

:doc:`Return to list of inputs <inputs>`
