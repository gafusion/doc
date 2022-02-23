CGYRO Workshop 2022
===================

:Dates: February 24-25
:Time: 9:00am-11:45am (PST) both days
:Zoom link: Send email to gacode@fusion.gat.com with "CGYRO ZOOM" in subject line
	    
------
AGENDA
------


**profiles_gen** ::

 - generating input.gacode 
 - options: -loc_rad, -nion, -ntheta
 - profiles_gen_plot

**Numerical Resolution** ::

 - cgyro -t is your friend
 - perpendicular resolution and box size
 - poloidal resolution (N_THETA) 
 - velocity resolution (N_XI,N_ENERGY)
 - linear versus nonlinear simulation
 - nonlinear resolution checks (NL_FLAG=0, :math:`\theta_0`)
 - timestep (fixed versus adaptive)
 - restarting
   
**Plotting** ::

 - resolution diagnostics (ky_phi, kx_phi, ball, ky_flux, geo)
 - monitoring simulations (flux)
 - using pygacode for custom plotting and analysis
 - generating visualizations (-plot fluct)

**Physics parameters and implications** ::

 - NU_EE, BETAE_UNIT, GAMMA_E, GAMMA_P
  
**Source code** ::

 - platform file hierarchy (PPPL, PSFC, etc)  
 - real-time work on Perlmutter and Cori (NERSC) 
 - use of virtual environments (pip)

**Brief presentations** ::

 - **Igor Sfiligoi**: *CGYRO Performance on HPC systems (JIFT talk)*
 - **Arash Ashourvan**: *Strategies for pedestal simulation*

