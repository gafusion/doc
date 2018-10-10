DIII-D L-mode shortfall
=======================

Overview
--------

This webpage is designed to serve as a central common resource and collaboration tool for research into the so-called "shortfall" observed in some gyrokinetic and gyrofluid predictions of DIII-D near-edge (<math>\rho=0.75</math>) transport and fluctuations levels, and the ITPA T&C group work on this topic.  Below are links to key references documenting the issue, equilibrium profiles (in the GACODE input.profiles ASCII format) for DIII-D shot 128913 @ 1500 ms which has been the primary discharge for investigating this issue, and results to date from various codes. We encourage and welcome any and all groups interested in investigating this issue with their model or theory to use the profile data below, and compare their results against those documented here.  Questions and comments should be directed to [mailto:chholland@ucsd.edu Chris Holland].

Key publications and presentations
----------------------------------

1. A. E. White, L. Schmitz, G. R. McKee, C. Holland, W. A. Peebles, T. A. Carter, M. W. Shafer, M. E. Austin, K. H. Burrell, J. Candy, J. C. DeBoo, E. J. Doyle, M. A. Makowski, R. Prater, T. L. Rhodes, G. M. Staebler, G. R. Tynan, R. E. Waltz, and G. Wang, “Measurements of core electron temperature and density fluctuations in DIII-D and comparison to nonlinear gyrokinetic simulations,” Physics of Plasmas '''15''' 056116 (2008)

2. C. Holland, A. E. White, G. R. McKee, M. W. Shafer, J. Candy, R. E. Waltz, L. Schmitz, and G. R. Tynan, “Implementation and Application of Two Synthetic Diagnostics for Validating Simulations of Core Tokamak Turbulence,” Physics of Plasmas '''16''' 052301 (2009)

3.  {{file|Holland_2012_fall_ITPA.pdf| Holland 2012 fall T&C ITPA presentation}}

4. R. V. Bravenec, J. Candy, M.Barnes, and C. Holland, “Linear and nonlinear verification of gyrokinetic microstability codes,” Physics of Plasmas '''18''', 122505 (2011) [GYRO-GS2 benchmark at <math>\rho=0.5</math> for this shot]

Experimental profiles
---------------------

* Equilibrium profiles (including Miller parameterization of magnetic geometry) in ASCII input.profiles format is {{file|input.profiles.128913_shortfall.txt| here}}.
* The associated input.profiles.geo file is available {{file|input.profiles.geo.128913_shortfall.txt| here}} for those interested in investigating effects of possible up-down asymmetry effects.  Alternatively, the EFIT gfile used for this analysis can be found {{file|g128913.01500_shortfall.txt| here}}.
* Note that there may be small numerical (but not qualitative) differences between the profiles in these files and the values reported in Ref. 2 due to 4+ years of code evolution since the original publication.  We '''strongly''' urge all future work use the updated {{file|input.profiles.128913_shortfall.txt| input.profiles}} file for future studies, to ensure a common starting point and basis for comparison.

GYRO results
------------

* A series of linear electrostatic initial-value growth rate convergence calculations have been performed, the results of which are shown here
[[Image:d3d128913.r8.linscan.convergence.png|600px]]
* The base case (electrostatic, finite electron-ion collisions, drift-kinetic electrons) GYRO input file can be found {{file|input.gyro.128913_shortfall.txt| here}} and output summary file {{file|out.gyro.run.128913_shortfall.txt| here}}. 
* Error bars are plotted as standard deviations of time-averaged values, generally taken over <math>t=[30:\ge 100] a/c_s</math>.  
* Text files with results for this figure can be found here: {{file|es_collon_linfreq.128913_shortfall.txt| base case}}, {{file|es_dt5-3_linfreq.128913_shortfall.txt| <math>h = 0.005</math>}}, {{file|es_NX50_linfreq.128913_shortfall.txt| <math>NX=50</math>}}, {{file|es_EG10_linfreq.128913_shortfall.txt| <math>ENERGY\_GRID=10</math>}},
{{file|es_PTG5_linfreq.128913_shortfall.txt| <math>PASS\_GRID=TRAP\_GRID=5</math>}}, {{file|es_OG1PTG5_linfreq.128913_shortfall.txt| <math>ORBIT\_GRID=10, PASS\_GRID=TRAP\_GRID=5</math>}}, {{file|esRBF5_linfreq.128913_shortfall.txt| <math>5^{th}</math>-order RBF}}

* A second set of physics tests have been done, examining the effects of using only adiabatic electrons, inclusion of ion-electron collisions, and electromagnetic effects.  These results can be seen here
[[Image:d3d128913.r8.linscan.physics.png|600px]]
* Text files with results for this figure can be found here: {{file|ae_linfreq.128913_shortfall.txt| adiabatic electrons}}, {{file|es_colloff_linfreq.128913_shortfall.txt| ES & <math>\nu_{ei}=0</math>}}, {{file|es_collon_linfreq.128913_shortfall.txt| ES & finite <math>\nu_{ei}</math>}}, {{file|em_colloff_linfreq.128913_shortfall.txt| EM & <math>\nu_{ei}=0</math>}}, {{file|em_collon_linfreq.128913_shortfall.txt| EM & finite <math>\nu_{ei}</math>}}

=== GKW results (added 25-jan-2013) ===

[[Image:d3d128913.r8.GKW_freq.physics.png|600px]]
[[Image:d3d128913.r8.GKW_gamma.physics.png|600px]]

Text files for GKW electrostatic growth rates with: {{file|es_colloff_linfreq.GKW.128913_shortfall.txt| no collisions}} and {{file|es_pacollon_linfreq.GKW.128913_shortfall.txt| pitch-angle scattering only}}.

=== Cross-code benchmarking results ===
* The first completed benchmarking study compares results from the gyrokinetic  [[Gyro | GYRO]], [http://sourceforge.net/apps/mediawiki/gyrokinetics GS2], [http://cips.colorado.edu/simulation/gem.htm GEM], and [http://www.ipp.mpg.de/~fsj/gene/ GENE] codes, as well as the gyrofluid [[TGLF | TGLF]] model.  GYRO, GS2, GKW and GENE are continuum Eulearian (although with different velocity-space discretizations) codes, while GEM is a particle-in-cell code.  Unless otherwise noted, the results shown below are for electromagnetic, collisional simulations with a single gyrokinetic ion species.

* '''Update 25-jan-2013:''' Results from the continuum gyrokinetic [http://gkw.googlecode.com/ GKW] code have been added.
* '''Update 27-mar-2013:''' Results from the gyrofluid [[TGLF | TGLF]] model have been added.
* '''Update 30-may-2013:''' Results from the continuum gyrokinetic [http://www.ipp.mpg.de/~fsj/gene/ GENE] code have been added.

[[Image:d3d128913.r8.linscan.GYROvsGENEvsGS2vsGEMvsGKWvsTGLF.png|600px]]

'''Comparison of GYRO, GKW, and GENE linear calculations with no collisions and Miller geometry'''

[[Image:d3d128913.r8.linscan.GYROvsGKWvsGENE_nocoll.png|600px]]

Individual code results are here for cases with finite collisions: {{file|em_collon_linfreq.128913_shortfall.txt| GYRO}}, {{file|em_collon_linfreq.GS2.128913_shortfall.txt| GS2}}, {{file|em_collon_linfreq.GEM.128913_shortfall.txt| GEM}}, {{file|es_pacollon_linfreq.GKW.128913_shortfall.txt| GKW}}, {{file|em_collon_linfreq.TGLF.128913_shortfall.txt| TGLF}}, and {{file|D3D_128913_lin_em_miller_pitch_GENE.txt| GENE}}.    

Individual code results are here for cases with no collisions: {{file|es_colloff_linfreq.128913_shortfall.txt| GYRO}}, {{file|es_colloff_linfreq.GKW.128913_shortfall.txt| GKW}}, and {{file|D3D_128913_lin_es_miller_colloff_GENE.txt| GENE}}.  

A special thanks to [mailto:rvbravenec@4th-state.com Ron Bravenec] for providing the GS2 and GEM data, [mailto:y.pocari@gmail.com Yann Camenen] for the GKW results, and [mailto:tbg@ipp.mpg.de Tobias Görler] for the GENE results.

   
