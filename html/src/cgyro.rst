CGYRO
=====

CGYRO is a multi-species spectral gyrokinetic solver with sonic rotation capability.  
Over the last decade the fusion community has focused its modeling efforts
primarily on the core region. A popular kinetic code used for this purpose
was GYRO :cite:`candy:2003,candy:2003b,candy:2004a,candy:2010`.
Thousands of nonlinear
simulations with GYRO have informed the fusion community's understanding of
core plasma turbulence :cite:`kinsey:2005,kinsey:2006,kinsey:2007,howard:2016b`
and provided a *transport database* for the calibration of reduced transport models
such as TGLF :cite:`staebler:2007`.  GYRO was the first global electromagnetic solver,
and pioneered the development of numerical algorithms for the GK equations
with kinetic electrons.  It is formulated in real space and like all global solvers
requires *ad hoc* absorbing-layer boundary conditions when simulating cases
with profile variation.  This approach is suitable for core turbulence simulations,
which cover a large radial region and are dominated by low wavenumbers.  More recently,
as the understanding of core transport has become increasingly complete, the cutting
edge of research moved radially toward the pedestal region, where plasmas are
characterized by larger collisionality and steeper pressure gradients that
greatly modify the turbulent phenomena at play. This motivated the development,
from scratch, of the CGYRO code :cite:`candy:2016,belli:2017,candy:2018,belli:2018`
to complement GYRO.  CGYRO is an Eulerian GK solver specifically designed and
optimized for **collisional, electromagnetic, multiscale simulation**.
A key algorithmic aspect of CGYRO is the **radially spectral formulation**
used to reduce the complicated integral gyroaveraging kernel into a
multiplication in wavenumber space, but retaining the ability to treat profile
variation important for edge plasmas.  A new coordinate system that is more
suitable for the highly collisional and shaped edge regime was adopted from
the NEO code :cite:`belli:2008,belli:2012`, which is the community standard for
calculation of collisional transport in toroidal geometry.

Data input and output
---------------------

The primary CGYRO input file is :doc:`input.cgyro <cgyro/inputs>`.  Profile data can be optionally captured from  :doc:`input.profiles <input_profiles>`.  Finally, there is a description of :doc:`output data <cgyro/outputs>`.

Normalization
-------------

.. csv-table:: **CGYRO Normalization**
   :header: "Quantity", "Unit", "Description"
   :widths: 16, 12, 20	 

   length, :math:`a`, minor radius
   mass, :math:`m_\mathrm{D}`, deuterium mass :math:`3.345\times 10^{24} g`
   density, :math:`n_e`, electron density
   temperature, :math:`T_e`, electron temperature 
   velocity, :math:`c_s = \sqrt{T_e/m_\mathrm{D}}`, deuterium sound speed
   time, :math:`a/c_s`, minor radius over sound speed

