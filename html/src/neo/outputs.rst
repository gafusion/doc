***********
NEO Outputs
***********

NEO output files are produced only if :ref:`neo_silent_flag` = 0.

All NEO runtime information is written to out.neo.run.

Standard output files
######################

- :doc:`out.neo.equil <out.neo.equil>`
- :doc:`out.neo.f <out.neo.f>`
- :doc:`out.neo.grid <out.neo.grid>`
- :doc:`out.neo.phi <out.neo.phi>`
- :doc:`out.neo.theory <out.neo.theory>`
- :doc:`out.neo.theort_nclass <out.neo.theory_nclass>`
- :doc:`out.neo.transport <out.neo.transport>`
- :doc:`out.neo.transport_gv <out.neo.transport_gv>`  
- :doc:`out.neo.vel <out.neo.vel>`
- :doc:`out.neo.vel_fourier <out.neo.vel_fourier>`

Experimental profiles output files
##################################

Produced only if :ref:`neo_profile_model` = 2.

- :doc:`out.neo.transport_exp <out.neo.transport_exp`
- :doc:`out.neo.expnorm <out.neo.expnorm>`   

Rotation output files
#####################

Produced only if :ref:`neo_rotation_model` = 2.
 
- :doc:`out.neo.rotation <out.neo.rotation>`

Subroutine output
######################

When neo is run in subroutine mode, the outputs are contained in a monolithic file named neo_interface.  The NEO subroutine output parameters are :doc:`here <out.neo.subroutine`.
