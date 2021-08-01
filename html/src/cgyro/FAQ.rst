FAQ
===

.. toggle-header::
   :header: What is :math:`k_y \rho_s` and why does CGYRO modify :math:`\rho_s` ?

	    The fundamental definition of the wavenumber and unit gyroradius are given in :cite:`candy:2016`.
	    These are
	    
	    .. math:: \begin{align}
		      k_y \doteq &~nq/r \; , \\
		      \rho_s \doteq &~\rho_{s,\rm{unit}} = \frac{e B_\rm{unit}}{m_D c} \; , \\
		      B_\rm{unit} \doteq &~\displaystyle \frac{q}{r} \frac{\partial \psi}{\partial r} \; .
		      \end{align}

            Here, :math:`B_\rm{unit}` is the *Waltz effective magnetic field* which is standard
	    across all GACODE tools/codes, and :math:`r` is the midplane minor radius.  For a given
	    value of :math:`k_y \rho_s`, the gyrokinetic equations are invariant to the scaling
	    :math:`n \rightarrow \alpha n` and :math:`\rho_s \rightarrow \rho_s/\alpha`,
	    where :math:`\alpha` is an arbitrary scaling parameter.

            The CGYRO input parameter KY is

	    .. math:: \mathtt{KY} \doteq \Delta(k_y \rho_s) = \Delta n \left(\frac{q}{r}\right) \rho_s \; .

            CGYRO enforces :math:`\Delta n = 1`, which sets the (artificial) value of :math:`\rho_s` to
	    
	    .. math:: \rho_s \rightarrow \left(\frac{r}{q}\right) \mathtt{KY} \; .

	    To see the physical values of key parameters, you can use profiles_gen:
	    
	    .. code-block:: 

	       $ profiles_gen -i input.gacode -loc_rad 0.6
	       INFO: (profiles_gen) input.gacode is autodetected as GACODE.
	       INFO: (locpargen) Quasineutrality NOT enforced.
	       INFO: (locpargen) rhos/a   =+2.44577E-03
	       INFO: (locpargen) Te [keV] =+8.81550E-01
	       INFO: (locpargen) Ti [keV] =+7.58644E-01
	       INFO: (locpargen) Bunit    =+2.92020E+00
	       INFO: (locpargen) beta_*   =+4.84003E-03
	       INFO: ----->  n=1: ky*rhos =-7.74754E-03
	       INFO: (locpargen) Wrote input.*.locpargen

		      
.. toggle-header::
   :header: How does adaptive time-stepping work?

	    Time-stepping is controlled with the parameter :ref:`cgyro_delta_t_method`. Setting the parameter
	    to 0 gives the legacy fixed timestep, whereas values greater than 0 are adaptive methods. For the
	    adaptive methods we recommend setting :ref:`cgyro_delta_t` = 0.01. Here is the recommendation:

	    .. code-block:: 

	       DELTA_T_METHOD=1
	       DELTA_T=0.01
	       PRINT_STEP=100

	    The overall time-integration step is split between an explicit high-order step, and an implicit
	    second-order step for collisions and trapping. When using the adaptive method, the value of
	    :ref:`cgyro_delta_t` is the size of the (large) implicit timestep. Then, the value of the explicit
	    timestep is decreased to match the error tolerance, :ref:`cgyro_error_tol` -- the default value of
	    which should be sufficient.
