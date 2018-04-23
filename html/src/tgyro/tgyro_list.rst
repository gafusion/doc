TGYRO input alphabetical list
=============================

----

.. ===========================================================================================

.. _tgyro_loc_dx:

LOC_DX
------

**Definition**

Step length, :math:`\Delta z`, used to compute the finite-difference approximation to the Jacobian.

**Comments**

- This can be safely increased for robustness. Root is unchanged.
- This is dimensionless, with :math:`\Delta z = \Delta (a/L_x)`, where :math:`L_x` is any of the gradient scale lengths.

**Default**

0.1

----

.. ===========================================================================================

.. _tgyro_loc_dx_max:

LOC_DX_MAX
----------

**Definition**

Maximum length, :math:`\Delta z_\mathrm{max}`, of any Newton step.

**Comments**

- This should probably always be smaller than unity.
- This is dimensionless, with :math:`\Delta z = \Delta (a/L_x)`, where :math:`L_x` is any of the gradient scale lengths.

**Default**

1.0

----

.. ===========================================================================================

.. _tgyro_iteration_method:

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

  \frac{dz}{z} = -\mathrm{LOC\_RELAX} \, \frac{Q_\mathrm{tot} -
  Q_\mathrm{target}}{\max(|Q_\mathrm{tot}|,|Q_\mathrm{target}|,1)}

  .. math::

- In TGYRO_ITERATION_METHOD=6, if :math:`dz/z >` LOC_DX_MAX, then :math:`dz/z =` LOC_DX_MAX
- In TGYRO_ITERATION_METHOD=6, LOC_RELAX=0.1 and LOC_DX_MAX=0.05 are good starting points     

**Default**

1

----

.. ===========================================================================================

.. _tgyro_loc_relax:

LOC_RELAX
---------

**Definition**

Parameter :math:`C_\eta` controlling shrinkage of relaxation parameter.

**Comments**

- No effect if less than or equal to unity.
- Only controls the behaviour of :doc:`TGYRO_ITERATION_METHOD <tgyro_iteration_method>` = 1.
- Experience shows that LOC_RELAX=2.0 is a good choice (default).

**Default**

2.0

----

.. ===========================================================================================

.. _tgyro_loc_restart_flag:

LOC_RESTART_FLAG
----------------

**Definition**

TGYRO startup control (new or restart). 

**Choices**

- LOC_RESTART_FLAG=0: New simulation.
- LOC_RESTART_FLAG=1: Continue running based on last iteration.

**Default**

0

----
