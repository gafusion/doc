BTCCW
-----

**Definition**

Parameter which selects the orientation of the toroidal magnetic field :math:`B_t` relative to the toroidal angle :math:`\varphi`.

**Choices**

- BTCCW = 1: Counter-clockwise when viewed from above the torus - negative :math:`\hat{e}_{\varphi}` for the right-handed coordinate system :math:`(r,\theta,\varphi)`.  Thus, :math:`B_t` is oriented along the negative :math:`\hat{e}_{\varphi}` direction.
- BTCCW = -1: Clockwise when viewed from above the torus - positive :math:`\hat{e}_{\varphi}` for the right-handed coordinate system :math:`(r,\theta,\varphi)`.  Thus, :math:`B_t` is oriented along the positive :math:`\hat{e}_{\varphi}` direction. 

**Comments**
  
- In DIII-D, typically BTCCW = 1.
- When experimental profiles are used (:doc:`PROFILE_MODEL <profile_model>` = 2), the orientiation of BT is inferred from input.profiles.

**Internal name**
  
btccw_in

**Default**

-1

----

:doc:`Return to list of inputs <inputs>`
