input.tgyro Alphabetical List
=============================

.. ===========================================================================================

.. _tgyro_loc_betae_scale:

LOC_BETAE_SCALE
---------------

**Definition**

Amount to scale electron beta

**Comments**

- To shut off electromagnetic fluctuations, set LOC_BETAE_SCALE=0.0

**Default**

1.0

----

.. ===========================================================================================

.. _tgyro_den_method:

TGYRO_DEN_METHOD*
-----------------

**Definition**

Rules for evolving species. 

**Choices**

- TGYRO_DEN_METHOD*=-1: Use species to enforce quasineutrality (can use this for more than one species simultaneously)
- TGYRO_DEN_METHOD*=0: Do not evolve species
- TGYRO_DEN_METHOD*=1: Evolve species by solving transport equation
- TGYRO_DEN_METHOD*=2: Species evolved with alpha particles from DT reaction as source

**Comments**

- Electrons are TGYRO_DEN_METHOD0, the first ion is TGYRO_DEN_METHOD1, etc.
- To evolve electrons, with first ion used to set quasineutrality, and second ion density fixed, set

  .. code-block:: none

     TGYRO_DEN_METHOD0=1
     TGYRO_DEN_METHOD1=-1
     TGYRO_DEN_METHOD2=0

- To evolve the second ion density, and adjust the main ion to enforce quasineutrality, set

  .. code-block:: none

     TGYRO_DEN_METHOD0=0
     TGYRO_DEN_METHOD1=-1
     TGYRO_DEN_METHOD2=1

- For a DT main ion plasma (1), with He4 ash (2), an impurity species (3) and a fast ion NBI species, set:

  .. code-block:: none

     TGYRO_DEN_METHOD0=1  #electron
     TGYRO_DEN_METHOD1=-1 #main ion DT
     TGYRO_DEN_METHOD2=2  #ash He4
     TGYRO_DEN_METHOD3=0  #impurity
     TGYRO_DEN_METHOD4=0  #fast ion

**Default**

0

----

.. ===========================================================================================

.. _tgyro_dt_method:

TGYRO_DT_METHOD
---------------

**Definition**

Method for handling DT mixture (as separate or hybrid species).

**Choices**

- TGYRO_DT_METHOD=1: two separate D and T species (requires two separate profiles)
- TGYRO_DT_METHOD=2: a single *hybrid* D-T species with density :math:`n_{DT}` and mass 2.5 AMU

**Comments**

- When TGYRO_DT_METHOD=1, the fusion cross section is computed as

  .. math:: S = n_{D} n_{T} \left\langle \sigma v\right\rangle 

- When TGYRO_DT_METHOD=2, the fusion cross section is computed as

  .. math:: S = \frac{n_{DT}^2}{4} \left\langle \sigma v\right\rangle

**Default**

2

----

.. ===========================================================================================

.. _tgyro_loc_dx:

LOC_DX
------

**Definition**

Step length, :math:`\Delta z`, used to compute the finite-difference approximation to the Jacobian.

**Comments**

- This can be safely increased for robustness. Root is unchanged.
- This is dimensionless, with :math:`\Delta z = \Delta (a/L_x)`, where :math:`L_x` is any of the gradient scale lengths.

**Default**

0.1

----

.. ===========================================================================================

.. _tgyro_loc_dx_max:

LOC_DX_MAX
----------

**Definition**

Maximum length, :math:`\Delta z_\mathrm{max}`, of any Newton step.

**Comments**

- This should probably always be smaller than unity.
- This is dimensionless, with :math:`\Delta z = \Delta (a/L_x)`, where :math:`L_x` is any of the gradient scale lengths.

**Default**

1.0

----

.. ===========================================================================================

.. _tgyro_loc_er_feedback_flag:

LOC_ER_FEEDBACK_FLAG
--------------------

**Definition**

Flag to signal electric field evolution

**Comments**

- LOC_ER_FEEDBACK_FLAG = 0 : Do not evolve electric field
- LOC_ER_FEEDBACK_FLAG = 1 : Evolve electric field

**Default**

0

----

.. ===========================================================================================

.. _tgyro_loc_evolve_grad_only_flag:

LOC_EVOLVE_GRAD_ONLY_FLAG
-------------------------

**Definition**

Flag to allow decoupling of profile and corresponding gradient scale length evolution

**Choices**

- LOC_EVOLVE_GRAD_ONLY_FLAG=0: Self-consistently evolve profiles and gradients.
- LOC_EVOLVE_GRAD_ONLY_FLAG=1: Evolve gradient scale lengths while holding density, temperature, and rotation profiles fixed.

**Comments**

- By setting this flag to 1, one effectively transforms TGYRO from a transport code into a parallel job management routine which solves for the local flux-matching gradients at each specified radius, while holding local density, temperatures and rotation values fixed. This process allows one to more efficiently calculate local flux-matching solutions and stiffness assessments, while eliminating changes to the gyroBohm normalizations and plasma parameters such as :math:`T_e/T_i` and collisionality arising from model performance at other radii.
  
**Default**

0

----

.. ===========================================================================================

.. _tgyro_loc_he_feedback_flag:

LOC_HE_FEEDBACK_FLAG
--------------------

**Definition**

Flag to signal helium ash evolution

**Comments**

- LOC_HE_FEEDBACK_FLAG = 0 : Do not evolve ash`
- LOC_HE_FEEDBACK_FLAG = 1 : Evolve ash

**Default**

0

----

.. ===========================================================================================

.. _tgyro_iteration_method:

TGYRO_ITERATION_METHOD
----------------------

**Definition**

Variation of Newton method used for root-finding.

**Choices**

- TGYRO_ITERATION_METHOD=1 : Local residual (standard) method
- TGYRO_ITERATION_METHOD=4 : Global residual method (serial version)
- TGYRO_ITERATION_METHOD=5 : Global residual method (parallel version)
- TGYRO_ITERATION_METHOD=6 : Simple relaxation method (**in development**)

**Comments**

- If TGYRO_ITERATION_METHOD=5, use (n_evolve+1)*n_mpi rather than simply n_mpi in ``input.tgyro``
- For example, if evolving :math:`T_e` and :math:`T_i`, then n_evolve+1=3, so set 3*n_mpi in ``input.tgyro``
- TGYRO_ITERATION_METHOD=6 uses a simple relaxation scheme

.. math::

  \frac{dz}{z} = -\mathrm{LOC\_RELAX} \, \frac{Q_\mathrm{tot} -
  Q_\mathrm{target}}{\max(|Q_\mathrm{tot}|,|Q_\mathrm{target}|,1)}

- In TGYRO_ITERATION_METHOD=6, if :math:`dz/z >` LOC_DX_MAX, then :math:`dz/z =` LOC_DX_MAX
- In TGYRO_ITERATION_METHOD=6, LOC_RELAX=0.1 and LOC_DX_MAX=0.05 are good starting points     

**Default**

1

----

.. ===========================================================================================

.. _tgyro_loc_lock_profile_flag:

LOC_LOCK_PROFILE_FLAG
---------------------

**Definition**

Flag to manage calculation of initial profile

**Choices**

- LOC_LOCK_PROFILE_FLAG=0: Use profiles computed from gradients 
- LOC_LOCK_PROFILE_FLAG=1: Use exact profiles

**Comments**

- If set to 1, use temperature and density profiles as read from input.profiles, not as calculated from gradients.
- This has an effect only on the zeroth iteration.
- This can have a large effect when a coarse radial grid is used. In this case, the profile as calculated from the gradients at only a few points will not match the original (higher-resolution) profile.

**Default**

0

----

.. ===========================================================================================

.. _tgyro_loc_scenario:

LOC_SCENARIO
------------

**Definition**

Power-balance scenario.

**Choices**

- LOC_SCENARIO=1 : Fixed integrated powers with static exchange.
- LOC_SCENARIO=2 : Fixed integrated powers with dynamic exchange.
- LOC_SCENARIO=3 : Thermonuclear source, radiation and exchange with auxiliary heating from data. 

**Comments**

- In LOC_SCENARIO=3, pow_e and pow_i in input.profiles are assumed to be auxiliary heating profiles.  Otherwise, pow_e and pow_i are the usual total powers to ions and electrons. 
  
**Default**

1

----

.. ===========================================================================================

.. _tgyro_loc_ma:

LOC_MA*
-------

**Definition**

Ion mass in units of hydrogen mass.  First ion is LOC_MA1, etc.

**Default**

2.0

----

.. ===========================================================================================

.. _tgyro_loc_z:

LOC_Z*
-------

**Definition**

Ion charge.  First ion is LOC_Z1, etc.

**Default**

1.0

----

.. ===========================================================================================

.. _tgyro_mode:

TGYRO_MODE
----------

**Definition**

High-level control of TGYRO operational mode.

**Choices**

- TGYRO_MODE=1 : Operate as transport code. 
- TGYRO_MODE=3 : Multi-job control of GYRO or CGYRO.

**Comments**

Sample input.tgyro for TGYRO_MODE=1 to run as transport code

.. code-block:: none

   DIR TGLF1 1
   DIR TGLF2 1
   DIR TGLF3 1
   DIR TGLF4 1

   TGYRO_MODE=1
   
   #-----------------------------------------------------
   # NEO control
   LOC_NEO_METHOD=1
   #-----------------------------------------------------

   #-----------------------------------------------------
   # Profile control
   TGYRO_DEN_METHOD0=0
   LOC_TE_FEEDBACK_FLAG=1
   LOC_TI_FEEDBACK_FLAG=1
   #-----------------------------------------------------

   #-----------------------------------------------------
   # Physics control
   # (1=static exch, 2=dynamic exch, 3=reactor)
   LOC_SCENARIO=2 
   TGYRO_RMAX=0.75
   #-----------------------------------------------------

   #-----------------------------------------------------
   # Iteration control
   TGYRO_ITERATION_METHOD=1
   LOC_RESIDUAL_METHOD=3

   LOC_DX=0.02

   # TGYRO iterations
   TGYRO_RELAX_ITERATIONS=4

   # Restart (0=new,1=restart)
   LOC_RESTART_FLAG=0
   #-----------------------------------------------------

   
Sample input.tgyro for TGYRO_MODE=3 to run 6 instances of CGYRO

.. code-block:: none

   DIR c1 384 GAMMA_E=0.0
   DIR c2 384 GAMMA_E=0.02
   DIR c3 384 GAMMA_E=0.04
   DIR c4 384 GAMMA_E=0.06
   DIR c5 384 GAMMA_E=0.08
   DIR c6 384 GAMMA_E=0.10

   TGYRO_MODE=3

**Default**

1

----

.. ===========================================================================================

.. _tgyro_relax_iterations:

TGYRO_RELAX_ITERATIONS
----------------------

**Definition**

Maximum number of Newton iterations. 

**Comments**

- Setting ``TGYRO_RELAX_ITERATIONS`` = 0 is useful to generate initial fluxes and other profiles on the TGYRO grid.

**Default**

0

----

.. ===========================================================================================

.. _tgyro_loc_relax:

LOC_RELAX
---------

**Definition**

Parameter :math:`C_\eta` controlling shrinkage of relaxation parameter.

 **DEFAULT** = 2.0

**Comments**

- No effect if less than or equal to unity.
- Only controls the behaviour of :ref:`tgyro_iteration_method` = 1.
- Experience shows that LOC_RELAX=2.0 is a good choice (default).

.. ===========================================================================================

.. _tgyro_loc_residual_method:

LOC_RESIDUAL_METHOD
-------------------

**Definition**

Formula for residual (error) in TGYRO root finding.

**Choices**

- LOC_RESIDUAL_METHOD=2: :math:`\displaystyle \sum_p \left|f_p-f^\mathrm{target}_p\right|` 
- LOC_RESIDUAL_METHOD=3: :math:`\displaystyle \sum_p (f_p-f^\mathrm{target}_p)^2` 

**Comments**

- This parameter only affects LOC_ITERATION_METHOD=4,5.
- It does **not** affect :ref:`tgyro_iteration_method` = 1 because each residual is minimized independently.
- The total residual is renormalized in method 3 to make the value comparable to method 2.
    
**Default**

2

----

.. ===========================================================================================

.. _tgyro_loc_restart_flag:

LOC_RESTART_FLAG
----------------

**Definition**

TGYRO startup control (new or restart). 

**Choices**

- LOC_RESTART_FLAG=0: New simulation.
- LOC_RESTART_FLAG=1: Continue running based on last iteration.

**Default**

0

----

.. ===========================================================================================

.. _tgyro_therm_flag:

TGYRO_THERM_FLAG*
-----------------

**Definition**

Thermal/nonthermal species toggle.  First ion is TGYRO_THERM_FLAG1, etc.

**Choices**

- TGYRO_THERM_FLAG* = 1: Thermal
- TGYRO_THERM_FLAG* = 0: Nonthermal (energetic)

**Comments**

- Only the shared thermal ion temperature is evolved in TGYRO
- Unequal thermal ion temperatures is not supported

**Default**

1

----

.. ===========================================================================================

.. _tgyro_loc_te_feedback_flag:


LOC_TE_FEEDBACK_FLAG
--------------------

**Definition**

Flag to signal electron temperature evolution

**Comments**

- LOC_TE_FEEDBACK_FLAG = 0 : Do not evolve :math:`T_e`
- LOC_TE_FEEDBACK_FLAG = 1 : Evolve :math:`T_e`

**Default**

1

----

.. ===========================================================================================

.. _tgyro_loc_ti_feedback_flag:

LOC_TI_FEEDBACK_FLAG
--------------------

**Definition**

Flag to signal ion temperature evolution

**Comments**

- LOC_TI_FEEDBACK_FLAG = 0 : Do not evolve :math:`T_i`
- LOC_TI_FEEDBACK_FLAG = 1 : Evolve :math:`T_i`

**Default**

1

----

.. ===========================================================================================

.. _tgyro_write_profiles_flag:

TGYRO_WRITE_PROFILES_FLAG
-------------------------

**Definition**

Manage how new :ref:`input.profiles` files are written.

**Choices**

- TGYRO_WRITE_PROFILES_FLAG=-1: Write new ``input.profiles.*`` at **every iteration**.
- TGYRO_WRITE_PROFILES_FLAG=0: No new files are written.
- TGYRO_WRITE_PROFILES_FLAG=1: Write ``input.profiles.new`` at final iteration

**Comments**

- If TGYRO_WRITE_PROFILES_FLAG=-1, then ``input.profiles.n`` is written at the nth iteration.

**Default**

0
