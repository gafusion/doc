CGYRO input alphabetical list
=============================

----

.. ===========================================================================================

.. _cgyro_delta:

DELTA
-----

**Definition**

Average triangularity, :math:`\delta`, of the flux surface:

.. math::
   \delta = \frac{\delta_{+} + \delta_{-}}{2}

where :math:`\delta_{+}` is the upper triangularity and :math:`\delta_{-}` is the lower triangularity.   
   
**Comments**
  
- This is only active with :doc:`EQUILIBRIUM_MODEL <equilibrium_model>` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:doc:`PROFILE_MODEL <profile_model>` = 2), the triangularity as a function of radius is read from input.profiles.

**Default**

0.0

----

.. ===========================================================================================

.. _cgyro_kappa:

KAPPA
-----

**Definition**

Elongation, :math:`\kappa`, of the flux surface.
     
**Comments**
  
- This is only active with :doc:`EQUILIBRIUM_MODEL <equilibrium_model>` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:doc:`PROFILE_MODEL <profile_model>` = 2), the elongation as a function of radius is read from input.profiles.

**Default**

1.0

----

.. ===========================================================================================

.. _cgyro_nu_ee:

NU_EE
-----

**Definition**

Electron-electron collision frequency :math:`\nu_{ee}`, in units of :math:`c_s/a`.

.. math::
   \nu_{ee} = \frac{4\pi n_e e^4}{(2T_e)^{3/2} m_e^{1/2}} \,\log\Lambda \; .
  
**Comments**
  
- All ion collision rates are self-consistently determined from ``NU_EE``.

**Default**

0.1

----

.. ===========================================================================================

.. _cgyro_s:

S
-

**Definition**

Magnetic shear, :math:`s`, of the flux surface:

.. math::
   s = \frac{r}{q} \frac{\partial q}{\partial r}
     
**Comments**

- This is only active with :doc:`EQUILIBRIUM_MODEL <equilibrium_model>` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:doc:`PROFILE_MODEL <profile_model>` = 2), the safety factor as a function of radius is read from input.profiles and the safety factor gradient is computed internally.
  
**Default**

1.0


.. ===========================================================================================
   
.. _cgyro_q:

Q
-

**Definition**

Safety factor, :math:`q`, of the flux surface:
     
**Comments**

- This is only active with :doc:`EQUILIBRIUM_MODEL <equilibrium_model>` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:doc:`PROFILE_MODEL <profile_model>` = 2), the safety factor as a function of radius is read from input.profiles and the safety factor gradient is computed internally.
  
**Default**

2.0

----

.. ===========================================================================================

.. _cgyro_shift:

SHIFT
-----

**Definition**

Shafranov shift, :math:`\Delta`, of the flux surface:

.. math::
       \Delta = \frac{\partial R_0}{\partial r}
     
**Comments**
  
- This is only active with :doc:`EQUILIBRIUM_MODEL <equilibrium_model>` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:doc:`PROFILE_MODEL <profile_model>` = 2), the flux-surface-center major radius as a function of radius, :math:`R_0(r)`,  is rea
d from input.profiles and its derivative is computed internally.

**Default**

0.0

----

.. ===========================================================================================

.. _cgyro_z:

Z_*
---

**Definition**

Species charge.  First species charge is ``Z_1``, and so on.

**Comments**

- A typical case (deuterium, carbon, electrons) would be ``Z_1=1``, ``Z_2=6``, ``Z_3=-1``.
     
**Default**

1

----

.. ===========================================================================================

.. _cgyro_zeta:

ZETA
----

**Definition**

Squareness, :math:`\zeta`, of the flux surface.
     
**Comments**
  
- This is only active with :doc:`EQUILIBRIUM_MODEL <equilibrium_model>` = 2 (the Miller equilibrium model).
- When experimental profiles are used (:doc:`PROFILE_MODEL <profile_model>` = 2), the squareness as a function of radius is read from input.profiles.

**Default**

0.0

----

:doc:`Return to table of inputs <inputs>`
