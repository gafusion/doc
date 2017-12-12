LOC_RESIDUAL_METHOD
-------------------

**Definition**

Formula for residual (error) in TGYRO root finding.

**Choices**

- LOC_RESIDUAL_METHOD=2: :math:`\displaystyle \sum_p \left|f_p-f^\mathrm{target}_p\right|` 
- LOC_RESIDUAL_METHOD=3: :math:`\displaystyle \sum_p (f_p-f^\mathrm{target}_p)^2` 

**Comments**

- This parameter only affects LOC_ITERATION_METHOD=4,5.
- It does **not** affect :doc:`TGYRO_ITERATION_METHOD <tgyro_iteration_method>` = 1 because each residual is minimized independently.
- The total residual is renormalized in method 3 to make the value comparable to method 2.

**Internal name**

loc_residual_method

**Default**

2

----

:doc:`Return to list of inputs <inputs>`
