The General Atomics GACODE Suite
================================

.. figure:: image/marshall_code.png
	:width: 90 %
	:alt: Marshall
	:align: center


GACODE refers to a collection of serial and HPC software developed by the Theory Group
at `General Atomics <http://www.ga.com/magnetic-fusion>`_, and distributed through
the `GACODE source code repository <https://github.com/gafusion/gacode/>`_ at GitHub.

Running GACODE
--------------

There are numerous :doc:`public installations <setup>` of GACODE (via `AToM <https://scidac.github.io/atom>`_ or local maintainers).  You can also :doc:`install and build <build>` the GACODE suite from sources to run on your desktop or laptop.

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
   setup
   build
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
   shortfall
