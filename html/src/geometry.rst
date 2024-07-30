.. |exb| mathmacro:: \mathbf{E}\times\mathbf{B}
.. |B| mathmacro:: \mathbf{B}
.. |jp|	mathmacro:: {\mathcal J}_\psi
	     
FLUX-SURFACE GEOMETRY
=====================

Clebsch coordinates
-------------------

GYRO/CGYRO/NEO use a right-handed (positively-oriented), field-aligned coordinate system
:math:`(r,\theta,\alpha)` and the Clebsch field representation :cite:`kruskal:1958`

.. math::

   \B = \nabla\alpha\times\nabla\psi \quad \text{such that} \quad\B\cdot\nabla\alpha = \B\cdot\nabla\psi = 0 


where :math:`\psi` is the poloidal flux divided by :math:`2\pi` and

.. math::
   
    \alpha =\varphi +\nu (r,\theta) 

is the Clebsch angle. Here, :math:`\varphi` is the **toroidal angle**, oriented as shown
in the figure below, and :math:`\theta` is the **poloidal angle** which increases as one
moves counterclockwise along the flux-surface (shown in blue). In these coordinates, the Jacobian is 

.. math::

   \jp \doteq \frac{1}{\nabla\psi\times\nabla\theta\cdot\nabla\alpha} = \frac{1}{\nabla\psi\times\nabla\theta\cdot\nabla\varphi} \; . 

Since the coordinates :math:`(\psi,\theta,\alpha)` and :math:`(\psi,\theta,\varphi)` form right-handed systems, the Jacobian :math:`\jp` is positive-definite.  In the latter coordinates, the magnetic field becomes

.. math::
   \B = \nabla\varphi\times\nabla\psi + \frac{\partial \nu}{\partial \theta} \nabla\theta\times\nabla\psi

Using the definition of the safety factor, :math:`q(\psi)`, we may deduce

.. math::

   q(\psi) \doteq \frac{1}{2\pi} \int_0^{2\pi} \frac{\B\cdot\nabla\varphi}{\B\cdot\nabla\theta} \, d\theta = \frac{1}{2\pi} \int_0^{2\pi} \left( -\frac{\partial \nu}{\partial \theta} \right) \, d\theta = \frac{\nu(\psi,0)-\nu(\psi,2\pi)}{2\pi} \; .

.. math::
   
For concreteness, we choose the following boundary conditions for :math:`\nu`:

.. math::
   \nu(\psi,2\pi) = &~-2\pi \, q(\psi) \; , \\
    \nu(\psi,0)   = &~0 \; .

By writing :math:`\B` in the standard form

.. math::
   
   \B = \nabla\varphi\times\nabla\psi + I(\psi) \nabla\varphi \; ,

we can derive the following integral for :math:`\nu`:

.. math::
   \nu(\psi,\theta) = -I(\psi)\int_0^\theta \jp \left|\nabla\varphi\right|^2 d\theta\; .
   
In the case of concentric (unshifted) circular flux surfaces, one will obtain the approximate result 
:math:`\nu(\psi,\theta) \sim -q(\psi)\theta`.  Finally, we remark that the coordinate systems :math:`(R,Z,\varphi)` and :math:`(r,\theta,\varphi)` are positively oriented.
		
Bounding-box method
-------------------

In the MXH parameterization :cite:`arbon:2020`, we use the bounding-box method to define

* **minor radius** :math:`r`
* **major radius** :math:`R_0`
* **elongation** :math:`\kappa`
* **elevation** :math:`Z_0`

via the flux-surface contour extrema

.. math::
   
    2 r        = & \max_\ell(R) - \min_\ell(R) \; , \\
    2 \kappa r = & \max_\ell(Z) - \min_\ell(Z) \; , \\
    2 R_0      = & \max_\ell(R) + \min_\ell(R) \; , \\
    2 Z_0      = & \max_\ell(Z) + \min_\ell(Z) \; . 

Effective field
---------------

The effective field strength, :math:`B_{\rm {unit}}`, is defined as

.. math::

   B_\mathrm{unit} = \frac{1}{r} \frac{d\chi _{t}}{dr} \; ,

where :math:`\chi _{t}` is the toroidal flux divided by :math:`2\pi`. This gives the
roughly equivalent field that would be obtained if the flux surface was deformed to a circle.

Equilibria
----------

GYRO/CGYRO/NEO can be run using **circular equilibrium** or **shaped Grad-Shafranov equilibrium**.

**(1) Circular equilibrium**

The flux surfaces, which are **not** local G-S equilibria, have the form:

 .. math::

    R(r,\theta) &= R_0 + r \cos \theta \\
    Z(r,\theta) &= r \sin \theta \\

where :math:`\nu(r,\theta) = -q(r) \theta`.

- CGYRO: :ref:`cgyro_equilibrium_model` = 1 
- NEO: :ref:`neo_equilibrium_model` = 0  
  
**(2) Shaped Grad-Shafranov equilibrium**

The flux surfaces, which are local G-S equilibria, have the new MXH3 parameterization :cite:`arbon:2020`:

.. math::

    R(r,\theta) &= R_0(r) + r \cos \theta_R \\
    Z(r,\theta) &= Z_0(r) + \kappa(r) r \sin \theta 

where :math:`\nu(r,\theta)` is computed numerically.  The harmonic angle :math:`\theta_R` is

.. math::

    \theta_R = \theta + c_0(r) + \sum_{n=1}^{3} \left[ c_n(r) \cos n \theta + s_n(r) \sin n \theta \right] 


- :math:`c_n` are *anti-symmetric* moments and :math:`s_n` are *symmetric* moments.
- CGYRO: :ref:`cgyro_equilibrium_model` = 2
- NEO: :ref:`neo_equilibrium_model` = 2 or :ref:`neo_profile_equilibrium_model` = 1
- For experimental profiles, shape parameters are auto-generated from profile data.   

.. figure:: images/mxh.png
	:width: 90 %
	:alt: Shape moments
	:align: center
  
Table of geometry parameters
----------------------------

.. csv-table::
   :header: "Symbol", "input.cgyro parameter", "input.neo parameter", "meaning"
   :widths: 5, 5, 5, 5
	   
	:math:`r/a`, :ref:`cgyro_rmin`, :ref:`neo_rmin_over_a`, minor radius 
	:math:`R_0(r)/a`, :ref:`cgyro_rmaj`, :ref:`neo_rmaj_over_a`, major radius  
	:math:`\partial R_0/\partial r`, :ref:`cgyro_shift`,:ref:`neo_shift`, Shafranov shift 
	:math:`Z_0(r)/a`, :ref:`cgyro_zmag`,:ref:`neo_zmag_over_a`, elevation
	:math:`\partial Z_0/\partial r`, :ref:`cgyro_dzmag`,:ref:`neo_s_zmag`,elevation shift   
	:math:`q`, :ref:`cgyro_q`, :ref:`neo_q`, safety factor
	:math:`s`, :ref:`cgyro_s`, :ref:`neo_shear`, shear
	:math:`\kappa`, :ref:`cgyro_kappa`,:ref:`neo_kappa`, elongation
	:math:`s_\kappa`, :ref:`cgyro_s_kappa`,:ref:`neo_s_kappa`
	:math:`\delta = \sin s_1`, :ref:`cgyro_delta`,:ref:`neo_delta`, triangularity
	:math:`s_\delta`, :ref:`cgyro_s_delta`,:ref:`neo_s_delta`
	:math:`\zeta = -s_2`, :ref:`cgyro_zeta`,:ref:`neo_zeta`, squareness
	:math:`s_\zeta`, :ref:`cgyro_s_zeta`,:ref:`neo_s_zeta`
	:math:`c_0`, :ref:`cgyro_shape_cos0`,:ref:`neo_shape_cos0`, tilt
	:math:`s_{c_0}`, :ref:`cgyro_shape_s_cos0`,:ref:`neo_shape_s_cos0`
	:math:`c_1`, :ref:`cgyro_shape_cos1`,:ref:`neo_shape_cos1`, ovality
	:math:`s_{c_1}`, :ref:`cgyro_shape_s_cos1`,:ref:`neo_shape_s_cos1`
	:math:`c_2`, :ref:`cgyro_shape_cos2`,:ref:`neo_shape_cos2`
	:math:`s_{c_2}`, :ref:`cgyro_shape_s_cos2`,:ref:`neo_shape_s_cos2`
        :math:`c_3`, :ref:`cgyro_shape_cos3`,:ref:`neo_shape_cos3`
	:math:`s_{c_3}`, :ref:`cgyro_shape_s_cos3`,:ref:`neo_shape_s_cos3`
	:math:`s_3`, :ref:`cgyro_shape_sin3`,:ref:`neo_shape_sin3`
	:math:`s_{s_3}`, :ref:`cgyro_shape_s_sin3`,:ref:`neo_shape_s_sin3`   
	:math:`\beta_e`, :ref:`cgyro_betae_unit`, NA
	:math:`\beta_*` scaling, :ref:`cgyro_beta_star_scale`, :ref:`neo_beta_star`
	BTCCW, :ref:`cgyro_btccw`, :ref:`neo_btccw`
	IPCCW, :ref:`cgyro_ipccw`, :ref:`neo_ipccw`
	      
For further information about geometry and normalization conventions, consult the GYRO Technical Guide   :cite:`candy:2010`.

Magnetic field orientation
--------------------------

GACODE uses a right-handed (positively-oriented), field-aligned coordinate system :math:`(r,\theta,\varphi)`, whereas DIII-D uses a (positively-oriented) cylindrical system :math:`(R,\phi,Z)`.  Looking down on the tokamak from above, the orientation of the GACODE toroidal angle is clockwise, whereas the DIII-D toroidal angle is counter-clockwise:

.. figure:: images/Orient_gacode.png
	:scale: 100%
	:alt: flux surface
	:align: center

.. figure:: images/Orient_d3d.png
	:scale: 100%
	:alt: flux surface
	:align: center		

In reality, quantities like the safety factor and poloidal flux have definite signs. Historically, these signs have been suppressed or neglected in both theory and modeling. For proper treatment of momentum transport, however, these signs must be retained. We can infer typically neglected signs by knowing :ref:`cgyro_ipccw` and :ref:`cgyro_btccw`. For example:

- sign(:math:`B_{\rm tor}`) = -BTCCW
- sign(:math:`B_{\rm pol}`) = -IPCCW
- sign(:math:`\psi_{\rm pol}`) = -IPCCW
- sign(:math:`q`) = IPCCW :math:`\times` BTCCW

The standard configuration in DIII-D is shown below.

.. figure:: images/Orient_d3d_standard.png
	:scale: 100%
	:alt: flux surface
	:align: center

This corresponds to :ref:`cgyro_ipccw` = 1 and :ref:`cgyro_btccw` =-1.  Thus, in GACODE coordinates, we expect:

- sign(:math:`B_{\rm tor}`) = 1
- sign(:math:`B_{\rm pol}`) = -1
- sign(:math:`\psi_{\rm pol}`) = -1
- sign(:math:`q`) = -1

 In other words, the safety factor and poloidal flux are negative in the typical case. This will be reflected in a properly-constructed :doc:`input.gacode <input_gacode>` file. 

Toroidal and poloidal flux
--------------------------

We can start from the general forms of the toroidal and poloidal fluxes :cite:`dhaeseleer:1991`

.. math::
   \Psi_t \doteq &~\iint\limits_{S_t} \B \cdot d{\bf S} = \frac{1}{2\pi} \iiint\limits_{V_t} \B \cdot \nabla\varphi \, dV \; , \\
   \Psi_p \doteq &~\iint\limits_{S_p} \B \cdot d{\bf S} = \frac{1}{2\pi} \iiint\limits_{V_p} \B \cdot \nabla\theta \, dV \; .

Explicitly inserting the field-aligned coordinate system of the previous section, and differentiating these with respect to :math:`\psi`, gives

.. math::
   \frac{d\Psi_t}{d\psi} = &~\frac{1}{2\pi} \int_0^{2\pi} d\varphi \int_0^{2\pi} d\theta \,\, \B\cdot\nabla\varphi \, \jp \; , \\
   = &~\frac{1}{2\pi} \int_0^{2\pi} d\varphi \int_0^{2\pi} d\theta \,\, \frac{\B\cdot\nabla\varphi}{\B\cdot\nabla\theta} \; , \\
   = &~2 \pi \, q(\psi) \; ,

.. math::
   \frac{d\Psi_p}{d\psi} = &~\frac{1}{2\pi} \int_0^{2\pi} d\varphi \int_0^{2\pi} d\theta 
  \,\, \B\cdot\nabla\theta \, \jp \; , \\
   = &~\frac{1}{2\pi} \int_0^{2\pi} d\varphi \int_0^{2\pi} d\theta \; , \\
   = &~2 \pi \; .

Thus, :math:`\psi` is the poloidal flux divided by :math:`2\pi`.  For this reason, it is useful to also define the toroidal flux divided by :math:`2\pi`:

.. math::
   \chi_t \doteq \frac{1}{2\pi} \Psi_t\; .

According to these conventions, 

.. math::
   d\Psi_t = q \, d\Psi_p \quad \mbox{and} \quad d\chi_t = q \, d\psi \; .
