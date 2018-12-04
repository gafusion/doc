.. |exb| mathmacro:: \mathbf{E}\times\mathbf{B}

Gyrokinetic Simulation in the 2000s
===================================

*[This overview was written during the period 2006-2009]*

----

In the text below we describe the prehistory, history and present use of the GYRO code.  A broad spectrum of published code applications is summarized, and the key role played by GYRO within the US fusion program is clarified.  More historical details can be found in the Spring 2008 Issue of SciDAC review, whereas the
`Technical Manual <https://github.com/gafusion/doc/blob/master/manuals/gyro/gyro_technical_manual.pdf>`_  provides a detailed description of the underlying equations and discretization schemes.

Prehistory 
----------

The use of gyrokinetic codes at General Atomics began in 1994 with the acquisition of the linear gyrokinetic stability code GSTOTAL :cite:`kotschenreuther:1995`.  GSTOTAL was an Eulerian initial-value code with trapped and passing particles (ions and electrons) as well as collisional and electromagnetic physics.  GSTOTAL represented an enormous technical advance in simulation capability, comparable in significance to Kotschenreuther's prior invention of the well-known :math:`\delta f` method :cite:`kotschenreuther:1988` for particle simulation. The time-advance scheme in GSTOTAL was *fully implicit* and allowed use of timesteps much larger than those imposed by the electron parallel Courant limit. Historically speaking, GSTOTAL was the first step toward a practical *nonlinear* gyrokinetic code.  With the addition of plasma shaping and finite-:math:`\delta B` effects, GSTOTAL evolved into the linear stability code GKS.  GKS has been routinely used in DIII-D experimental studies for over a decade.  Combined with results from nonlinear flux-tube gyrofluid simulations :cite:`waltz:1994,waltz:1995`, GKS was crucial in the development of GLF23 :cite:`waltz:1997`, one of the most popular transport models worldwide. 

In what follows, we will draw a distinction between local and global simulations.  In this context, *local* means *flux-tube*.  Flux-tube simulations represent the :math:`\rho_* \rightarrow 0` limit of global simulations, for which the transport scaling is purely gyroBohm :cite:`candy:2004a` [1]_.   Here, :math:`\rho_* = \rho_s/a` is the ratio of gyroradius to system size, with :math:`\rho_s` the ion-sound Larmor radius, and :math:`a` the plasma minor radius.  

Nonlinear flux-tube ''gyrofluid'' simulations by Beer, Dorland, Hammett, Snyder, Waltz and others provided the key physics discoveries in the mid-1990s, years before the same phenomena were observed in gyrokinetic simulations.

.. important:: Gyrofluid simulations demonstrated that nonlinear, self-generated (zonal) flows control the nonlinear saturation of transport :cite:`waltz:1994,waltz:1995,dorland:1993,hammett:1994,beer:1996b`, and that equilibrium :math:`\exb` shear can quench transport if the shearing rates are comparable to maximum linear growth rates :cite:`waltz:1994,waltz:1995`.

Nonlinear gyrofluid codes were the first to treat trapped electron :cite:`beer:1996` and electromagnetic :cite:`snyder:2001` turbulence.  The first major contribution from nonlinear *gyrokinetic* codes was the verification of the importance of Rosenbluth-Hinton (RH) residual flows :cite:`rosenbluth:1998` as demonstrated by the flux-tube particle-in-cell (PIC) code PG3EQ :cite:`dimits:1996`. RH flows were shown to give rise to an upshift in the nonlinear threshold for ITG-ae [2]_ turbulence. The nonlinear upshift was later named the *Dimits shift* after its discoverer.  The difficulty in properly treating this residual in gyrofluid models was one motivating factor for a switch from gyrofluid to gyrokinetic simulation.  To this end, by building upon the GSTOTAL implicit scheme, Dorland and co-workers created the **nonlinear Eulerian gyrokinetic code** GS2 :cite:`dorland:2000`.

.. important:: GS2 :cite:`dorland:2000` was the first nonlinear gyrokinetic code to include the crucial nonadiabatic electron dynamics required for trapped electron mode and electromagnetic physics. 

Design History
--------------
	       
Development of GYRO started in 1999.  The primary goal was to generalize GS2 by retaining profile-variation effects to allow, in principle, deviations from pure gyroBohm scaling.  The numerical methods for GYRO were initially patterned after GS2 wherever possible.  In the end, many significant departures from GS2 were required to meet the GYRO design target *and* to simultaneously increase computational efficiency.  

.. important:: By 2001, GYRO had the ability to operate either globally using Dirichlet (zero-value) radial boundary conditions, or locally using flux-tube (periodic) boundary conditions. 

An implicit-explicit Runge-Kutta (IMEX-RK) integrator was eventually added to overcome the electrostatic-Alfvén wave Courant limit, which can severely limit the timestep for large-domain simulations.  Independently, a novel poloidal discretization scheme solved the **Ampere cancellation problem** :cite:`candy:2003`.  The latter pathology hampered electromagnetic PIC simulation for over a decade.  To date, only a single PIC code :cite:`chen:2003` has successfully treated finite-:math:`\beta` fluctuations with full electron dynamics, and only after implementing an analog of the GYRO scheme.  

.. important:: By 2002, GYRO :cite:`candy:2003` achieved robust operation with its physics design targets.  This was demonstrated :cite:`candy:2003b` in realistic simulations of dimensionally similar Bohm scaled DIII-D L-mode discharges.

Yearly Publication Synopsis
---------------------------	       

2002
^^^^

The first application of GYRO was to use the global capability with adiabatic electons to systematically examine the breaking of gyroBohm scaling (including what are now called, somewhat ambiguously, *nonlocal* or *turbulence spreading* effects) via profile variation :cite:`waltz:2002`.

2003
^^^^

GYRO numerical algorithms were documented :cite:`candy:2003`, although publication was significantly delayed after the first submission was lost in transit.  A significant amount of linear and nonlinear benchmark data related to the Cyclone base case was given, as were parameter scans for nonlinear electromagnetic variants of the Cyclone case.  On the experimental side, simulations of DIII-D L-mode discharges were shown to match experimental power flow data within error bars :cite:`candy:2003b` on the ion temperature gradient.  These simulations were physically realistic, and included finite-:math:`\beta` effects, and collisional electron physics at real mass ratio, equilibrium :math:`\exb` and profile shearing, as well as plasma shaping. 

2004
^^^^

Turbulent dynamos in the tokamak current-voltage relation :cite:`hinton:2004` were studied, showing that the turbulent dynamo EMF drives large current density corrugations at low-order rational surfaces, but little net current.  In other work, we attempted to correct misunderstanding generated by a highly-publicized global :math:`\rho_*`-scan :cite:`lin:2002` with highly artificial profiles.  The single scan appeared to suggest a universal range in :math:`\rho_*` marking the transition from Bohm to gyroBohm scaling.  GYRO work established that the transition **cannot** be characterized by a universal curve; rather, the transition is highly dependent on the profile shape :cite:`candy:2004a` [3]_.

During this period, there were persistent claims from certain groups that transport is depressed near a :math:`q_\mathrm{min}`-surface where there is a *gap* in singular surfaces :cite:`kishimoto:2000`.  Global GYRO simulations indicated that transport flows tends to vary monotonically across :math:`q_\mathrm{min}` surfaces :cite:`candy:2004b` (as expected from linear theory and flux-tube gyrofluid simulations :cite:`waltz:1994,waltz:1995`) due to the appearance of nonresonant modes. These modes are absent in some simplified gyrofluid simulations which at first appeared to confirm the barrier hypothesis. 

2005
^^^^

The first systematic gyrokinetic study of particle transport and impurity dynamics was made with GYRO as thesis work for a UCSD graduate student.   In particular, temperature-gradient-induced particle pinches, thermal and energetic helium ash transport, differential flows in D-T plasmas, and collisional effects on particle pinches were examined :cite:`estrada:2005`.  Scans in temperature and density gradients (moving from ITG- to TEM-dominated transport), :math:`T_i/T_e`, :math:`\exb` and parallel velocity shear :cite:`kinsey:2005` were also published.  

A detailed study of the beta dependence of electron and ion transport was made :cite:`candy:2005`.  This latter work documents the so-called *beta runaway* phenomenon, which occurs at about half of the MHD crictical beta; as of Winter 2009, it remains an unsolved problem in gyrokinetics. 

Using a profile feedback scheme, simulations starting with DIII-D L-mode profiles successfully (and slightly) relaxed the experimental temperature and density so that simulated power flows matched experimental ones :cite:`waltz:2005`.  This sort of capability was an early landmark in the development of a more comprehensive steady-state gyrokinetic transport code.  GYRO simulations also yielded several examples of nonlocal transport :cite:`waltz:2005b,waltz:2005c`; in particular, turbulence *draining* from unstable to less unstable (or stable) regions.  At this time, the detailed radial structure of nonlinear profile perturbations was also explored: persistent (i.e., time-averaged) structure tied to rational surfaces :cite:`waltz:2005,candy:2005` was found when electrons are kinetic.  These *corrugation* structures are electrostatic in nature, and most pronounced for lower-order surfaces 

.. math:: q = \frac{1}{1}, \frac{2}{1}, \frac{3}{1}, \ldots \; ,

and are weaker for successively higher-order surfaces, like 

.. math:: q = \frac{1}{2}, \frac{3}{2}, \frac{5}{2}, \ldots \; .

The width of these structures is on the order of a few ion gyroradii.

2006
^^^^

GYRO results showed that ITG/TEM turbulence could induce the transport of energetic fusion alpha particles :cite:`estrada:2006b`.  Systematic safety factor, magnetic shear, and MHD alpha parameter scans :cite:`kinsey:2006` were carried out.  Theory and simulations of gyrokinetic turbulent heating :cite:`hinton:2006` were published.  GYRO simulations which perfectly project profiles from dimensionally similar DIII-D discharges verified that the L-modes did indeed have Bohm scaling, and that the experimentally-inferred gyroBohm scaling in some H-modes was actually due to experimental profile *dissimilarity* :cite:`waltz:2006`.   The predicted *profile corrugations* in the electron temperature gradient were observed in :math:`q_\mathrm{min} = 2` DIII-D discharges, and the attending :math:`\exb` shear layer is believed to be the trigger for low-power reversed shear ITB formation :cite:`waltz:2006a`.  Density peaking via a particle pinch was demonstrated for a DIII-D L-mode plasma :cite:`estrada:2006`.

In studies relating to the foundation of gyrokinetic theory, the connection between velocity-space resolution, entropy production and conservation, and numerical dissipation was rigorously demonstrated :cite:`candy:2006`, and the parallel nonlinearity was shown to be asymptotically subdominant (as required by the gyrokinetic ordering) to have a negligible effect on energy transport for experimentally-relevant discharges :cite:`candy:2006b`.  

2007
^^^^

The capability to simultaneously treat electron and ion gyroaverages, and thus to perform fully-coupled, multi-scale ITG-ETG simulations, was added to GYRO :cite:`candy:2007b`.  The results of these simulations allowed us to make significant progress on the problem of electron-scale transport using coupled ITG/TEM-ETG turbulence at a reduced ion-to-electron mass ratio.  We were able to

* identify the failure of the popular adiabatic ion model of ETG transport :cite:`candy:2007`, 
* demonstrate the isotropy of short-wavelength fluctuations :cite:`waltz:2007,candy:2007` in the presence of long-wavelength ITG/TEM instabilities,
* demonstrate the potential for ITG/TEM-scale instabilities to drive ETG transport in ETG-stable regimes :cite:`waltz:2007`,
* demonstrate the potential for ETG transport to decouple from ITG transport in regimes where both are unstable :cite:`waltz:2007`,
* demonstrate the reduction of ETG-transport by increasing ITG/TEM free energy :cite:`candy:2007b`,
* demonstrate a *universal range* for ETG transport :cite:`candy:2007b`,
* clarify :download:`errors made in previous PIC simulations of ETG turbulence <etg_prl_comment.pdf>` .

The first systematic studies of gyrokinetic momentum transport :cite:`waltz:2007b`, including the effects of the angular momentum pinch from :math:`\exb` shear as well as the coriolis pinch, were published, and the effect of plasma shape on :math:`\exb` shear quenching and transport was studied :cite:`kinsey:2007`.

2008
^^^^

The next step in the validation of GYRO was also begun, with the development and application of synthetic BES and CECE diagnostics to allow direct comparisons of GYRO fluctuation predictions against DIII-D core turbulence measurements.  The initial results have been presented at a number of conferences and published in multiple journals :cite:`white:2008,holland:2008`.  The initial study focused upon modeling a steady, MHD-free L-mode DIII-D discharge, with the primary conclusions that:

1. Using local, fixed-gradient simulations, GYRO could match the *experimental* (as calculated via a ONETWO power balance analysis) energy flows within experimental gradient uncertainties for :math:`r/a < 0.6` (where :math:`r/a` denotes normalized toroidal flux), but systematically underpredicted the energy flow at larger radii.
2. When the effects of the synthetic diagnostics were included, local GYRO simulations also accurately reproduced measured fluctuation spectra and correlation lengths at :math:`r/a = 0.5`, but underpredicted the measured fluctuation amplitudes at :math:`r/a = 0.75` by an amount consistent with the underprediction of the energy fluxes.  Interestingly, the shapes of the spectra and the correlation functions were still accurately reproduced at :math:`r/a = 0.75`.

What the source of the energy flow underprediction is, why the correlation functions and spectral shapes but not amplitudes are accurately predicted at :math:`r/a = 0.75`, and whether these results hold for other experimental conditions remain open questions under active investigation at this time.

More results related to gyrokinetic turbulent heating :cite:`waltz:2008` were published, and a study of GAMs in the context of the drift-wave-zonal-flow paradigm was carried out :cite:`waltz:2008b` showing that it applies equally well to long-wavelength ITG/TEM and short-wavelength ETG turbulence.

Significant progress on **neoclassical** and **steady-state transport physics** was also made; these lines of research have a separate wiki.

2009
^^^^

Researchers from MIT were able to demonstrate good agreement between GYRO and C-Mod experiment via synthetic PCI diagnostics :cite:`llin:2009`. 


A Computational Science and User Perspective
--------------------------------------------

GYRO owes it's computational efficiency in part to the strong support from the ORNL Center for Computational Science (CCS).  GYRO runs well on a wide range of small clusters to large supercomputers.  One can move between platforms seamlessly by setting a **single environment variable**.  GYRO was among the earliest applications ported to the Cray X1 and XT3 at ORNL.  The code is modular and the layout is carefully organized.  There are few uses of esoteric language features.  Initial X1 optimizations to take advantage of multistreaming and vectorization were quite successful for all but the collision operator.  A later effort to improve the performance on the collision operator yielded a factor-of-ten improvement on the X1, with an average 10% improvement on IBM and commodity systems.  Recent PERC data is available which analyzes GYRO performance on various HPC systems :cite:`worley:2005` using the IPM, KOJAK, SvPablo, TAU and PMaC modeling tool suite.  Additional GYRO performance data on various systems (including the Cray X1, XD1 and XT3) has been presented by Vetter :cite:`vetter:2005`, Worley :cite:`worley:2005b` and Fahey :cite:`fahey:2004`.  GYRO is presently so reliable that it is routinely used by ORNL staff to diagnose *system hardware and software issues*.  For example, chassis interconnect problems on the XD1, filesystem slowdown in the XT3, and memory management issues on the SGI Altix.
 
From the point of view of *utility*, the Eulerian codes GS2 and GYRO are set apart from all other codes in the US program in that they have a large (and growing) non-developer users group.  Numerous painstaking simulations of DIII-D, JET, JT60, and NSTX discharges have been made.  R. Bravenec and C. Holland have developed synthetic diagnostic tools to analyze GYRO data.

In addition to many Cyclone-based scans, we maintain a :download:`transport database <gyro-database.pdf>` containing over 300 well-resolved flux tube simulations based on the GA standard case parameters :cite:`waltz:1997`.  Nearly all of these give particle and energy transport coefficients for both electrons and ions.  Some also include momentum transport.   Additional scans are continuously being added to the database.  In our view, compiling a database of simulations is a key practical end-product of nonlinear gyrokinetic simulations.  This database provides the benchmarks and validation for the GA advanced gyrofluid transport model TGLF :cite:`staebler:2005,staebler:2007`.  

Urban Legends
-------------

The Eulerian codes GS2 and GYRO have had to confront a number
of `urban legends <http://en.wikipedia.org/wiki/Urban_legend>`_ mostly in the form of unpublished/unsubstantiated claims circulating within the fusion theory community. These seem to originate from researchers having no first-hand experience with either Eulerian schemes or local simulations.  We number these for future reference.

UL1: The local gyroBohm limit of global codes differs from local codes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This cannot be true.  As :math:`\rho_*` vanishes, the transport obtained from a global code reaches a limiting value at a given radial location.  This limiting value (i.e., the gyroBohm scaled limit) is identical to the local simulation result.  This not only provides the physical meaning of a local simulation, but is an important test of validity for local and global codes alike.  GYRO has passed this test repeatedly :cite:`candy:2004a,waltz:2002`.

UL2: Full torus simulations are necessary to correctly compute the local transport
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

DIII-D full-physics simulations which span 1/6th of a torus, 1/3rd of a torus, 1/2 of a torus, and a full torus give transport diffusivities which differ only by few percent :cite:`waltz:2005`. In fact, full-torus simulations are generally wasteful of computer resources.  Global codes which are limited to full torus operation could obtain significantly more accurate results by simulating only a fraction of a torus but operating with a higher number of particles per cell and/or spatial resolution.

UL3: Eulerian codes have inadequate velocity-space resolution
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The truth is in fact quite the opposite.  Published GYRO simulations are always checked for adequate grid convergence by the standard method of grid refinement.  GYRO has a particularly efficient velocity-space discretization scheme which suffers no accuracy loss even when the distribution is nearly discontinuous across the trapped-passing boundary.  We typically use 128 velocity gridpoints per real-space cell.  This is roughly equivalent to 128 particles per cell (PPC) in terms of points where the distribution function is known.  We emphasize that this was, until recently, **significantly more** than that typically used in PIC simulations [4]_.  We have verified that no significant fine-scale structure in the distribution is being ignored or ''coarse-grained''.  Recent GYRO work :cite:`candy:2006` demonstrates a detailed steady-state balance between production of fluctuations and (numerical) dissipation, thus resolving the *entropy paradox* in a manner consistent with the picture developed by Krommes :cite:`krommes:1994,krommes:1999`.  The numerical dissipation is also shown to be so small that it does not affect the observed transport.

UL4: The parallel nonlinearity can have a dramatic effect on the transport
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This is false for realistic core tokamak parameters.  The so-called parallel nonlinearity (a velocity-space nonlinearity which is formally one order smaller in :math:`\rho_*` than other terms in the gyrokinetic equations) is only one of several small terms commonly neglected in the standard operation of gyrokinetic codes.  GYRO has shown :cite:`candy:2006b` that the parallel nonlinearity has no statistically significant effect on the diagnosed transport when `\rho_* < 0.01`. Moreover, the parallel nonlinearity has nothing whatsoever to do with the entropy paradox or with producing steady-states of turbulence.  To be clear the parallel nonlinearity (related to the nonlinear Landau damping and to wave-particle trapping) is the physical origin of a small turbulent heating source. GYRO is the first code to diagnostically calculate this heating :cite:`hinton:2006`.

.. [1] Practically speaking, global simulations allow modest profile variation within the simulation domain, where local simulations consider fixed temperature, density, shape, etc.  Even global simulations, however, must enforce the formal restrictions imposed by the gyrokinetic ordering.

.. [2] Here, ITG-ae means ion-temperature-gradient modes with adiabatic electrons.

.. [3] The transition is also dependent on the closeness to marginality :cite:`candy:2003b,waltz:2002`. 

.. [4] Since the publication of the Nevins-Hammett theory of PIC noise :cite:`nevins:2005`, the typical number of particles per cell in PIC simulations seems to have grown, whereas the GYRO resolution has remain unchanged over approximately 6 years and probably over a thousand simulations.
