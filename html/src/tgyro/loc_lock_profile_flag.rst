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

**Internal name**

loc_lock_profile_flag

**Default**

0

----

:doc:`Return to list of inputs <inputs>`
