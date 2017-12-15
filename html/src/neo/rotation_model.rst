ROTATION_MODEL
---------------

**Definition**

Parameter which selects whether to solve the DKE in the diamagnetic ordering limit or in the sonic toroidal rotation ordering limit.
     
**Choices**
  
- ROTATION_MODEL = 1: sonic rotation effects not included (diamagnetic ordering assumed)
- ROTATION_MODEL = 2: sonic rotation effects included (solves the Hinton-Wong generalized DKE which allows for flow speeds on the order of the thermal speed).
  
  - The toroidal rotation frequency :doc:`OMEGA_ROT <omega_rot>` and the toroidal rotation shear :doc:`OMEGA_ROT_DERIV <omega_rot_deriv>` must be specified.

**Internal name**

rotation_model

**Default**

1

----

:doc:`Return to list of inputs <inputs>`
