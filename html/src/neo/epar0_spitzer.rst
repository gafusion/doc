EPAR0_SPITZER
-------------

**Definition**

The normalized equilibrium-scale inductive electric field for use in the Spitzer problem:

.. math::
   {\rm EPAR0} = E_\varphi \left( \frac{a e}{T_{\rm norm}} \right)
     
**Comments**
  
- For the DKE, we assume that :math:`E_\varphi` is independent of :math:`\theta`, such that :math:`{\rm v}_\| {\rm EPAR0} = {\rm v}_\| {\rm EPAR0\_SPITZER}`.
- This parameter is used only for the Spitzer problem (:doc:`SPITZER_MODEL <spitzer_model>` = 1).  For the standard neoclassical problem, use :doc:`EPAR0 <epar0>` instead.

**Internal name**
  
epar0_spitzer_in

**Default**

1.0

----

:doc:`Return to list of inputs <inputs>`
