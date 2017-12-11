LOC_DX
------

**Definition**

Step length, :math:`\Delta z`, used to compute the finite-difference approximation to the Jacobian.

**Comments**

- This can be safely increased for robustness. Root is unchanged.
- This is dimensionless, with :math:`\Delta z = \Delta (a/L_x)`, where :math:`L_x` is any of the gradient scale lengths.

**Internal name**

loc_dx

**Default**

0.1

----

:doc:`Return to list of inputs <inputs>`
