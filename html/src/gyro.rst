GYRO
====

Quick links
-----------

.. toctree::
   :titlesonly:

   gyro/gyro_table
   gyro/gyro_list
   gyro/outputs
   gyro/plot
   gyro/gyro_vv   
   gyro/gyro_history

Overview
--------

GYRO :cite:`candy:2003,candy:2003b,candy:2004a,candy:2010` is a legacy multi-species global electromagnetic gyrokinetic solver.  Thousands of nonlinear simulations with GYRO have informed the fusion community's understanding of core plasma turbulence :cite:`estrada:2005,kinsey:2005,kinsey:2006,kinsey:2007,howard:2016b`
and provided a *transport database* for the calibration of reduced transport models such as TGLF :cite:`staebler:2007`.  GYRO was the first -- and for many years the only -- global electromagnetic solver.  It pioneered the development of numerical algorithms for the GK equations with kinetic electrons.  GYRO is formulated in real space and like all global solvers requires *ad hoc* absorbing-layer boundary conditions when simulating cases with profile variation. This approach is suitable for core turbulence simulations, which cover a large radial region and are dominated by low wavenumbers.  More recently, as the understanding of core transport has become increasingly complete, the cutting edge of research moved radially toward the pedestal region, where plasmas are characterized by larger collisionality and steeper pressure gradients that greatly modify the turbulent phenomena at play. This motivated the development, from scratch, of the :doc:`CGYRO <cgyro>` code :cite:`candy:2016,belli:2017,candy:2018,belli:2018` to complement GYRO.  

For the interested reader we offer a :doc:`brief history of gyrokinetic simulation<gyro/gyro_history>`, including some idiosyncratic and possibly forgotten aspects of gyrokinetic research in the 2000s.  We also reproduce a :doc:`summary of GYRO verification and validation results<gyro/gyro_vv>` from the same era.
