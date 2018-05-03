NEO
===

Quick links
-----------

.. toctree::
   :titlesonly:

   neo/neo_table
   neo/neo_list
   neo/outputs


NEO :cite:`belli:2008,belli:2009,belli:2012` is a multi-species drift-kinetic solver was developed by the ESL project as a practical tool for high accuracy neoclassical calculations.  NEO is an Eulerian code that solves the first-order (in the drift-ordering parameter :math:`\rho_*=\rho_i/a \ll 1`) drift-kinetic-Poisson equations.  In NEO, no approximations beyond the drift-ordering are made.  The full linearized Fokker-Planck collision operator is used for the collision dynamics, with complete cross-species collisional coupling for arbitrary mass ratio and an arbitrary number of species.  General flux-surface shape, including up-down asymmetry, is treated.  In addition, full sonic rotation and centrifugal terms are retained.  NEO has been extensively benchamarked with analytic theories, as well as with NCLASS, over a wide range of parameters and in various asymptotic limits.

The equations solved in NEO complement those solved in gyrokinetic codes such as GYRO and CGYRO insofar as together they represent the complete first-order deviation of the plasma from a local Maxwellian.

Data input 
----------

The primary NEO input file is :doc:`input.neo <neo/neo_table>`.  Profile data can be optionally captured from  :doc:`input.profiles <input_profiles>`.

NEO can also be run using a subroutine interface. In this case, inputs and outputs are contained in a monolithic module file named neo_interface. The interface parameter name is formed by prepending neo\_ and appending \_in to the name of the corresponding input.neo parameter.

.. code:: fortran
	  
	  use neo_interface
	  call neo_init
	  ! Set neo_interface inputs (e.g. neo_n_species_in = 2 ...)
	  call neo_run
	  ! Get neo_interface outputs (e.g. jbs = neo_jpar_dke_out ...)


Data output 
-----------

A description of the NEO output files and output subroutine parameters is :doc:`here <neo/outputs>`.

Normalization
-------------

When run in local profile mode, the NEO normalizing length :math:`a`, normalizing mass :math:`m_{\rm norm}`, normalizing density :math:`n_{\rm norm}`, normalizing temperature :math:`T_{\rm norm}`, and normalizing velocity :math:`{\rm v}_{\rm norm} = \sqrt{T_{\rm norm}/m_{\rm norm}}` are arbitrary, since the input.neo parameters are set with respect to these and the output parameters are defined with respect to these. For experimental profiles, the normalizations are set as follows:

.. csv-table::
   :header: "Quantity", "Unit", "Description"
   :widths: 13, 15, 25

   Length, ":math:`a`", Minor radius
   Mass, ":math:`m_{\rm norm} = m_{\rm D}`", Mass of deuterium (3.3452e-27 kg)
   Density, ":math:`n_{\rm norm}(r)=n_{0,{\rm species 1}}`", Local density of species 1
   Temperature, ":math:`T_{\rm norm}(r)=T_{0,{\rm species 1}}`", Local temperature of species 1
