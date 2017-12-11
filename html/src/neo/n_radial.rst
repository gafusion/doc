N_RADIAL
--------

**Definition**

The number of radial gridpoints, :math:`n_r` in the computational domain.

**Comments**
  
- The radial grid is defined on the range :doc:`RMIN_OVER_A <rmin_over_a>`
  :math:`\le r/a \le` :doc:`RMIN_OVER_A_2 <rmin_over_a_2>`.  For a local simulation (:doc:`PROFILE_MODEL <profile_model>` = 1), the normalizing length scale :math:`a` is arbitrary.  For a global simulation (:doc:`PROFILE_MODEL <profile_model>` = 2), :math:`a` is the plasma minor radius at the center of the radial simulation domain.
- N_RADIAL > 1 requires a global profile model (:doc:`PROFILE_MODEL <profile_model>` = 2).  Otherwise, N_RADIAL = 1 and the profile model is local (:doc:`PROFILE_MODEL <profile_model>` = 1).
- For solution of only the first-order DKE, which is a radially-local problem, the radial grid is equally-spaced.
  
**Internal name**
  
n_radial

**Default**

1

