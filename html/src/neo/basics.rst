**********
NEO Basics
**********

Input Files 
###########

All NEO input parameters reside in one of three files:

- :doc:`input.neo <inputs>`
- input.profiles
- input.profiles.geo

input.neo must always exist, whereas input.profiles is required only when simulations are based on experimental profiles and input.profiles.geo is required only when general geometry is used with experimental profiles. These files are local to a given simulation directory and are parsed by a python script to generate new input files to be read directly by NEO. The user need not pay attention to python-generated files. 
  
Normalizations
##############

When run in local profile mode, the NEO normalizing length :math:`a`, normalizing mass :math:`m_{\rm norm}`, normalizing density :math:`n_{\rm norm}`, normalizing temperature :math:`T_{\rm norm}`, and normalizing velocity :math:`{\rm v}_{\rm norm} = \sqrt{T_{\rm norm}/m_{\rm norm}}` are arbitrary, since the input.neo parameters are set with respect to these and the output parameters are defined with respect to these. For experimental profiles, the normalizations are set as follows: 

.. csv-table:: 
   :header: "Quantity", "Unit", "Description"
   :widths: 13, 15, 25

   Length, ":math:`a`", Minor radius
   Mass, ":math:`m_{\rm norm} = m_{\rm D}`", Mass of deuterium (3.3452e-27 kg)
   Density, ":math:`n_{\rm norm}(r)=n_{0,{\rm species 1}}`", Local density of species 1
   Temperature, ":math:`T_{\rm norm}(r)=T_{0,{\rm species 1}}`", Local temperature of species 1
