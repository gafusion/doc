****************
NEO Output Files
****************

NEO output files are produced only if :ref:`neo_silent_flag` = 0.

All NEO runtime information is written to out.neo.run.

Standard output files
#####################

.. csv-table:: 
   :header: "Filename", "Short description"
   :widths: 20, 30

   :ref:`neo_out.neo.equil`, "Equilibrium/geometry input data"
   :ref:`neo_out.neo.f`, "First-order distribution function"
   :ref:`neo_out.neo.grid`, "Numerical grid parameters"
   :ref:`neo_out.neo.phi`, "Poloidal variation of first-order es potential"
   :ref:`neo_out.neo.theory`, ""
   :ref:`neo_out.neo.theory_nclass`, ""
   :ref:`neo_out.neo.transport`, "Neoclassical transport coefficients"
   :ref:`neo_out.neo.transport_flux`, ""
   :ref:`neo_out.neo.transport_gv`, ""
   :ref:`neo_out.neo.vel`, ""
   :ref:`neo_out.neo.vel_fourier`, ""

Experimental profiles output files
##################################

Produced only if :ref:`neo_profile_model` = 2.  

.. csv-table::    
   :header: "Filename", "Short description"
   :widths: 20, 30

   :ref:`neo_out.neo.transport_exp`, ""
   :ref:`neo_out.neo.exp_norm`, "Normalizing experimental parameters (in units)"
     

Rotation output files
#####################

Produced only if :ref:`neo_rotation_model` = 2.
 
.. csv-table::    
   :header: "Filename", "Short description"
   :widths: 20, 30

   :ref:`neo_out.neo.rotation`, ""

Subroutine output
######################

When neo is run in subroutine mode, the outputs are contained in a monolithic file named neo_interface.  The NEO subroutine output parameters are as follows:

------------------------------------------------------------------

Detailed description of NEO output files
#########################################

.. ===========================================================================================

.. _neo_out.neo.equil:

out.neo.equil
-------------

**Description**

Equilibrium/geometry input data

**Format**

Rectangular array of ASCII data: :math:`(N\_RADIAL) \times (7+5*N\_SPECIES`)

1. :math:`r/a`: normalized midplane minor radius
2. :math:`(\partial \Phi_{0}/\partial r)(a e/T_{norm})`: normalized equilibrium-scale radial electric field
3. :math:`q`: safety factor    
4. :math:`\rho_* = (c \sqrt{m_{norm} T_{norm}})/(e B_{unit} a)`: ratio of Larmor radius of normalizing species to the normalizing length
5. :math:`R_0/a`: normalized flux-surface-center major radius
6. :math:`\omega_0 (a/{\rm v}_{norm})`: normalized toroidal angular frequency
7. :math:`(d \omega_0/dr)(a^2/{\rm v}_{norm})`: normalized toroidal rotation shear

For each species :math:`\sigma`:

8. :math:`n_{0\sigma}/n_{norm}`: normalized equilibrium-scale density
9. :math:`T_{0\sigma}/T_{norm}`: normalized equilibrium-scale temperature   
10. :math:`a/L_{n\sigma} = -a (d {\rm ln} n_{0,sigma}/dr)`: normalized equilibrium-scale density gradient scale length
11. :math:`a/L_{T\sigma} = -a (d {\rm ln} T_{0,sigma}/dr)`: normalized equilibrium-scale temperature gradient scale length
12. :math:`\tau_{\sigma\sigma}^{-1} (a/{\rm v}_{norm})`: normalized collision frequency
   
-----

.. ===========================================================================================

.. _neo_out.neo.exp_norm:

out.neo.exp_norm
----------------

**Description**

Normalizing experimental parameters (in units)

**Format**

Rectangular array of ASCII data: :math:`7 \times (N\_RADIAL)`

1. :math:`r/a`: normalized midplane minor radius
2. :math:`a`: normalizing length (m)
3. :math:`m_{norm}`: normalizing mass (e-27 kg)
4. :math:`n_{norm}`: normalizing equilibrium-scale density (e19/m^3)   
5. :math:`T_{norm}`: normalizing equilibrium-scale temperature (keV)
6. :math:`{\rm v}_{norm}`: normalizing thermal speed (m/s) 
7. :math:`B_{unit}`: normalizing magnetic field (T)

-----

.. ===========================================================================================

.. _neo_out.neo.f:

out.neo.f
---------

**Description**

First-order distribution function solution (dimensionless), specifically vector of :math:`\hat{g}_{a,ie,ix,it}` (first-order non-adiabatic distribution function for each species :math:`a`), where

.. math::
   g_{a}(r,\theta,x_{a},\xi) = f_{0a}(r,\theta,x_a) \sum_{ie=0}^{N\_ENERGY} \sum_{ix=0}^{N\_XI} L_{ie}^{k(ix)+1/2}(x_a^2) P_{ix}(\xi) \hat{g}_{a,ie,ix,it}(\theta)

where :math:`f_{0a}` is the zeroth-order distribution function (Maxwellian), :math:`L_{ie}` are associated Laguerre polynomials and :math:`P_{ix}` are Legendre polynomials, :math:`k(ix)=0` for ix=0 and :math:`k(ix)=1` for ix>0, :math:`\xi={\rm v}/{\rm v}_{\|}` is the cosine of the pitch angle, and :math:`x_a = {\rm v}/\sqrt{2 {\rm v}_{ta}}` is the normalized energy.
   
**Format**

Vector of ASCII data: :math:`(N\_RADIAL) \times (N\_SPECIES) \times (N\_ENERGY+1) \times (N\_XI+1) \times (N\_THETA`)

-----

.. ===========================================================================================

.. _neo_out.neo.grid:

out.neo.grid
------------

**Description**

Numerical grid parameters

**Format**

Vector of ASCII data: :math:`5 + N\_THETA + N\_RADIAL`

1. :math:`N\_SPECIES`: number of kinetic species
2. :math:`N\_ENERGY`: number of energy polynomials   
3. :math:`N\_XI`: number of :math:`\xi={\rm v}/{\rm v}_{\|}` (cosine of pitch angle) polynomials  
4. :math:`N\_THETA`: number of theta gridpoints
5. :math:`\theta_j`: theta gridpoints (j=1..N_THETA)
6. :math:`N\_RADIAL`: number of radial gridpoints
7. :math:`r_j/a`: normalized radial gridpoints (j=1..N_RADIAL)
   
-----

.. ===========================================================================================

.. _neo_out.neo.phi:

out.neo.phi
-----------

**Description**

Neoclassical first-order electrostatic potential (normalized) vs. :math:`\theta`

**Format**

Rectangular array of ASCII data: :math:`(N\_RADIAL) \times (N\_THETA`)

#. :math:`\frac{e \Phi_{1}}{T_{norm}}(\theta_j)`: first-order electrostatic potential vs. :math:`\theta_j` (j=1...N_THETA)

-----

.. ===========================================================================================

.. _neo_out.neo.rotation:

out.neo.rotation
----------------

**Description**

**Format**

-----

.. ===========================================================================================

.. _neo_out.neo.theory:

out.neo.theory
--------------

**Description**

**Format**

-----

.. ===========================================================================================

.. _neo_out.neo.theory_nclass:

out.neo.theory_nclass
---------------------

**Description**

**Format**

-----

.. ===========================================================================================

.. _neo_out.neo.transport:

out.neo.transport
-----------------

**Description**

Neoclassical transport coefficients (normalized)

**Format**

Rectangular array of ASCII data: :math:`(N\_RADIAL) \times (5 + 8*N\_SPECIES`)

1. :math:`r/a`: normalized midplane minor radius
2. :math:`\left< (e \Phi_1/T_{norm} )^2 \right>`: first-order electrostatic potential
3. :math:`\left< j_{\|} B \right>/(e n_{norm} {\rm v}_{norm} B_{unit})`: first-order bootstrap current   
4. :math:`v_{\varphi}^{(0)}(\theta=0)/{\rm v}_{norm}`: zeroth-order toroidal flow at the outboard midplane (:math:`v_{\varphi}^{(0)}=\omega_0 R`)
5. :math:`\left< u_{\|}^{(0)} B \right>/({\rm v}_{norm} B_{unit})`: zeroth-order parallel flow (:math:`u_{\|}^{(0)}=\omega_0 I/B`)

For each species :math:`\sigma`:

6. :math:`\Gamma_{\sigma}/(n_{norm} {\rm v}_{norm})`: zecond-order radial particle flux
7. :math:`Q{\sigma}/(n_{norm} {\rm v}_{norm})`: zecond-order radial energy flux
8. :math:`\Pi_{\sigma}/(n_{norm} {\rm v}_{norm})`: zecond-order radial momentum flux
9. :math:`\left< u_{\|,\sigma} B \right>/({\rm v}_{norm} B_{unit})`: first-order parallel flow
10. :math:`k_{\sigma}`: first-order dimensionless flow coefficient 
11. :math:`K_{\sigma}/(n_{norm} {rm v}_{norm}/B_{unit})`: first-order dimensional flow coefficient 
12. :math:`{\rm v}_{theta,\sigma}(\theta=0)/{\rm v}_{norm}`: first-order poloidal flow at the outboard midplane
13. :math:`{\rm v}_{\varphi,\sigma}(\theta=0)/{\rm v}_{norm}`: first-order toroidal flow at the outboard midplane

-----

.. ===========================================================================================

.. _neo_out.neo.transport_exp:

out.neo.transport_exp
---------------------

**Description**

**Format**

-----

.. ===========================================================================================

.. _neo_out.neo.transport_flux:

out.neo.transport_flux
----------------------

**Description**

**Format**

-----

.. ===========================================================================================

.. _neo_out.neo.transport_gv:

out.neo.transport_gv
--------------------

**Description**

**Format**

-----

.. ===========================================================================================

.. _neo_out.neo.vel:

out.neo.vel
-----------

**Description**

**Format**

-----

.. ===========================================================================================

.. _neo_out.neo.vel_fourier:

out.neo.vel_fourier
-------------------

**Description**

**Format**
