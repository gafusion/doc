NEO
===

NEO is a multi-species drift-kinetic solver which enables a first-principles solution
of the local neoclassical transport problem. It has the capability to treat

- any number of Maxwellian species with arbitrary charge and mass.
- full collisional coupling of all species using the full linearized Fokker-Planck collision operator
- rapid toroidal rotation (including centrifugal effects)
- general (shaped) or simple circular plasmas
- experimental or user-defined physical parameters.

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

A description of the NEO output files is :doc:`here <neo/outputs>`.

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
