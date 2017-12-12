TGYRO_WRITE_PROFILES_FLAG
-------------------------

**Definition**

Manage how new ``input.profiles`` files are written.

**Choices**

- TGYRO_WRITE_PROFILES_FLAG=-1: Write new ``input.profiles.*`` at **every iteration**.
- TGYRO_WRITE_PROFILES_FLAG=0: No new files are written.
- TGYRO_WRITE_PROFILES_FLAG=1: Write ``input.profiles.new`` at final iteration

**Comments**

- If TGYRO_WRITE_PROFILES_FLAG=-1, then ``input.profiles.n`` is written at the nth iteration.

**Internal name**

tgyro_write_profiles_flag

**Default**

0

----

:doc:`Return to list of inputs <inputs>`
