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
   :ref:`neo_out.neo.theory`, "Neoclassical transport coefficients from analytic theory"
   :ref:`neo_out.neo.theory_nclass`, "Neoclassical transport coefficients from the NCLASS code"
   :ref:`neo_out.neo.transport`, "Neoclassical transport coefficients from DKE solve"
   :ref:`neo_out.neo.transport_flux`, "Neoclassical fluxes in GB units from DKE solve"
   :ref:`neo_out.neo.transport_gv`, "Neoclassical fluxes from gyroviscosity"
   :ref:`neo_out.neo.vel`, "Poloidal variation of first-order flows"
   :ref:`neo_out.neo.vel_fourier`, "Poloidal variation of first-order flows (Fourier components)"

Experimental profiles output files
##################################

Produced only if :ref:`neo_profile_model` = 2.  

.. csv-table::    
   :header: "Filename", "Short description"
   :widths: 20, 30

   :ref:`neo_out.neo.transport_exp`, "Neoclassical transport coefficients from DKE solve (in units)"
   :ref:`neo_out.neo.exp_norm`, "Normalizing experimental parameters (in units)"
     

Rotation output files
#####################

Produced only if :ref:`neo_rotation_model` = 2.
 
.. csv-table::    
   :header: "Filename", "Short description"
   :widths: 20, 30

   :ref:`neo_out.neo.rotation`, "Strong rotation poloidal asymmetry parameters"

Subroutine output
######################

When neo is run in subroutine mode, the outputs are contained in a monolithic file named neo_interface.  The NEO subroutine output parameters are as follows:

.. csv-table::    
   :header: "Parameter name", "Short description", "Normalization"
   :widths: 20, 30, 30

   "neo_pflux_dke_out(1:11)", "DKE solve particle flux", ":math:`\Gamma_{\sigma}/(n_{norm} {\rm v}_{norm})`"
   "neo_efluxtot_dke_out(1:11)", "DKE solve energy flux", ":math:`Q_{\sigma}/(n_{norm} {\rm v}_{norm} T_{norm})`"
   "neo_efluxncv_dke_out(1:11)", "DKE solve non-convective energy flux", ":math:`\left(Q_{\sigma}-\omega_0 \Pi_{\sigma}\right)/(n_{norm} {\rm v}_{norm} T_{norm})`"
   "neo_mflux_dke_out(1:11)", "DKE solve momentum flux", ":math:`\Pi_{\sigma}/(n_{norm} T_{norm} a_{norm})`"
   "neo_vpol_dke_out(1:11)", "DKE solve poloidal flow", ":math:`{\rm v}_{\theta,\sigma}(\theta=0)/{\rm v}_{norm}`"
   "neo_vtor_dke_out(1:11)", "DKE solve toroidal flow", ":math:`{\rm v}_{\varphi,\sigma}(\theta=0)/{\rm v}_{norm}`"
   "neo_jpar_dke_out", "DKE solve bootstrap current (parallel)", ":math:`\left< j_{\|} B \right>/(e n_{norm} {\rm v}_{norm} B_{unit})`"
   "neo_jtor_dke_out", "DKE solve bootstrap current (toroidal)",":math:`\left< j_{\varphi} /R \right>/ \left< 1/R \right> / (e n_{norm} {\rm v}_{norm})`"
   "neo_pflux_gv_out(1:11)", "Gyroviscosity particle flux", ":math:`\Gamma_{\sigma}/(n_{norm} {\rm v}_{norm})`"
   "neo_efluxtot_gv_out(1:11)", "Gyroviscosity energy flux", ":math:`Q_{\sigma}/(n_{norm} {\rm v}_{norm} T_{norm})`"
   "neo_efluxncv_gv_out(1:11)", "Gyroviscosity non-convective energy flux", ":math:`\left(Q_{\sigma}-\omega_0 \Pi_{\sigma}\right)/(n_{norm} {\rm v}_{norm} T_{norm})`"
   "neo_mflux_gv_out(1:11)","Gyroviscosity momentum flux",":math:`\Pi_{\sigma}/(n_{norm} T_{norm} a_{norm})`"
   "neo_pflux_thHH_out", "Hinton-Hazeltine ion particle flux", ":math:`\Gamma_{i}/(n_{norm} {\rm v}_{norm})`"
   "neo_eflux_thHHi_out", "Hinton-Hazeltine ion energy flux", ":math:`Q_{i}/(n_{norm} {\rm v}_{norm} T_{norm})`"
   "neo_eflux_thHHe_out", "Hinton-Hazeltine electron energy flux", ":math:`Q_{e}/(n_{norm} {\rm v}_{norm} T_{norm})`"
   "neo_eflux_thCHi_out", "Chang-Hinton ion energy flux", ":math:`Q_{i}/(n_{norm} {\rm v}_{norm} T_{norm})`"
   "neo_pflux_thHS_out(1:11)", "Hirshman-Sigmar particle flux", ":math:`\Gamma_{\sigma}/(n_{norm} {\rm v}_{norm})`"
   "neo_eflux_thS_out(1:11)", "Hirshman-Sigmar energy flux", ":math:`Q_{\sigma}/(n_{norm} {\rm v}_{norm} T_{norm})`"
   "neo_jpar_thS_out", "Sauter bootstrap current (parallel)", ":math:`\left< j_{\|} B \right>/(e n_{norm} {\rm v}_{norm} B_{unit})`"
   "neo_jtor_thS_out", "Sauter bootstrap current (toroidal)",":math:`\left< j_{\varphi} /R \right>/ \left< 1/R \right> / (e n_{norm} {\rm v}_{norm})`"
    "neo_pflux_nclass_out(1:11)", "NCLASS solve particle flux", ":math:`\Gamma_{\sigma}/(n_{norm} {\rm v}_{norm})`"
   "neo_efluxtot_nclass_out(1:11)", "NCLASS solve energy flux", ":math:`Q_{\sigma}/(n_{norm} {\rm v}_{norm} T_{norm})`"
   "neo_vpol_nclass_out(1:11)", "NCLASS solve poloidal flow", ":math:`{\rm v}_{\theta,\sigma}(\theta=0)/{\rm v}_{norm}`"
   "neo_vtor_nclass_out(1:11)", "NCLASS solve toroidal flow", ":math:`{\rm v}_{\varphi,\sigma}(\theta=0)/{\rm v}_{norm}`"
   "neo_jpar_nclass_out", "NCLASS solve bootstrap current (parallel)", ":math:`\left< j_{\|} B \right>/(e n_{norm} {\rm v}_{norm} B_{unit})`"
   
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

Rectangular array of ASCII data:

- rows: :math:`N\_RADIAL`
- cols: :math:`7 + 5 \times N\_SPECIES`

1. :math:`r/a`: normalized midplane minor radius
2. :math:`(\partial \Phi_{0}/\partial r)(a e/T_{norm})`: normalized equilibrium-scale radial electric field
3. :math:`q`: safety factor    
4. :math:`\rho_* = (c \sqrt{m_{norm} T_{norm}})/(e B_{unit} a)`: ratio of Larmor radius of normalizing species to the normalizing length
5. :math:`R_0/a`: normalized flux-surface-center major radius
6. :math:`\omega_0 (a/{\rm v}_{norm})`: normalized toroidal angular frequency
7. :math:`(d \omega_0/dr)(a^2/{\rm v}_{norm})`: normalized toroidal rotation shear

For each species :math:`\sigma`:

8. :math:`n_{\sigma}/n_{norm}`: normalized equilibrium-scale density
9. :math:`T_{\sigma}/T_{norm}`: normalized equilibrium-scale temperature   
10. :math:`a/L_{n\sigma} = -a (d {\rm ln} n_{\sigma}/dr)`: normalized equilibrium-scale density gradient scale length
11. :math:`a/L_{T\sigma} = -a (d {\rm ln} T_{\sigma}/dr)`: normalized equilibrium-scale temperature gradient scale length
12. :math:`\tau_{\sigma\sigma}^{-1} (a/{\rm v}_{norm})`: normalized collision frequency
   
-----

.. ===========================================================================================

.. _neo_out.neo.exp_norm:

out.neo.exp_norm
----------------

**Description**

Normalizing experimental parameters (in units)

**Format**

Rectangular array of ASCII data:

- rows: :math:`N\_RADIAL`
- cols: :math:`7`  

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

Vector of ASCII data:

- :math:`(N\_RADIAL) \times (N\_SPECIES) \times (N\_ENERGY+1) \times (N\_XI+1) \times (N\_THETA`)

-----

.. ===========================================================================================

.. _neo_out.neo.grid:

out.neo.grid
------------

**Description**

Numerical grid parameters

**Format**

Vector of ASCII data:

- :math:`5 + N\_THETA + N\_RADIAL`

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

Rectangular array of ASCII data:

- rows: :math:`N\_RADIAL`
- cols: :math:`N\_THETA`

#. :math:`\frac{e \Phi_{1}(\theta_j)}{T_{norm}}`: first-order electrostatic potential vs. :math:`\theta_j` (j=1...N_THETA)

-----

.. ===========================================================================================

.. _neo_out.neo.rotation:

out.neo.rotation
----------------

**Description**

Strong rotation poloidal asymmetry parameters (normalized)

Define:

- :math:`\Phi_* = \Phi_0 - \Phi_0(\theta=0)`
- :math:`\varepsilon_\sigma = \frac{z_\sigma e}{T_\sigma} - \frac{m_\sigma \omega_0^2}{2 T_\sigma} [R^2 - R^2(\theta=0)]`  
- :math:`e_{0\sigma} = \left< e^{-\varepsilon_\sigma} \right>`
- :math:`e_{1\sigma} = \left< e^{-\varepsilon_\sigma} \frac{z_\sigma e \Phi_*}{T_\sigma} \right>`
- :math:`e_{2\sigma} = a_{norm} \left< e^{-\varepsilon_\sigma} \frac{z_\sigma e}{T_\sigma} \frac{\partial \Phi_*}{\partial r} \right>`
- :math:`e_{3\sigma} = \frac{1}{a_{norm}^2} \left< e^{-\varepsilon_\sigma} [R^2 - R^2(\theta=0)] \right>`
- :math:`e_{4\sigma} =  \frac{1}{a_{norm}} \left< e^{-\varepsilon_\sigma} \frac{\partial [R^2 - R^2(\theta=0)]}{\partial r} \right>`
- :math:`e_{5\sigma} = a_{norm} \left< e^{-\varepsilon_\sigma} \frac{\partial \ln \sqrt{g}}{\partial r} \right> - a_{norm} \left< e^{-\varepsilon_\sigma} \right> \left< \frac{\partial \ln \sqrt{g}}{\partial r} \right>`
- For anisotropic species, all temperatures are interpreted as :math:`T_{\|}`, the total energy is modified by :math:`\varepsilon_\sigma \rightarrow \varepsilon_\sigma + \lambda_{{\rm aniso},\sigma}(r,\theta)`, and we define the additional term :math:`e_{6\sigma} = -a_{norm} \left< e^{-\varepsilon_\sigma} \frac{\partial \lambda_{{\rm aniso},\sigma}}{\partial r} \right>`
- :math:`F_{V\sigma} = \frac{1}{e_{0\sigma}} \left[ -e_{2\sigma} + e_{3\sigma} a_{norm}^3 \frac{\omega_0}{{\rm v}_{t\sigma}} \frac{d \omega_0}{d r} + e_{4\sigma} a_{norm}^2 \frac{\omega_0^2}{2 {\rm v}_{t\sigma}^2} + e_{1\sigma} a_{norm} \frac{d \ln T_{\sigma}}{d r} - e_{3\sigma} a_{norm}^3 \frac{d \ln T_{\sigma}}{d r} \frac{\omega_0^2}{2 {\rm v}_{t\sigma}^2} + e_{5\sigma} + e_{6\sigma} \right]`
  
**Format**

Rectangular array of ASCII data:

- rows: :math:`N\_RADIAL`
- cols: :math:`2 + 2 \times N\_SPECIES + N\_THETA + 2 \times N\_SPECIES \times N\_THETA`

Fixed entries:

1. :math:`r/a`: normalized midplane minor radius
2. :math:`\frac{e \left< \Phi_* \right>}{T_{norm}}`: difference between the flux-surface-averaged equilibrium-scale potential and the value at the outboard midplane (0 in the diamagnetic ordering limit)

For each species :math:`\sigma`:

3. :math:`\frac{1}{e_{0\sigma}} = \frac{n_{\sigma}}{\left< n_{\sigma} \right>}`: ratio of the density at the outboard midplane to the flux-surface-averaged equilibrium-scale density (1 in the diamagnetic ordering limit)
4. :math:`F_{V\sigma}`: Factor related to the transformation of the particle flux convection (presently only valid in :math:`s-\alpha` geometry)

For each :math:`\theta_j`, j=1..N_THETA

5. :math:`\frac{e \Phi_*(\theta_j)}{T_{norm}}`: difference between the equilibrium-scale potential and the value at the outboard midplane (0 in the diamagnetic ordering limit)
6. :math:`\frac{n_{\sigma}(\theta_j)}{n_{\sigma}(\theta=0)}`: poloidal variation of the equilibrium-scale density normalized to the value at the outboard midplane (1 in the diamagnetic ordering limit)
   
-----

.. ===========================================================================================

.. _neo_out.neo.theory:

out.neo.theory
--------------

**Description**

Neoclassical transport coefficients from analytic theory (normalized)

- Only the Hirshman-Sigmar quantities are meaningful for multiple-ion species plasmas.
- None of the theories are valid with strong rotation effects included.  
- Theory references:
  
  - Hinton-Hazltine flows and fluxes: Rev. Mod. Phys., vol. 48, 239 (1976).
  - Chang-Hinton ion heat flux: Phys. Plasmas, vol. 25, 1493 (1982).
  - Taguchi ion heat flux (modified with Chang-Hinton collisional interpolation factor): PPCF, vol. 30, 1897 (1988).
  - Sauter et al. bootstrap current model: Phys. Plasmas, vol. 6, 2834 (1999).
  - Hinton-Rosenbluth potential: Phys. Fluids 16, 836 (1973).
  - Hirshman-Sigmar fluxes: Phys. Fluids, vol. 20, 418 (1977).
  - Koh et al. bootstrap current model: Phys. Plasmas, vol. 19, 072505 (2012).
  
**Format**

Rectangular array of ASCII data:

- rows: :math:`N\_RADIAL`
- cols: :math:`16 + 2 \times N\_SPECIES`

1. :math:`r/a`: normalized midplane minor radius
2. HH :math:`\Gamma_{i}/(n_{norm} {\rm v}_{norm})`: Hinton-Hazeltine second-order radial particle flux (ambipolar)
3. HH :math:`Q_{i}/(n_{norm} {\rm v}_{norm} T_{norm})`: Hinton-Hazeltine second-order radial energy flux (ion)
4. HH :math:`Q_{e}/(n_{norm} {\rm v}_{norm} T_{norm})`: Hinton-Hazeltine second-order radial energy flux (electron)
5. HH :math:`\left< j_{\|} B \right>/(e n_{norm} {\rm v}_{norm} B_{unit})`: Hinton-Hazeltine first-order bootstrap current
6. HH :math:`k_{i}`: Hinton-Hazeltine first-order dimensionless flow coefficient (ion)
7. HH :math:`\left< u_{\|,i} B \right>/({\rm v}_{norm} B_{unit})`: Hinton-Hazeltine first-order parallel flow (ion)
8. HH :math:`{\rm v}_{theta,i}(\theta=0)/{\rm v}_{norm}`: Hinton-Hazeltine first-order poloidal flow at the outboard midplane (ion)
9. CH :math:`Q{i}/(n_{norm} {\rm v}_{norm} T_{norm})`: Chang-Hinton second-order radial energy flux (ion)
10. TG :math:`Q{i}/(n_{norm} {\rm v}_{norm} T_{norm})`: Taguchi second-order radial energy flux (ion)
11. S :math:`\left< j_{\|} B \right>/(e n_{norm} {\rm v}_{norm} B_{unit})`: Sauter first-order bootstrap current
12. S :math:`k_{i}`: Sauter first-order dimensionless flow coefficient (ion)
13. S :math:`\left< u_{\|,i} B \right>/({\rm v}_{norm} B_{unit})`: Sauter first-order parallel flow (ion)
14. S :math:`{\rm v}_{\theta,i}(\theta=0)/{\rm v}_{norm}`: Sauter first-order poloidal flow at the outboard midplane (ion)
15. HR :math: `\left< (e \Phi_1/T_{norm})^2 \right>`: Hinton-Rosenbluth first-order electrostatic potential

16. For each species :math:`\sigma`:
    
    - HS :math:`\Gamma_{\sigma}/(n_{norm} {\rm v}_{norm})`: Hirshman-Sigmar second-order radial particle flux
    - HS :math:`Q_{\sigma}/(n_{norm} {\rm v}_{norm} T_{norm})`: Hirshman-Sigmar second-order radial energy flux
    
18. K :math:`\left< j_{\|} B \right>/(e n_{norm} {\rm v}_{norm} B_{unit})`: Koh first-order bootstrap current
    
-----

.. ===========================================================================================

.. _neo_out.neo.theory_nclass:

out.neo.theory_nclass
---------------------

**Description**

Neoclassical transport coefficients from the NCLASS code (normalized)

- Only produced if :ref:`neo_sim_model` = 1 or 3.
- Note that for local mode (:ref:`neo_profile_model` = 1), it is assumed in the NCLASS calculation that the normalizing mass is the mass of deuterium and that the input collision frequencies are self-consistent across all species.  
- NCLASS reference: W.A. Houlberg, et al, Phys. Plasmas, vol. 4, 3230 (1997).
  
**Format**

Rectangular array of ASCII data:

- rows: :math:`N\_RADIAL`
- cols: :math:`2 + 5 \times N\_SPECIES`

1. :math:`r/a`: normalized midplane minor radius
2. :math:`\left< j_{\|} B \right>/(e n_{norm} {\rm v}_{norm} B_{unit})`: first-order bootstrap current

For each species :math:`\sigma`:

3. :math:`\Gamma_{\sigma}/(n_{norm} {\rm v}_{norm})`: second-order radial particle flux
4. :math:`Q_{\sigma}/(n_{norm} {\rm v}_{norm} T_{norm})`: second-order radial energy flux
5. :math:`\left< u_{\|,\sigma} B \right>/({\rm v}_{norm} B_{unit})`: first-order parallel flow
6. :math:`{\rm v}_{\theta,\sigma}(\theta=0)/{\rm v}_{norm}`: first-order poloidal flow at the outboard midplane
7. :math:`{\rm v}_{\varphi,\sigma}(\theta=0)/{\rm v}_{norm}`: first-order toroidal flow at the outboard midplane   
   
-----

.. ===========================================================================================

.. _neo_out.neo.transport:

out.neo.transport
-----------------

**Description**

Neoclassical transport coefficients from DKE solve (normalized)

**Format**

Rectangular array of ASCII data:

- rows: :math:`N\_RADIAL`
- cols: :math:`5 + 8 \times N\_SPECIES`

1. :math:`r/a`: normalized midplane minor radius
2. :math:`\left< (e \Phi_1/T_{norm} )^2 \right>`: first-order electrostatic potential
3. :math:`\left< j_{\|} B \right>/(e n_{norm} {\rm v}_{norm} B_{unit})`: first-order bootstrap current   
4. :math:`v_{\varphi}^{(0)}(\theta=0)/{\rm v}_{norm}`: zeroth-order toroidal flow at the outboard midplane (:math:`v_{\varphi}^{(0)}=\omega_0 R`)
5. :math:`\left< u_{\|}^{(0)} B \right>/({\rm v}_{norm} B_{unit})`: zeroth-order parallel flow (:math:`u_{\|}^{(0)}=\omega_0 I/B`)

For each species :math:`\sigma`:

6. :math:`\Gamma_{\sigma}/(n_{norm} {\rm v}_{norm})`: second-order radial particle flux
7. :math:`Q_{\sigma}/(n_{norm} {\rm v}_{norm} T_{norm})`: second-order radial energy flux
8. :math:`\Pi_{\sigma}/(n_{norm} T_{norm} a_{norm})`: second-order radial momentum flux
9. :math:`\left< u_{\|,\sigma} B \right>/({\rm v}_{norm} B_{unit})`: first-order parallel flow
10. :math:`k_{\sigma}`: first-order dimensionless flow coefficient 
11. :math:`K_{\sigma}/(n_{norm} {rm v}_{norm}/B_{unit})`: first-order dimensional flow coefficient 
12. :math:`{\rm v}_{\theta,\sigma}(\theta=0)/{\rm v}_{norm}`: first-order poloidal flow at the outboard midplane
13. :math:`{\rm v}_{\varphi,\sigma}(\theta=0)/{\rm v}_{norm}`: first-order toroidal flow at the outboard midplane

-----

.. ===========================================================================================

.. _neo_out.neo.transport_exp:

out.neo.transport_exp
---------------------

**Description**

Neoclassical transport coefficients from DKE solve (in units)

**Format**

Rectangular array of ASCII data:

- rows: :math:`N\_RADIAL`
- cols: :math:`5 + 8 \times N\_SPECIES`

1. :math:`r`: midplane minor radius (:math:`m`)
2. :math:`\left< (\Phi_1)^2 \right>`: first-order electrostatic potential (:math:`V^2`)
3. :math:`\left< j_{\|} B \right>/B_{unit}`: first-order bootstrap current (:math:`A/m^2`)  
4. :math:`v_{\varphi}^{(0)}(\theta=0)`: zeroth-order toroidal flow at the outboard midplane (:math:`v_{\varphi}^{(0)}=\omega_0 R`) (:math:`m/s`)
5. :math:`\left< u_{\|}^{(0)} B \right>/B_{unit}`: zeroth-order parallel flow (:math:`u_{\|}^{(0)}=\omega_0 I/B`) (:math:`m/s`)

For each species :math:`\sigma`:

6. :math:`\Gamma_{\sigma}`: second-order radial particle flux (:math:`e19 m^{-2} s^{-1}`)
7. :math:`Q_{\sigma}`: second-order radial energy flux (:math:`W/m^2`)
8. :math:`\Pi_{\sigma}`: second-order radial momentum flux (:math:`N/m`)
9. :math:`\left< u_{\|,\sigma} B \right>/B_{unit}`: first-order parallel flow (:math:`m/s`)
10. :math:`k_{\sigma}`: first-order dimensionless flow coefficient 
11. :math:`K_{\sigma}`: first-order dimensional flow coefficient (:math:`e19/(m^2 s T)`)
12. :math:`{\rm v}_{\theta,\sigma}(\theta=0)`: first-order poloidal flow at the outboard midplane (:math:`m/s`)
13. :math:`{\rm v}_{\varphi,\sigma}(\theta=0)`: first-order toroidal flow at the outboard midplane (:math:`m/s`)

-----

.. ===========================================================================================

.. _neo_out.neo.transport_flux:

out.neo.transport_flux
----------------------

**Description**

Neoclassical fluxes in GB units from DKE solve

Define:

- :math:`\Gamma_{GB} = \frac{\rho_{s,{\rm unit}}^2}{a^2} n_e c_s`
- :math:`Q_{GB} = \frac{\rho_{s,{\rm unit}}^2}{a^2} n_e c_s T_e`
- :math:`\Pi_{GB} = \frac{\rho_{s,{\rm unit}}^2}{a^2} n_e T_e a`

where :math:`c_s=\sqrt{T_e/m_D}` and :math:`\rho_{s,{\rm unit}}=\frac{c_s}{e B_{\rm unit}/(m_D c)}`
  
**Format**

Rectangular array of ASCII data:

- rows: :math:`N\_RADIAL \times 3 \times N\_SPECIES`
- cols: :math:`3`  

For each species :math:`\sigma`:

1. row of DKE (:math:`\Gamma_{\sigma}/\Gamma_{GB}`, :math:`Q_{\sigma}/Q_{GB}`, :math:`\Pi_{\sigma}/\Pi_{GB}`): second-order radial particle, energy, and momentum fluxes from DKE solve

For each species :math:`\sigma`:

2. row of GV (:math:`\Gamma_{\sigma}/\Gamma_{GB}`, :math:`Q_{\sigma}/Q_{GB}`, :math:`\Pi_{\sigma}/\Pi_{GB}`): second-order radial particle, energy, and momentum fluxes from gyroviscosity

For each species :math:`\sigma`:

3. row of TGYRO (:math:`\Gamma_{\sigma}/\Gamma_{GB}`, :math:`Q_{\sigma}/Q_{GB}`, :math:`\Pi_{\sigma}/\Pi_{GB}`): : second-order radial particle, energy, and momentum fluxes for transport equations

-----

.. ===========================================================================================

.. _neo_out.neo.transport_gv:

out.neo.transport_gv
--------------------

**Description**

Neoclassical fluxes from gyroviscosity (normalized)

- These fluxes are nonzero only for the case of combined sonic rotation with up-down asymmetric flux surfaces.
- In the transport equations, these fluxes should be added to the fluxes from the DKE solve.  
- Reference: H. Sugama and W. Horton, Phys. Plasmas, vol. 4, 405 (1997).

**Format**


Rectangular array of ASCII data:

- rows: :math:`N\_RADIAL`
- cols: :math:`1 + 3 \times N\_SPECIES`

1. :math:`r/a`: normalized midplane minor radius

For each species :math:`\sigma`:

2. :math:`\Gamma_{gv,\sigma}/(n_{norm} {\rm v}_{norm})`: Gyroviscous second-order radial particle flux
3. :math:`Q_{gv,\sigma}/(n_{norm} {\rm v}_{norm})`: Gyroviscous second-order radial energy flux
4. :math:`\Pi_{gv,\sigma}/(n_{norm} T_{norm} a_{norm})`: Gyroviscous second-order radial momentum flux
   
-----

.. ===========================================================================================

.. _neo_out.neo.vel:

out.neo.vel
-----------

**Description**

Poloidal variation of first-order flows (normalized)

**Format**

Rectangular array of ASCII data:

- rows: :math:`N\_RADIAL`
- cols: :math:`N\_SPECIES \times N\_THETA`

For each species :math:`\sigma`:

1. :math:`u_{\|,\sigma}(\theta_j)/{\rm v}_{norm}`: first-order parallel flow vs. :math:`\theta_j` (j=1..N_THETA)

-----

.. ===========================================================================================

.. _neo_out.neo.vel_fourier:

out.neo.vel_fourier
-------------------

**Description**

Poloidal variation of first-order flows (normalized) in Fourier series components

.. math::
   u(\theta) = \sum_{j=0}^{N\_THETA} u_{cj} \cos (j \theta) + u_{sj} \sin (j \theta)

**Format**

Rectangular array of ASCII data:

- rows: :math:`N\_RADIAL`
- cols: :math:`N\_SPECIES \times 6 \times (M\_THETA + 1)` where M_THETA = (N_THETA-1)/2-1

For each species :math:`\sigma`:

1. For j=0..M_THETA, :math:`u_{\|,\sigma,cj}`: cosine-component of first-order parallel flow
2. For j=0..M_THETA, :math:`u_{\|,\sigma,sj}`: sine-component of first-order parallel flow
3. For j=0..M_THETA, :math:`u_{\theta,\sigma,cj}`: cosine-component of first-order poloidal flow
4. For j=0..M_THETA, :math:`u_{\theta,\sigma,sj}`: sine-component of first-order poloidal flow
5. For j=0..M_THETA, :math:`u_{\varphi,\sigma,cj}`: cosine-component of first-order toroidal flow
6. For j=0..M_THETA, :math:`u_{\varphi,\sigma,sj}`: sine-component of first-order toroidal flow
