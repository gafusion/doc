Alphabetical list of output files
===================================


.. _TGLF_DENSITY_SPECTRUM:

density_spectrum
----------------

**Description**
Gyro-bohm normalized density fluctuation amplitude spectra


**Comments**

- columns: density(nky, ns=1), density(nky, ns=2), ... , density(nky, ns=ns_in)

----

.. _TGLF_EIGENVALUE_SPECTRUM:

eigenvalue_spectrum
-------------------

**Description**
Gyro-bohm normalized eigenvalue spectra


**Comments**

- columns: gamma(nm=1), freq(nm=1), gamma(nm=2), freq(nm=2)

----

.. _TGLF_FIELD_SPECTRUM:

field_spectrum
--------------

**Description**
Gyro-bohm normalized field fluctuation intensity spectra per mode


**Comments**

- index limits: nky, nmodes


.. _TGLF_INTENSITY_SPECTRUM:

intensity_spectrum
------------------

**Description**
Gyro-bohm normalized intensity fluctuation amplitude spectra per mode


**Comments**

- columns: density, temperature, parallel velocity, parallel energy
- index limits: ns, nky, nmodes

----

.. _TGLF_NSTS_CROSSPHASE_SPECTRUM:

nsts_crossphase_spectrum
------------------------

**Description**
Density-temperature cross phase spectra per mode for each species


**Comments**

- index limits: nky, nmodes

----

.. _TGLF_QL_FLUX_SPECTRUM:

QL_flux_spectrum
----------------

**Description**
QL weights per mode, species, field and type (type = particle, energy, toroidal stress, parallel stress, exchange)

**Comments**

- index limits: nky, nmodes, ns, field, type

----

.. _TGLF_SAT_GEO_SPECTRUM:

sat_geo_spectrum
----------------

**Description**
Saturation model geometry factor per mode :math:`={\left(\frac{<\phi| B^2/B_{unit}^2 |\phi>}{<\phi|\phi>} \right)^{-1}`

**Comments**

- index limits: nky, nmodes

----

.. _TGLF_SCALAR_SATURATION_PARAMETERS:

scalar_saturation_parameters
----------------------------

**Description**
This output file has all of the scalar saturation paramters used for different settings of :ref:`TGLF_SAT_RULE`,  :ref:`TGLF_UNITS`,  :ref:`TGLF_ALPHA_ZF`

----

.. _TGLF_SPECTRAL_SHIFT:

spectral_shift
--------------

**Description**
kx spectral shift model is used when ALPHA_QUENCH=0 and ALPHA_E=1.0. Note: The mode for the spectral shift, :math:`kx_e={\frac{<\phi| k_x/k_y |\phi>}{<\phi|\phi>}`, depends on which saturation model is being used: SAT_RULE and UNITS settings

**Comments**

- index limits: nky

----

.. _TGLF_SUM_FLUX_SPECTRUM:

sum_flux_spectrum
-----------------

**Description**
flux spectrum summed over nmodes

**Comments**

- index limits: nky
- columns: particle flux, energy flux, toroidal stress, parallel stress, exchange

----

.. _TGLF_TEMPERATURE_SPECTRUM:

temperature_spectrum
--------------------

**Description**
Gyro-bohm normalized temperature fluctuation amplitude spectra

**Comments**

- index: nky, ns
- columns: temperature(nky, ns=1), temperature(nky, ns=2), ... , temperature(nky, ns=ns_in)


-----Return to :doc:`table of inputs and outputs <tglf_table>`
