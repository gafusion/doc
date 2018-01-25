FLUX-SURFACE-GEOMETRY
=====================

Coordinates
-----------

GYRO uses a right-handed (positively-oriented), field-aligned coordinate system
:math:`(r,\theta,\alpha)` and the Clebsch field representation

.. math::

   \mathbf{B} =\nabla \alpha \times \nabla \psi (r) \; ,

where :math:`\psi` is the poloidal flux divided by :math:`2\pi` and

.. math::
   
    \alpha =\varphi +\nu (r,\theta ) 

is the Clebsch angle. Here, :math:`\varphi` is the **toroidal angle**, oriented as shown
in the figure below, and :math:`\theta` is the **poloidal angle** which increases as one
moves counterclockwise along the flux-surface (shown in blue). The **minor radius**
:math:`r` is in all cases taken to be one-half the width of the flux-surface at
the elevation, :math:`Z_{c}`, of the flux-surface centroid.
   
.. figure:: image/flux_surface.png
	:scale: 100%
	:alt: flux surface
	:align: center

Generalized minor radius
------------------------

The minor radius variable, :math:`r`, used in GYRO is the half-width of the flux surface at
the height, :math:`Z_{c}`, of the centroid:

.. math::
   
   r \doteq \frac{R_{+}-R_{-}}{2} \; .

This definition is valid in all cases; that is, for circular equilibria, as well as for
shaped Grad-Shafranov (Miller) and general equilibrium (see geometry notes for details). 

Generalized major radius
------------------------

The major radius variable, :math:`R_{0}`, used in GYRO is the average of the maximum and
minimum major radius of the flux-surface at the height, :math:`Z_{c}`, of the centroid:

.. math::
   
    R_{0}=\frac{R_{+}+R_{-}}{2} \; .

This definition is valid in all cases; that is, for circular equilibria, as well as for
shaped Grad-Shafranov (Miller) and general equilibrium (see geometry notes for details).

Effective field
---------------

The effective field strength, :math:`B_{\rm {unit}}`, is defined as

.. math::

   B_\mathrm{unit} = \frac{1}{r} \frac{d\chi _{t}}{dr} \; ,

where :math:`\chi _{t}` is the toroidal flux divided by :math:`2\pi`. This gives the
roughly equivalent field that would be obtained if the flux surface was deformed to a circle.

Equilibria
----------

Needs to be updated
