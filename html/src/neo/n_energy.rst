N_ENERGY
--------

**Definition**

The number of energy polynomials -  1 in the computational domain (:math:`n_{\varepsilon,\rm total}` = N_ENERGY+1).

**Comments**

- The velocity-space coordinate :math:`x_a` is the normalized velocity: :math:`x_a = \sqrt{\varepsilon} = {\rm v}/(\sqrt{2}{\rm v}_{ta})`.
- NEO uses an expansion of associated Laguerre polynomials in :math:`x_a`, which is coupled with the Legendre expansion in :math:`\xi`: :math:`P_l(\xi) L_m^{k(l)+1/2}(x_a^2)x_a^{k(l)}`, where :math:`k(l)=0` for Legendre index :math:`l=0` and :math:`k(l)=1` for Legendre index :math:`l>0`.
- The collocation integrals are formed from the monomial basis elements, :math:`x_a^{2m+k(l)}`, which can be written in terms of Gamma and Beta functions.
  
**Internal name**
  
n_energy

**Default**

6

----

:doc:`Return to list of inputs <inputs>`
