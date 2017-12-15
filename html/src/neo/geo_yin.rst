GEO_YIN
-------

**Definition**

Array of dimension (8,0:32) with the normalized Fourier coefficients :math:`\{a\_R,b\_R,a\_Z,b\_Z\}/a` and their radial derivatives :math:`\{a\_Rp,b\_Rp,a\_Zp,b\_Zp\}` for general Grad-Shafranov equilibrium.
     
**Comments**
  
- This parameter is only available via subroutine interface and not by input.neo.
- This parameter is used only if :doc:`EQUILIBRIUM_MODEL <equilibrium_model>` = 3.  The number of Fourier coefficients is specified by :doc:`GEO_NY <geo_ny>` and the coefficients are read-in as geo_yin(8,0:geo_ny).
- See the :doc:`geometry notes <../geometry>` for more details about the general geometry equilibrium model.  

**Internal name**
  
geo_yin_in

**Default**

0.0

----

:doc:`Return to list of inputs <inputs>`
