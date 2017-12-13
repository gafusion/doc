PROFILE_ERAD0_MODEL
-------------------

**Definition**

Parameter which selects whether to include :math:`E_r^{(0)}` for experimental profiles.

**Choices**

- PROFILE_ERAD0_MODEL = 0: :math:`E_r^{(0)}` is set to zero regardless of the value in input.profiles.
- PROFILE_ERAD0_MODEL = 1: :math:`E_r^{(0)}` as specified in input.profiles is used.

**Comments**

- Used only for experimental profiles (:doc:`PROFILE_MODEL <profile_model>` = 2).
- If sonic rotation effects are included (:doc:`ROTATION_MODEL <rotation_model>` = 2) with experimental profiles, then this parameter is ignored and :math:`E_r^{(0)}` is assumed to be zero. This means that the :math:`E_r^{(0)}` in input.profiles is assumed to be the lowest-order field in sonic rotation theory, i.e. :math:`E_r^{(-1)}`,and is used to compute the lowest-order sonic toroidal rotation parameters, :doc:`OMEGA_ROT <omega_rot>` and :doc:`OMEGA_ROT_DERIV <omega_rot_deriv>`.

**Internal name**
  
profile_erad0_model

**Default**

1

----

:doc:`Return to list of inputs <inputs>`
