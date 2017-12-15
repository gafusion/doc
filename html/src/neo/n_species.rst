N_SPECIES
---------

**Definition**

The number of kinetic species.

**Comments**

- The maximum allowed N\_SPECIES is 11.
- Only one species with charge Z < 0 is allowed.  If no species with Z < 0 is specified, then an adiabatic electron model is assumed.
- For local simulations (:doc:`PROFILE_MODEL <profile_model>` = 1), the order of the species and the normalizing density and temperature are arbitrary.

  - For each species 1-N_SPECIES, :doc:`Z_ <z_1>`, :doc:`MASS_ <mass_1>`, :doc:`DENS_ <dens_1>`, :doc:`TEMP_ <temp_1>`, :doc:`DLNNDR_ <dlnndr_1>`, and :doc:`DLNTDR_ <dlntdr_1>` are set in input.neo.  The collision frequency with respect to species 1 (:doc:`NU_1 <nu_1>`) is also set in input.neo.
  - Quasi-neutrality is not checked.

    
- For experimental profiles (:doc:`PROFILE_MODEL <profile_model>` = 2), the normalizing mass is the mass of deuterium (:math:`m_D` = 3.3452e-27 kg), so the input masses should be given relative to this mass. The output quantities are normalized with respect to the density and temperature of the first species in input.neo and :math:`m_D`, with :math:`{\rm v}_{\rm norm} = \sqrt{T_{0,{\rm species 1}}/m_{D}}`.
  
  - The electron species, if kinetic, must be species number N_SPECIES in input.neo.
    
  - Of the species-dependent parameters in input.neo, only :doc:`Z_ <z_1>`  and :doc:`MASS_ <mass_1>` are used, while :doc:`DENS_ <dens_1>`, :doc:`TEMP_ <temp_1>`, :doc:`DLNNDR_ <dlnndr_1>`, :doc:`DLNTDR_ <dlntdr_1>`, and :doc:`NU_1 <nu_1>` are determined from the parameters read from input.profiles.

  - Quasi-neutrality is checked.

  - See :doc:`PROFILE_MODEL <profile_model>` for more details.
  
**Internal name**
  
n_species

**Default**

1

----

:doc:`Return to list of inputs <inputs>`
