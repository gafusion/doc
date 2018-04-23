Equations solved in TGYRO
~~~~~~~~~~~~~~~~~~~~~~~~~

Below we write the most general form of the transport equations solved by TGYRO.  The
calculation chain in NEO-CGYRO-TGYRO is a faithful representation of the comprehensive
transport theory of Sugama :cite:`sugama:1998`.  This paper is *required reading* for a
detailed understanding of the theoretical foundations of GACODE.  Below we summarize
Sugama's form of the transport equations, with some practical simplifications and
notational differences.

Density Transport
-----------------

.. math::
   
   \frac{\partial \langle n_a \rangle}{\partial t} +
   \frac{1}{V^\prime}\frac{\partial}{\partial r} \left( V^\prime \Gamma_a \right)
   = S_{n,a} \; ,

where

.. math::

   S_{n,a} = S_{n,a}^{\rm beam} + S_{n,a}^{\rm wall} \; ,

and 

.. math::

   \Gamma_a = \Gamma_a^{\rm neo} + \Gamma_a^{\rm tur} \; .


.. csv-table:: **Density fluxes and sources**
   :header: "Variable", "Definition", "TGYRO unit"
   :widths: 13, 25, 5
	 
   ":math:`\Gamma_a^{\rm neo}`", Neoclassical particle flux, ":math:`1/s/cm^2`"
   ":math:`\Gamma_a^{\rm tur}`", Turbulent particle flux, ":math:`1/s/cm^2`"
   ":math:`S_{n,a}^{\rm beam}`", Beam density source rate,":math:`1/s/cm^3`"
   ":math:`S_{n,a}^{\rm wall}`", Wall density source rate,":math:`1/s/cm^3`"

	 
Energy Transport
----------------

.. math::
   \frac{\partial \langle W_a \rangle}{\partial t} + \
   \frac{1}{V^\prime}\frac{\partial}{\partial r} \left( V^\prime Q_a \right) +
   \Pi_a \frac{\partial \omega_0}{\partial\psi} = S_{W,a} \; ,

where

.. math::
   S_{W,a} = S_{W,a}^{\rm aux} + S_{W,a}^{\rm rad} + S_{W,a}^{\alpha} +
   S_{W,a}^{\rm tur} + S_{W,a}^{\rm col} \; ,

and

.. math::
   Q_a = Q_a^{\rm neo} + Q_a^{\rm tur} \; .


.. csv-table:: **Energy fluxes and sources**
   :header: "Variable", "Definition", "TGYRO unit"
   :widths: 13, 25, 5

   ":math:`Q_a^{\rm neo}`", Neoclassical energy flux, ":math:`erg/s/cm^2`" 
   ":math:`Q_a^{\rm tur}`", Turbulent energy flux, ":math:`erg/s/cm^2`"
   ":math:`S_{W,a}^{\rm aux}`", Auxiliary heating power density, ":math:`erg/s/cm^3`"
   ":math:`S_{W,a}^{\rm rad}`", Radiation heating power density, ":math:`erg/s/cm^3`"
   ":math:`S_{W,a}^{\alpha}`", Alpha heating power density, ":math:`erg/s/cm^3`"
   ":math:`S_{W,a}^{\rm tur}`", Turbulent exchange power density, ":math:`erg/s/cm^3`"
   ":math:`S_{W,a}^{\rm col}`", Collisional exchange power density, ":math:`erg/s/cm^3`"

Momentum Transport
------------------

.. math::
   \frac{\partial}{\partial t} \left( \omega_0 \langle R^2 \rangle \sum_a m_a n_a \right)
   + \frac{1}{V^\prime}\frac{\partial}{\partial r} \left( V^\prime \sum_a \Pi_a \right)
     = \sum_a S_{\omega,a} \; ,

and

.. math::
   \Pi_a = \Pi_a^{\rm neo} + \Pi_a^{\rm tur} \; .


.. csv-table:: **Momentum fluxes and sources**
   :header: "Variable", "Definition", "TGYRO unit"
   :widths: 13, 25, 5

   ":math:`\Pi_a^{\rm neo}`", Neoclassical angular momentum flux, ":math:`erg/cm^2`"
   ":math:`\Pi_a^{\rm tur}`", Turbulent angular momentum flux, ":math:`erg/cm^2`"
   ":math:`S_{\omega,a}`", Angular momentum density source rate, ":math:`erg/cm^3`"
