IPCCW
-----

**Definition**

Parameter which selects the orientation of the plasma current (and thus the poloidal magnetic field :math:`B_p`) relative to the toroidal angle :math:`\varphi`.

**Choices**

- IPCCW = 1: Counter-clockwise when viewed from above the torus - negative :math:`\hat{e}_{\varphi}` for the right-handed coordinate system :math:`(r,\theta,\varphi)`.  Thus, :math:`B_p` is oriented along the negative :math:`\hat{e}_{\varphi}` direction.
- IPCCW = -1: Clockwise when viewed from above the torus - positive :math:`\hat{e}_{\varphi}` for the right-handed coordinate system :math:`(r,\theta,\varphi)`.  Thus, :math:`B_p` is oriented along the positive :math:`\hat{e}_{\varphi}` direction. 

**Comments**
  
- In DIII-D, typically IPCCW = 1.
- When experimental profiles are used (:doc:`PROFILE_MODEL <profile_model>` = 2), the orientiation of IP is inferred from input.profiles.

**Internal name**
  
ipccw_in

**Default**

-1

----

:doc:`Return to list of inputs <inputs>`
