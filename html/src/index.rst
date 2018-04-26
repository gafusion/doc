The General Atomics GACODE Suite
================================

.. figure:: image/marshall_code.png
	:width: 90 %
	:alt: Marshall
	:align: center


GACODE refers to a collection of serial and HPC software developed by the Theory Group at `General Atomics <http://www.ga.com/magnetic-fusion>`_, and distributed through the `GACODE source code repository <https://github.com/gafusion/gacode/>`_ at GitHub.

Installation
------------

We maintain `public installations <http://scidac.github.io/atom/install.html>`_ of GACODE via AToM.  However, you can also :doc:`install and build <install>` the GACODE suite from sources.

Geometry
--------

A description of the unified method used to describe :doc:`flux-surface geometry <geometry>`.

Rotation and Field Orientation
------------------------------

Some notes about :doc:`plasma rotation and magnetic field orientation <rotation>`.

Experimental profiles
---------------------

GACODE software works with the :doc:`input.profiles <input_profiles>` format.   

.. toctree::
   :maxdepth: 2
   :caption: Codes

   neo
   tgyro
   cgyro
   gyro
   tglf

.. toctree::
   :caption: Topics

   geometry
   rotation
   input_profiles
   install
   zreferences
   
