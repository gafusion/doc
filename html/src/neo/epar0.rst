EPAR0
-----

**Definition**

The normalized equilibrium-scale inductive electric field:

.. math::
   {\rm EPAR0} = \left< E_\| B \right> \left( \frac{a e}{T_{\rm norm} B_{\rm unit}} \right)
     
**Comments**
  
- In the neo theory module, the input :math:`\left< E_\| B \right>` is used directly.
- For the DKE, it into the RHS neoclassical source term as
  
  .. math::
     {\rm v_\|} \left< E_\| B \right> \frac{B}{\left< B^2 \right>}
     
- :math:`E_\|` is not presently in input.profiles.  When experimental profiles are used (:doc:`PROFILE_MODEL <profile_model>` = 2), EPAR0 is read from input.neo and is assumed to be radially constant.
- For the Spitzer problem (:doc:`SPITZER_MODEL <spitzer_model>` = 1), use :doc:`EPAR0_SPITZER <epar0_spitzer>` instead.

**Internal name**
  
epar0_in

**Default**

0.0

----

:doc:`Return to list of inputs <inputs>`
