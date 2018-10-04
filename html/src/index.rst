The General Atomics GACODE Suite
================================

.. figure:: image/marshall_code.png
	:width: 90 %
	:alt: Marshall
	:align: center


GACODE refers to a collection of serial and HPC software developed by the Theory Group
at `General Atomics <http://www.ga.com/magnetic-fusion>`_, and distributed through
the `GACODE source code repository <https://github.com/gafusion/gacode/>`_ at GitHub.

Installation
------------

We maintain `public installations <http://scidac.github.io/atom/install.html>`_ of GACODE via AToM.  However, you can also :doc:`install and build <install>` the GACODE suite from sources.

Geometry
--------

A description of the unified method used to describe :doc:`flux-surface geometry <geometry>`.

Plasma rotation
---------------

Some notes about :doc:`plasma rotation <rotation>`.

Experimental profiles
---------------------

GACODE software works with the :ref:`input.profiles` format.   

.. toctree::
   :caption: Software

   download
   install
   zreferences

.. toctree::
   :maxdepth: 2
   :caption: Codes

   neo
   tgyro
   cgyro
   gyro
   tglf

.. toctree::
   :caption: Physics

   geometry
   rotation
   input_profiles
   
