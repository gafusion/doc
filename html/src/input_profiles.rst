.. _input.profiles:

input.profiles
==============

.. |ip| replace:: :doc:`input.profiles <input_profiles>`
.. |ipg| replace:: :doc:`input.profiles.geo <input_profiles_geo>`

To see what a sample |ip| looks like, at the command line type

.. code:: bash

	  $ gyro -g reg14 ; cat reg14/input.profiles

Overview
--------

The file |ip| contains the entire dataset required for specification of experimental
profiles. All such profiles are specified on an N_EXP-point grid.  The information
included is sufficient to use the :doc:`Miller local equilibrium model <geometry>`.  If general
flux-surface shape is required, the optional file |ipg| can be supplied
which overrides the model shape defined in |ip|.  

The format of each data-block in |ip| is fixed, but between data blocks any number of
comment lines (starting with ``#`` in the first column) can be added for convenience.
These comment lines are ignored by the parser.  Unlike input.gyro, no inputs are supplied
by default; the program will halt and print an error message if data is missing.  Below,
we list the individual scalar and vector data names (which correspond to the interface
names in the GYRO EXPRO library).  In these definitions, recall that n_spec is the number
of species. 

What the heck is BT_EXP?
------------------------

BT_EXP (together with ARHO_EXP) is essentially an unneeded/unphysical parameter meant
to confuse users.  In reality, both these parameters could have -- and should have -- been
omitted, and replaced with a profile of the (dimensional) toroidal or poloidal flux.  The
current standard for |ip| does include the poloidal flux, but the original specification
did not.  Instead, these two unfortunate parameters were used as a proxy (together with
the profile of the normalized root of the toroidal flux) for the dimensional toroidal
flux.  So, we emphasize again that insofar as GYRO, NEO, etc are concerned, BT_EXP and
ARHO_EXP are essentially arbitrary.  

Here is how they arose and what they mean: as an alternative to requiring input of the
toroidal flux, one can introduce a (non-unique) function :math:`\rho` which parameterizes
the toroidal flux:

.. math::

   \chi_t = \frac{1}{2\pi} \iint {\mathbf B} \cdot d{\mathbf A}
   = \frac{1}{2} B_{\rm ref} \, \rho(r)^2 \; ,

where :math:`\chi_t` is the toroidal flux divided by :math:`2\pi`, and :math:`B_{\rm ref}`
is any *reference field*.  This is normally the vacuum toroidal field, or close to it.
However, it is important to keep in mind that the choice is ultimately arbitrary.  What
is required is that by knowing :math:`B_{\rm ref}` and :math:`\rho` one can exactly
calculate :math:`\chi_t`.  This parameterization corresponds to the following variables
in |ip|: 

.. math::
   
   B_{\rm ref} &\rightarrow & ~ \mathtt{BT\_EXP} \\
   \rho(a) &\rightarrow & ~ \mathtt{ARHO\_EXP} \\
   \rho/\rho(a) & \rightarrow & ~ \mathrm{rho(:)}

And again we emphasize that a less confusing alternative would be to have simply included
the vector of toroidal flux values in |ip|.  In future specifications, this is what we
would like to do.  One additional comment is that, in terms of :math:`\rho` the area
enclosed by a flux surface is approximately given by :math:`A \simeq \pi\rho^2` so
long as :math:`B_{\rm ref}` is representative of the average field passing through the
flux surface.

File Structure
--------------

Scalar Data
~~~~~~~~~~~

#. ``N_ION``

   - Total number of ions (thermal and fast).
  
#. ``N_EXP``

   - Number of experimental data gridpoints.  
   - This is the dimension of the vectors which follow, for example, "size(rho(:))" = ``N_EXP``

#. ``BT_EXP``

   - Reference magnetic field, :math:`B_{\rm ref}`, in Tesla.  
   - The sign is positive if the direction of :math:`\mathbf{B}` is positively oriented; that is, if it points in the clockwise direction viewed from above.  
   - In DIII-D, we typically have :math:`B_{\rm ref} > 0`, or equivalently, ``BTCCW`` = -1.

#. ``ARHO_EXP``

   - :math:`\rho(a)` (i.e., :math:`\rho` at the separatrix) in units of :math:`\mathrm{m}`.  
   - This will serve to denormalize the vector :math:`\hat\rho` defined in the next section.

Vector data, block 1 (1-5)
~~~~~~~~~~~~~~~~~~~~~~~~~~

#. **rho(:)**

   - The dimensionless areal variable, :math:`\hat\rho = \rho(r)/\rho(a)`. 
   - This should span the region :math:`{\hat\rho} \in [0,1]` using n_grid_exp values.  
   - The grid-spacing can be nonuniform.

#. **rmin(:)**
	
   - The generalized minor radius, :math:`r`, in units of :math:`{\rm m}`. See :doc:`here <geometry>` for definition.

#. **polflux(:)**

   - Poloidal flux over :math:`2\pi`, in units of Webers/radian.

#. **q(:)**

   - The dimensionless safety factor, :math:`q`.

#. **omega0(:)**

   - Rotation frequency, :math:`\omega_0 = \frac{c E_r }{R B_p} = -c \frac{d \Phi}{d \psi}` in units of :math:`{\rm rad/s}`.
   - This is effectively a proxy for :math:`E_r`, but is more convenient since it is (nearly) a flux function.

Vector data, block 2 (6-10)
~~~~~~~~~~~~~~~~~~~~~~~~~~~

# rmaj(:) 
- The generalized major radius, :math:R_0(r)\,\!</math>, in units of :math:{\rm m}\,\!</math>. See [[Gyrogeometry]] for definition.
# zmag(:)
- Flux-surface elevation, :math:Z_0\,\!</math>, in units of :math:{\rm m}\,\!</math>. See [[Gyrogeometry]] for definition.
# kappa(:)
- The dimensionless plasma elongation, :math:\kappa\,\!</math>. See [[Gyrogeometry]] for definition.
# delta(:)
- The dimensionless plasma triangularity, :math:\delta\,\!</math>. See [[Gyrogeometry]] for definition.
# zeta
- Plasma squareness, :math:\zeta\,\!</math>. See [[Gyrogeometry]] for definition. 

Vector data, block 3 (11-15)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# ne(:)
- The electron density, :math:n_e\,\!</math>, in units of :math:10^{19}/{\rm m}^3\,\!</math>.
# te(:)
- The electron temperature, :math:T_e\,\!</math>, in units of :math:{\rm keV}\,\!</math>.
# ptot(:)
- Total plasma pressure, in units of Pascals.
# z_eff(:)
- The (dimensionless) effective ion charge, :math:Z_{\rm eff}\,\!</math>.
# [null]

Vector data, block 4 (16-20)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# ni(1,:)
- Ion density, :math:n_{i1}\,\!</math>, in units of :math:10^{19}/{\rm m}^3\,\!</math>.
# ni(2,:)
- Ion density, :math:n_{i2}\,\!</math>, in units of :math:10^{19}/{\rm m}^3\,\!</math>.
# ni(3,:)
- Ion density, :math:n_{i3}\,\!</math>, in units of :math:10^{19}/{\rm m}^3\,\!</math>.
# ni(4,:)
- Ion density, :math:n_{i4}\,\!</math>, in units of :math:10^{19}/{\rm m}^3\,\!</math>.
# ni(5,:)
- Ion density, :math:n_{i5}\,\!</math>, in units of :math:10^{19}/{\rm m}^3\,\!</math>.

Vector data, block 5 (21-25)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# ni(6,:)
- Ion density, :math:n_{i6}\,\!</math>, in units of :math:10^{19}/{\rm m}^3\,\!</math>.
# ni(7,:)
- Ion density, :math:n_{i7}\,\!</math>, in units of :math:10^{19}/{\rm m}^3\,\!</math>.
# ni(8,:)
- Ion density, :math:n_{i8}\,\!</math>, in units of :math:10^{19}/{\rm m}^3\,\!</math>.
# ni(9,:)
- Ion density, :math:n_{i9}\,\!</math>, in units of :math:10^{19}/{\rm m}^3\,\!</math>.
# ni(10,:)
- Ion density, :math:n_{i10}\,\!</math>, in units of :math:10^{19}/{\rm m}^3\,\!</math>.

Vector data, block 6 (26-30)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# ti(1,:)
- Ion temperature, :math:T_{i1}\,\!</math>, in units of :math:{\rm keV}\,\!</math>.
# ti(2,:)
- Ion temperature, :math:T_{i2}\,\!</math>, in units of :math:{\rm keV}\,\!</math>.
# ti(3,:)
- Ion temperature, :math:T_{i3}\,\!</math>, in units of :math:{\rm keV}\,\!</math>.
# ti(4,:)
- Ion temperature, :math:T_{i4}\,\!</math>, in units of :math:{\rm keV}\,\!</math>.
# ti(5,:)
- Ion temperature, :math:T_{i5}\,\!</math>, in units of :math:{\rm keV}\,\!</math>.

Vector data, block 7 (31-35)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# ti(6,:)
- Ion temperature, :math:T_{i6}\,\!</math>, in units of :math:{\rm keV}\,\!</math>.
# ti(7,:)
- Ion temperature, :math:T_{i7}\,\!</math>, in units of :math:{\rm keV}\,\!</math>.
# ti(8,:)
- Ion temperature, :math:T_{i8}\,\!</math>, in units of :math:{\rm keV}\,\!</math>.
# ti(9,:)
- Ion temperature, :math:T_{i9}\,\!</math>, in units of :math:{\rm keV}\,\!</math>.
# ti(10,:)
- Ion temperature, :math:T_{i10}\,\!</math>, in units of :math:{\rm keV}\,\!</math>.

Vector data, block 8 (36-40)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# vtor(1,:)
- Ion toroidal velocity, :math:v_{\phi,i1}\,\!</math>, in units of :math:{\rm m/s}\,\!</math>.
# vtor(2,:)
- Ion toroidal velocity, :math:v_{\phi,i2}\,\!</math>, in units of :math:{\rm m/s}\,\!</math>.
# vtor(3,:)
- Ion toroidal velocity, :math:v_{\phi,i3}\,\!</math>, in units of :math:{\rm m/s}\,\!</math>.
# vtor(4,:)
- Ion toroidal velocity, :math:v_{\phi,i4}\,\!</math>, in units of :math:{\rm m/s}\,\!</math>.
# vtor(5,:)
- Ion toroidal velocity, :math:v_{\phi,i5}\,\!</math>, in units of :math:{\rm m/s}\,\!</math>.

Vector data, block 9 (41-55)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# vtor(6,:)
- Ion toroidal velocity, :math:v_{\phi,i6}\,\!</math>, in units of :math:{\rm m/s}\,\!</math>.
# vtor(7,:)
- Ion toroidal velocity, :math:v_{\phi,i7}\,\!</math>, in units of :math:{\rm m/s}\,\!</math>.
# vtor(8,:)
- Ion toroidal velocity, :math:v_{\phi,i8}\,\!</math>, in units of :math:{\rm m/s}\,\!</math>.
# vtor(9,:)
- Ion toroidal velocity, :math:v_{\phi,i9}\,\!</math>, in units of :math:{\rm m/s}\,\!</math>.
# vtor(10,:)
- Ion toroidal velocity, :math:v_{\phi,i10}\,\!</math>, in units of :math:{\rm m/s}\,\!</math>.

Vector data, block 10 (56-60)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# vpol(1,:)
- Ion poloidal velocity, :math:v_{\theta,i1}\,\!</math>, in units of :math:{\rm m/s}\,\!</math>.
# vpol(2,:)
- Ion poloidal velocity, :math:v_{\theta,i2}\,\!</math>, in units of :math:{\rm m/s}\,\!</math>.
# vpol(3,:)
- Ion poloidal velocity, :math:v_{\theta,i3}\,\!</math>, in units of :math:{\rm m/s}\,\!</math>.
# vpol(4,:)
- Ion poloidal velocity, :math:v_{\theta,i4}\,\!</math>, in units of :math:{\rm m/s}\,\!</math>.
# vpol(5,:)
- Ion toroidal velocity, :math:v_{\theta,i5}\,\!</math>, in units of :math:{\rm m/s}\,\!</math>.

Vector data, block 11 (61-65)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# vpol(6,:)
- Ion poloidal velocity, :math:v_{\theta,i6}\,\!</math>, in units of :math:{\rm m/s}\,\!</math>.
# vpol(7,:)
- Ion poloidal velocity, :math:v_{\theta,i7}\,\!</math>, in units of :math:{\rm m/s}\,\!</math>.
# vpol(8,:)
- Ion poloidal velocity, :math:v_{\theta,i8}\,\!</math>, in units of :math:{\rm m/s}\,\!</math>.
# vpol(9,:)
- Ion poloidal velocity, :math:v_{\theta,i9}\,\!</math>, in units of :math:{\rm m/s}\,\!</math>.
# vpol(10,:)
- Ion toroidal velocity, :math:v_{\theta,i10}\,\!</math>, in units of :math:{\rm m/s}\,\!</math>.

Vector data, block 12 (66-70)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# flow_beam(:)
- The total integrated beam flow (particle source), in units of :math:{\rm MW/keV} = 0.624 \times 10^{22} \, {\rm s}^{-1}\,\!</math>. 
# flow_wall(:)
- Wall source in same units as above (generally this is poorly-known and ignored in TGYRO).
# flow_mom(:)
- The total (convected and conducted) integrated angular momentum flow (torque), in units of :math:{\rm N}\cdot{\rm m}\,\!</math>. 
- The TRANSP variable is VOLINT(MVISC+MCOND).
# [null]
# [null]

Vector data, block 13 (71-75)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# pow_e(:)
- The total (convected and conducted) integrated electron power, in units of :math:{\rm MW}\,\!</math>. 
- This is the electron heating power, corrected for the ion-electron energy transfer, the radiated power, and the rate of change of the energy stored by the electrons. 
- The TRANSP variable is VOLINT(PCONV+PCOND):math:\times 10^{-6}</math>.
# pow_i(:)
- The total (convected and conducted) integrated ion power, in units of :math:{\rm MW}\,\!</math>. 
- This is the ion heating power, corrected for the ion-electron energy transfer, the net charge-exchange loss power, and the rate of change of the energy stored by the ions.
- The TRANSP variable is VOLINT(PCNVE+PCNDE):math:\times 10^{-6}</math>.
# pow_ei(:)
- The integrated electron-ion energy exchange power, in units of :math:{\rm MW}\,\!</math>.
- The TRANSP variable is VOLINT(QIE):math:\times 10^{-6}</math>.
# pow_e_aux(:)
- The integrated auxiliary power to electrons, in units of :math:{\rm MW}\,\!</math>.
# pow_i_aux(:)
- The integrated auxiliary power to ions, in units of :math:{\rm MW}\,\!</math>.

Vector data, block 13 (71-75) [DIAGNOSTIC -- optional]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# pow_e_fus(:)
- Fusion power to electrons, in units of :math:{\rm MW}\,\!</math>.
# pow_i_fus(:)
- Fusion power to ions, in units of :math:{\rm MW}\,\!</math>.
# pow_e_sync(:)
- Electron synchrotron radiation, in units of :math:{\rm MW}\,\!</math>.
# pow_e_brem(:)
- Bremsstrahlung radiation, in units of :math:{\rm MW}\,\!</math>.
# pow_e_line(:)
- Electron line radiation, in units of :math:{\rm MW}\,\!</math>.

Vector data, block 14 (76-80) [DIAGNOSTIC -- optional]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# sbeame(:)
- :math:1/m^3/s\,\!</math>.
# sbcx(:)
- :math:1/m^3/s\,\!</math>.
# sscxl(:)
- :math:1/m^3/s\,\!</math>.
# [null]
# [null]
