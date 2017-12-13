PROFILE_MODEL
-------------

**Definition**

Parameter which selects how the radial profile is defined.

**Choices**

- PROFILE_MODEL = 1: local (one radius)
- PROFILE_MODEL = 2: global, using experimental profiles

**Comments**
  
- For PROFILE_MODEL = 1, :doc:`N_RADIAL <n_radial>` must be 1.
  
  - The densities are set by :doc:`DENS_ <dens_1>` and quasi-neutrality is not checked.
  - The temperatures are set by :doc:`TEMP_ <temp_1>`.
    
- For PROFILE_MODEL = 2, experimental profiles are defined in input.profiles.  The number of radial gridpoints is specified by :doc:`N_RADIAL <n_radial>`.
  
  - Additional models used for this case are specified by :doc:`PROFILE_EQUILIBRIUM_MODEL <profile_equilibrium_model>` and :doc:`PROFILE_ERAD0_MODEL <profile_erad0_model>`.
  - Of the species-dependent parameters in input.neo, only :doc:`Z_ <z_1>`  and :doc:`MASS_ <mass_1>` are used for this case. The normalizing mass is the mass of deuterium (:math:`m_D` = 3.3452e-27 kg), so the input masses should be given relative to this mass. The output quantities are normalized with respect to the density and temperature of the first species in input.neo and :math:`m_D`, with :math:`{\rm v}_{\rm norm} = \sqrt{T_{0,{\rm species 1}}/m_{D}}`.
  - The electron species, if kinetic, must be species number N_SPECIES in input.neo. 
  - If the density profiles in input.profiles are not quasi-neutral, then the density profile of the first ion species is re-set.

**Internal name**
  
profile_model

**Default**

1

----

:doc:`Return to list of inputs <inputs>`
