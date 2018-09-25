Tabular list for input.tglf
===========================

.. csv-table:: **Control**
   :header: "input.tglf parameter", "Interface parameter", "Short description", "Default"
   :widths: 13, 13, 25, 5
 
   ":ref:`TGLF_NS`", tglf_ns_in,number of species including both electrons and ions,2
   ":ref:`TGLF_USE_TRANSPORT_MODEL`", tglf_use_transport_model_in,,.true.
   ":ref:`TGLF_GEOMETRY_FLAG`",tglf_geometry_flag_in,"geometry type (0= :math:`s-\alpha` , 1=Miller, 2=Fourier, 3=ELITE)",1
   ":ref:`TGLF_USE_BPER`", tglf_use_bper_in,"include transverse magnetic fluctuations, :math:`\delta A_{\lVert }`",.false.
   ":ref:`TGLF_USE_BPAR`",tglf_use_bpar_in,"include compressional magnetic fluctuations, {\displaystyle \delta B_{\lVert }}",.false.
   ":ref:`TGLF_USE_BISECTION`",tglf_use_bisection_in,"use bisection search method to find width that maximizes growth rate",.true.
   ":ref:`TGLF_USE_MHD_RULE`",tglf_use_mhd_rule_in,"ignore pressure gradient contribution to curvature drift",.true.
   ":ref:`TGLF_USE_INBOARD_DETRAPPED`",tglf_use_inboard_detrapped_in,"Set trapped fraction to zero if eigenmode is inward ballooning",.false.
   ":ref:`TGLF_SAT_RULE`",tglf_sat_rule_in,0=default saturation rule,0
   ":ref:`TGLF_KYGRID_MODEL`",tglf_kygrid_model_in,"1=standard ky spectrum for transport model, 0=user defined with NKY modes up to KY equal spaced",1
   ":ref:`TGLF_XNU_MODEL`",tglf_xnu_model_in,Collision model (2=new),2
   ":ref:`TGLF_VPAR_MODEL`",tglf_vpar_model_in,0=low-Mach-number limit,0
   ":ref:`TGLF_VPAR_SHEAR_MODEL`",tglf_vpar_shear_model_in,depricated parameter,0
   ":ref:`TGLF_SIGN_BT`",tglf_sign_bt_in,sign of {:math:` B_{T}}`  with repsect to CCW toroidal direction from top,1.0
   ":ref:`TGLF_SIGN_IT`",tglf_sign_it_in,sign of {:math:`I_{T}}`  with repsect to CCW toroidal direction from top,1.0
   ":ref:`TGLF_KY`",tglf_ky_in,"{:math:`k_{\theta }\rho _{s,{\rm {unit}}}\,\!}` for single-mode call to TGLF",0.3
   ":ref:`TGLF_NEW_EIKONAL`",tglf_new_eikonal_in,".true. = compute the eikonal, .false. = use the eikonal computed on the last call to TGLF made with tglf_new_eikonal_in = .true.",.true.
   ":ref:`TGLF_VEXB`",tglf_vexb_in,"normalized of ExB velocity Doppler shift common to all species (not in use, see VPAR)",0.0
   ":ref:`TGLF_VEXB_SHEAR`",tglf_vexb_shear_in,normalized toroidal ExB velocity Doppler shift gradient common to all species. For large ExB velocity ordering {:math:`V_{tor}=V_{ExB}}`  {:math:`-SIGN(I_{tor}){\frac {r}{ABS(q)}}{\frac {\partial }{\partial r}}({\frac {V_{ExB}}{R}}){\frac {a}{c_{s}}}}`,0.0
   ":ref:`TGLF_BETAE`",tglf_betae_in,"{:math:`\beta _{e}\,\!`}  defined with respect to {;math;`B_{\rm {unit}}\,\!`}",0.0
   ":ref:`TGLF_XNUE`",tglf_xnue_in,electron-ion collision frequency {:math:`{\frac {v_{ei}}{c_{s}/a}}}`,0.0
   ":ref:`TGLF_ZEFF`",tglf_zeff_in,effective ion charge,1.0
   ":ref:`TGLF_DEBYE`",tglf_debye_in,Debye length/gyroradius,0.0
   ":ref:`TGLF_IFLUX`",tglf_iflux_in,compute quasilinear weights and mode amplitudes,.true.
   ":ref:`TGLF_IBRANCH`",tglf_ibranch_in,"0 = find two most unstable modes one for each sign of frequency, electron drift direction (1), ion drift direction (2), -1 = sort the unstable modes by growthrate in rank order",-1
   ":ref:`TGLF_NMODES`",tglf_nmodes_in,number of modes to store for tglf_ibranch_in = -1,2
   ":ref:`TGLF_NBASIS_MAX`",tglf_nbasis_max_in,maximum number of parallel basis functions,4
   ":ref:`TGLF_NBASIS_MIN`",tglf_nbasis_min_in,minimum number of parallel basis functions,2
   ":ref:`TGLF_NXGRID`",tglf_nxgrid_in,number of nodes in Gauss-Hermite quadrature,16
   ":ref:`TGLF_NKY`",tglf_nky_in,number of poloidal modes in the high-k spectrum of TGLF_TM,12
   ":ref:`TGLF_ADIABATIC_ELEC`",tglf_adiabatic_elec_in,use adiabatic electrons,.false.
   ":ref:`TGLF_ALPHA_P`",tglf_alpha_p_in,multiplies parallel velocity shear for all species,1.0
   ":ref:`TGLF_ALPHA_MACH`",tglf_alpha_mach_in,multiplies parallel velocity for all species,0.0
   ":ref:`TGLF_ALPHA_E`",tglf_alpha_e_in,multiplies ExB velocity shear for spectral shift model,1.0
   ":ref:`TGLF_ALPHA_QUENCH`",tglf_alpha_quench_in,"1.0 = use quench rule, 0.0 = use new spectral shift model",0.0
   ":ref:`TGLF_XNU_FACTOR`",tglf_xnu_factor_in,multiplies the trapped/passing boundary electron-ion collision terms,1.0
   ":ref:`TGLF_DEBYE_FACTOR`",tglf_debye_factor_in,multiplies the debye length,1.0
   ":ref:`TGLF_ETG_FACTOR`",tglf_etg_factor_in,exponent for ETG saturation rule,1.25
   ":ref:`TGLF_WRITE_WAVEFUNCTION_FLAG`",tglf_write_wavefunction_flag_in,Self-explanatory,0


.. csv-table:: **Species Vectors**
   :header: "input.tglf parameter", "Interface parameter", "Short description", "Default"
   :widths: 13, 13, 25, 5
   
   ":ref:`TGLF_ZS_1`",tglf_zs_in(:),species charge numbers,"-1.0,1.0"
   ":ref:`TGLF_MASS_1`",tglf_mass_in(:),species masses normalized to {:math:`m_{D}}`,"me/md,1.0"
   ":ref:`TGLF_RLNS_1`",tglf_rlns_in(:),species array of normalized density gradients {:math:`-{\frac {a}{n_{s}}}{\frac {dn_{s}}{dr}}}`,"1.0,1.0"
   ":ref:`TGLF_RLTS_1`",tglf_rlts_in(:),species array of normalized temperature gradients {:math:`-{\frac {a}{T_{s}}}{\frac {dT_{s}}{dr}}}`,"3.0,3.0"
   ":ref:`TGLF_TAUS_1`",tglf_taus_in(:),species array of temperatures {:math:`{\frac {T_{s}}{T_{e}}}}`,"1.0,1.0"
   ":ref:`TGLF_AS_1`",tglf_as_in(:),species array of densities {:math:`{\frac {n_{s}}{n_{e}}}}`,"1.0,1.0"
   ":ref:`TGLF_VPAR_1`",tglf_vpar_in(:),species array of parallel velocities {:math:`SIGN(I_{tor}){\frac {R_{maj}V_{tor}}{Rc_{s}}}}`,"0.0,0.0"
   ":ref:`TGLF_VPAR_SHEAR_1`",tglf_vpar_shear_in(:),normalized parallel velocity gradient {:math;'-SIGN(I_{tor})R_{maj}{\frac {\partial }{\partial r}}({\frac {V_{tor}}{R}}){\frac {a}{c_{s}}}}`,"0.0,0.0"


.. csv-table:: **Gaussian width parameters**
   :header: "input.tglf parameter", "Interface parameter", "Short description", "Default"
   :widths: 13, 13, 25, 5
   
   ":ref:`TGLF_WIDTH`",tglf_width_in,maximum width of the Gaussian measure for the parallel Hermite polynomial basis,1.65
   ":ref:`TGLF_WIDTH_MIN`",tglf_width_min_in,minimum width used in search for maximum growth rate,0.3
   ":ref:`TGLF_NWIDTH`",tglf_nwidth_in,maximum number of widths used in search for maximum growth rate,21
   ":ref:`TGLF_FIND_WIDTH`",tglf_find_width_in,".true. = find the width that maximizes the growth rate, .false. = use width",.true.
   
   
.. csv-table:: **Miller geometry parameters**
   :header: "input.tglf parameter", "Interface parameter", "Short description", "Default"
   :widths: 13, 13, 25, 5
   
   ":ref:`TGLF_RMIN_LOC`",tglf_rmin_loc_in,"flux surface centroid minor radius {:math:`r/a\,\!}`",0.5
   ":ref:`TGLF_RMAJ_LOC`",tglf_rmaj_loc_in,"flux surface centroid major radius {:math:`R_{maj}/a\,\!}`",3.0
   ":ref:`TGLF_ZMAJ_LOC`",tglf_zmaj_loc_in,"flux surface centroid elevation {:math:`Z_{maj}/a\,\!}`",0.0
   ":ref:`TGLF_Q_LOC`",tglf_q_loc_in,"absolute value of the safety factor, {:math:`ABS(q)\,\!}`",2.0
   ":ref:`TGLF_Q_PRIME_LOC`",tglf_q_prime_loc_in,{:math:`{\frac {q^{2}a^{2}}{r^{2}}}s}`,16.0
   ":ref:`TGLF_P_PRIME_LOC`",tglf_p_prime_loc_in,{:math:`{\frac {qa^{2}}{rB_{unit}^{2}}}{\frac {\partial p}{\partial r}}}`,0.0
   ":ref:`TGLF_DRMINDX_LOC`",tglf_drmindx_loc_in,allows for x different than r {:math:`{\frac {\partial r}{\partial x}}}`,1.0
   ":ref:`TGLF_DRMAJDX_LOC`",tglf_drmajdx_loc_in,{:math:`{\frac {\partial R_{maj}}{\partial x}}}`,0.0
   ":ref:`TGLF_DZMAJDX_LOC`",tglf_dzmajdx_loc_in,{:math:`{\frac {\partial Z_{maj}}{\partial x}}}`,0.0
   ":ref:`TGLF_KAPPA_LOC`",tglf_kappa_loc_in,"elongation of flux surface, {:math:`\kappa \,\!}`",1.0
   ":ref:`TGLF_S_KAPPA_LOC`",tglf_s_kappa_loc_in,"shear in elongation, {:math:`{\frac {r}{\kappa }}{\frac {\partial \kappa }{\partial r}}}`",0.0
   ":ref:`TGLF_DELTA_LOC`",tglf_delta_loc_in,,0.0
   ":ref:`TGLF_S_DELTA_LOC`",tglf_s_delta_loc_in,"shear in triangularity, {:math:`r{\frac {\partial \delta }{\partial r}}}`",0.0
   ":ref:`TGLF_ZETA_LOC`",tglf_zeta_loc_in,"squareness, {:math:`\zeta \,\!}` , of flux surface",0.0
   ":ref:`TGLF_S_ZETA_LOC`",tglf_s_zeta_loc_in,"shear in squareness, {:math:`r{\frac {\partial \zeta }{\partial r}}}`",0.0
   ":ref:`TGLF_KX0_LOC`",tglf_kx0_in,kx0/ky ballooning mode offset,0.0


.. csv-table:: **s-alpha geometry parameters**
   :header: "input.tglf parameter", "Interface parameter", "Short description", "Default"
   :widths: 13, 13, 25, 5
   
   ":ref:`TGLF_RMIN_SA`",tglf_rmin_sa_in,"normalized minor radius of flux surface {:math:`r/a\,\!}`",0.5
   ":ref:`TGLF_RMAJ_SA`",tglf_rmaj_sa_in,"normalized major radius of flux surface {:math:`R_{maj}/a\,\!}`",3.0
   ":ref:`TGLF_Q_SA`",tglf_q_sa_in,absolute value of safety factor,2.0
   ":ref:`TGLF_SHAT_SA`",tglf_shat_sa_in,magnetic shear {\:math:`{\frac {r}{q}}{\frac {\partial q}{\partial r}}}`,1.0
   ":ref:`TGLF_ALPHA_SA`",tglf_alpha_sa_in,normalized pressure gradient,0.0
   ":ref:`TGLF_XWELL_SA`",tglf_xwell_sa_in,magnetic well,0.0
   ":ref:`TGLF_THETA0_SA`",tglf_theta0_sa_in,{\:math:`\theta _{0}={\frac {k_{x}}{sk_{y}}}}`,0.0
   ":ref:`TGLF_B_MODEL_SA`",tglf_b_model_sa_in,0/1 to exclude/include the B(theta) factor in k_per,1
   ":ref:`TGLF_FT_MODEL_SA`",tglf_ft_model_sa_in,1 uses trapped fraction at the outboard midplane,1


.. csv-table:: **Change-at-your-own-risk parameters**
   :header: "input.tglf parameter", "Interface parameter", "Short description", "Default"
   :widths: 13, 13, 25, 5
   
   ":ref:`TGLF_THETA_TRAPPED`",tglf_theta_trapped_in,parameter to adjust trapped fraction model,0.7
   ":ref:`TGLF_PARK`",tglf_park_in,multiplies the parallel gradient term,1.0
   ":ref:`TGLF_GHAT`",tglf_ghat_in,multiplies the curvature drift closure terms,1.0
   ":ref:`TGLF_GCHAT`",tglf_gchat_in,multiplies the curvature drift irreducible terms,1.0
   ":ref:`TGLF_WD_ZERO`",tglf_wd_zero_in,cutoff for curvature drift eigenvalues to prevent zero,0.1
   ":ref:`TGLF_LINSKER_FACTOR`",tglf_linsker_factor_in,multiplies the Linsker terms,0.0
   ":ref:`TGLF_GRADB_FACTOR`",tglf_gradB_factor_in,multiplies the gradB terms,0.0
   ":ref:`TGLF_FILTER`",tglf_filter_in,sets threshold for frequency/drift frequency to filter out non-driftwave instabilities,2.0
