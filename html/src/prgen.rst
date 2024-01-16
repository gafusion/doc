profiles_gen
============
   
History and Overview
--------------------

The initial motivation for **profiles_gen** (circa 2005) was to separate the source code required to read and process ONETWO profile data from the main GYRO code base. The rationale was that reading plasma profile and geometry data to calculate suitable inputs for gyrokinetic simulation was not the job of a gyrokinetic code. So in the summer of 2005 it was decided to split the GYRO experimental profile handling into a new tool called iterdb_read. This morphed into the tool iterdb2gyro, which finally became profiles_gen in 2010. The conceptual motivation for profiles_gen was to provide a barrier between the challenges of experimental profile data formats and the standard (typically dimensionless) inputs for gyrokinetic (GYRO) and neoclassical (NEO) simulation. Also, in the pre-2010 period, it became clear that there was a need to standardize and improve geometry input, as ONETWO geometry data was low quality. This led to the idea of separating the profile date (typically from ONETWO or TRANSP) from the equilibrium shape data (from EFIT). By 2010, the ability to specify both a "profile statefile" and an EFIT "gfile" was established. The output from profiles_gen creates a unique format for use with the other GACODE transport codes.


