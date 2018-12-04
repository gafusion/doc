GYRO and Gyrokinetic Simulation in the 2000s
============================================

*[This overview was written during the period 2006-2008]*

----

In the text below we describe the prehistory, history and present use of the GYRO code.  A broad spectrum of published code applications is summarized, and the key role played by GYRO within the US fusion program is clarified.  More historical details can be found in the Spring 2008 Issue of SciDAC review, whereas the [https://github.com/gafusion/doc/raw/master/gyro/gyro_technical_manual.pdf Technical Manual] provides a detailed description of the underlying equations and discretization schemes.

Prehistory 
----------

The use of gyrokinetic codes at General Atomics began in 1994 with the acquisition of the linear gyrokinetic stability code GSTOTAL ([[Kotschenreuther1995a]]).  GSTOTAL was an Eulerian initial-value code with trapped and passing particles (ions and electrons) as well as collisional and electromagnetic physics.  GSTOTAL represented an enormous technical advance in simulation capability, comparable in significance to Kotschenreuther's prior invention of the well-known :math:`\delta f` method ([[Kotschenreuther1988a]]) for particle simulation. The time-advance scheme in GSTOTAL was *fully implicit* and allowed use of timesteps much larger than those imposed by the electron parallel Courant limit. Historically speaking, GSTOTAL was the first step toward a practical *nonlinear* gyrokinetic code.  With the addition of plasma shaping and finite-:math:`\delta B` effects, GSTOTAL evolved into the linear stability code GKS.  GKS has been routinely used in DIII-D experimental studies for over a decade.  Combined with results from nonlinear flux-tube gyrofluid simulations ([[Waltz1994a]], [[Waltz1995a]]), GKS was crucial in the development of GLF23 ([[Waltz1997a]]), one of the most popular transport models worldwide. 

In what follows, we will draw a distinction between local and global simulations.  In this context, ''local'' means ''flux-tube''.  Flux-tube simulations represent the <math>\rho_*\rightarrow 0</math> limit of global simulations, for which the transport scaling is purely gyroBohm ([[Candy2004a]]) <ref>Practically speaking, global simulations allow modest profile variation within the simulation domain, where local simulations consider fixed temperature, density, shape, etc.  Even global simulations, however, must enforce the formal restrictions imposed by the gyrokinetic ordering.</ref>.  Here, <math>\rho_* = \rho_s/a\,\!</math> is the ratio of gyroradius to system size, with <math>\rho_s\,\!</math> the ion-sound Larmor radius, and <math>a\,\!</math> the plasma minor radius.  

Nonlinear flux-tube ''gyrofluid'' simulations by Beer, Dorland, Hammett, Snyder, Waltz and others provided the key physics discoveries in the mid-1990s, years before the same phenomena were observed in gyrokinetic simulations.

{| style="width:100%;text-align:left;background:lightpink" align=center cellpadding=10
|-
| Gyrofluid simulations demonstrated that nonlinear, self-generated (zonal) flows control the nonlinear saturation of transport ([[Waltz1994a]], [[Waltz1995a]], [[Dorland1993a]], [[Hammett1994a]], [[Beer1996a]]), and that equilibrium ExB shear can quench transport if the shearing rates are comparable to maximum linear growth rates ([[Waltz1994a]], [[Waltz1995a]]).
|}

Nonlinear gyrofluid codes were the first to treat trapped electron ([[Beer1996a]]) and electromagnetic ([[Snyder2001a]]) turbulence.  The first major contribution from nonlinear ''gyrokinetic'' codes was the verification of the importance of Rosenbluth-Hinton (RH) residual flows ([[Rosenbluth1998a]]) as demonstrated by the flux-tube particle-in-cell (PIC) code PG3EQ ([[Dimits1996a]]). RH flows were shown to give rise to an upshift in the nonlinear threshold for ITG-ae <ref>Here, ITG-ae means ion-temperature-gradient modes with adiabatic electrons</ref> turbulence. The nonlinear upshift was later named the ''Dimits shift'' after its discoverer.  The difficulty in properly treating this residual in gyrofluid models was one motivating factor for a switch from gyrofluid to gyrokinetic simulation.  To this end, by building upon the GSTOTAL implicit scheme, Dorland and co-workers created the '''nonlinear Eulerian gyrokinetic code''', GS2 ([[Dorland2000a]]).

{| style="width:100%;text-align:left;background:lightpink" align=center cellpadding=10
|-
| GS2 ([[Dorland2000a]]) was the first nonlinear gyrokinetic code to include the crucial nonadiabatic electron dynamics required for trapped electron mode and electromagnetic physics. 
|}


== Design History ==
Development of GYRO started in 1999.  The primary goal was to generalize GS2 by retaining profile-variation effects to allow, in principle, deviations from pure gyroBohm scaling.  The numerical methods for GYRO were initially patterned after GS2 wherever possible.  In the end, many significant departures from GS2 were required to meet the GYRO design target ''and'' to simultaneously increase computational efficiency.  

{| style="width:100%;text-align:left;background:lightpink" align=center cellpadding=10
|-
| By 2001, GYRO had the ability to operate either globally using Dirichlet (zero-value) radial boundary conditions, or locally using flux-tube (periodic) boundary conditions.  
|}

An implicit-explicit Runge-Kutta (IMEX-RK) integrator was eventually added to overcome the electrostatic-Alfven wave Courant limit, which can severely limit the timestep for large-domain simulations.   Independently, a novel poloidal discretization scheme solved the ''Ampere cancellation problem'' ([[Candy2003a]]).  The latter pathology hampered electromagnetic PIC simulation for over a decade.  To date, only a single PIC code ([[Chen2003a]]) has successfully treated finite-<math>\beta</math> fluctuations with full electron dynamics, and only after implementing an analog of the GYRO scheme.  

{| style="width:100%;text-align:left;background:lightpink" align=center cellpadding=10
|-
| By 2002, GYRO ([[Candy2003a]]) achieved robust operation with its physics design targets.  This was demonstrated ([[Candy2003b]]) in realistic simulations of dimensionally similar Bohm scaled DIII-D L-mode discharges.
|}


== Yearly Publication Synopsis ==

A PDF version of this {{file|GYRO-FiveYear.01.27.09.pdf|Synopsis}} is also available.

=== 2002 ===
The first application of GYRO was to use the global capability with adiabatic electons to systematically examine the breaking of gyroBohm scaling (including what are now called, somewhat ambiguously, ''nonlocal'' or ''turbulence spreading'' effects) via profile variation ([[Waltz2002a]]).

=== 2003 ===
GYRO numerical algorithms were documented ([[Candy2003a]]), although publication was significantly delayed after the first submission was lost in transit.  A significant amount of linear and nonlinear benchmark data related to the Cyclone base case was given, as were parameter scans for nonlinear electromagnetic variants of the Cyclone case.  On the experimental side, simulations of DIII-D L-mode discharges were shown to match experimental power flow data within error bars ([[Candy2003b]]) on the ion temperature gradient.  These simulations were physically realistic, and included finite-<math>\beta</math> effects, and collisional electron physics at real mass ratio, equilibrium ExB and profile shearing, as well as plasma shaping. 

=== 2004 ===
Turbulent dynamos in the tokamak current-voltage relation ([[Hinton2004a]]) were studied, showing that the turbulent dynamo EMF drives large current density corrugations at low-order rational surfaces, but little net current.  In other work, we attempted to correct misunderstanding generated by a highly-publicized global <math>\rho_*\,\!</math>-scan ([[Lin2002a]]) with highly artificial profiles.  The single scan appeared to suggest a universal range in <math>\rho_*\,\!</math> marking the transition from Bohm to gyroBohm scaling.  GYRO work established that the transition '''cannot''' be characterized by a universal curve; rather, the transition is highly dependent on the profile shape ([[Candy2004a]]) <ref>The transition is also dependent on the closeness to marginality ([[Candy2003b]], [[Waltz2002a]]).</ref>. 

During this period, there were persistent claims from certain groups that transport is depressed near a <math>q_{\rm min}\,\!</math>-surface where there is a ''gap'' in singular surfaces ([[Kishimoto2000a]]).  Global GYRO simulations indicated that transport flows tends to vary monotonically across <math>q_{\rm min}\,\!</math> surfaces ([[Candy2004b]]) (as expected from linear theory and flux-tube gyrofluid simulations ([[Waltz1994a]], [[Waltz1995a]]) due to the appearance of nonresonant modes. These modes are absent in some simplified gyrofluid simulations which at first appeared to confirm the barrier hypothesis. 

=== 2005 ===
The first systematic gyrokinetic study of particle transport and impurity dynamics was made with GYRO as thesis work for a UCSD graduate student.   In particular, temperature-gradient-induced particle pinches, thermal and energetic helium ash transport, differential flows in D-T plasmas, and collisional effects on particle pinches were examined ([[Estrada2005a]]).  Scans in temperature and density gradients (moving from ITG- to TEM-dominated transport), <math>T_i/T_e\,\!</math>, ExB and parallel velocity shear ([[Kinsey2005a]]) were also published.  

A detailed study of the beta-dependence of electron and ion transport was made ([[Candy2005a]]).  This latter work documents the so-called ''beta runaway'' phenomenon, which occurs at about half of the MHD crictical beta; as of Winter 2009, it remains an unsolved problem in gyrokinetics. 

Using a profile feedback scheme, simulations starting with DIII-D L-mode profiles successfully (and slightly) relaxed the experimental temperature and density so that simulated power flows matched experimental ones ([[Waltz2005a]]).  This sort of capability was an early landmark in the development of a more comprehensive steady-state gyrokinetic transport code.  GYRO simulations also yielded several examples of nonlocal transport ([[Waltz2005b]], [[Waltz2005c]]); in particular, turbulence ''draining'' from unstable to less unstable (or stable) regions.  At this time, the detailed radial structure of nonlinear profile perturbations was also explored: persistent (i.e., time-averaged) structure tied to rational surfaces ([[Waltz2005a]], [[Candy2005a]]) was found when electrons are kinetic.  These ''corrugation'' structures are electrostatic in nature, and most pronounced for lower-order surfaces 

:<math>q = \frac{1}{1}, \frac{2}{1}, \frac{3}{1}, \ldots</math> ,

and are weaker for successively higher-order surfaces, like 

:<math>q = \frac{1}{2}, \frac{3}{2}, \frac{5}{2}, \ldots</math> .

The width of these structures is on the order of a few ion gyroradii.

=== 2006 ===
GYRO results showed that ITG/TEM turbulence could induce the transport of energetic fusion alpha particles ([[Estrada2006a]]).
Systematic safety factor, magnetic shear, and MHD alpha parameter scans ([[Kinsey2006a]]) were carried out.  Theory and simulations of gyrokinetic turbulent heating ([[Hinton2006a]]) were published.  GYRO simulations which perfectly project profiles from dimensionally similar DIII-D discharges verified that the L-modes did indeed have Bohm scaling, and that the experimentally-inferred gyroBohm scaling in some H-modes was actually due to experimental profile ''dissimilarity'' ([[Waltz2006a]]).   The predicted ''profile corrugations'' in the electron temperature gradient were observed in <math>q_{\rm min} = 2\,\!</math> DIII-D discharges, and the attending ExB shear layer is believed to be the trigger for low-power reversed shear ITB formation ([[Waltz2006b]]).  Density peaking via a particle pinch was demonstrated for a DIII-D L-mode plasma ([[Estrada2006b]]).

In studies relating to the foundation of gyrokinetic theory, the connection between velocity-space resolution, entropy production and conservation, and numerical dissipation was rigorously demonstrated ([[Candy2006a]]), and the parallel nonlinearity was shown to be asymptotically subdominant (as required by the gyrokinetic ordering) to have a negligible effect on energy transport for experimentally-relevant discharges ([[Candy2006b]]).  

=== 2007 ===
The capability to simultaneously treat electron and ion gyroaverages, and thus to perform fully-coupled, multi-scale ITG-ETG simulations, was added to GYRO ([[Candy2007b]]).  The results of these simulations allowed us to make significant progress on the problem of electron-scale transport using coupled ITG/TEM-ETG turbulence at a reduced ion-to-electron mass ratio.  We were able to
* identify the failure of the popular adiabatic ion model of ETG transport ([[Candy2007a]]), 
* demonstrate the isotropy of short-wavelength fluctuations ([[Waltz2007a]], [[Candy2007a]]) in the presence of long-wavelength ITG/TEM instabilities,
* demonstrate the potential for ITG/TEM-scale instabilities to drive ETG transport in ETG-stable regimes ([[Waltz2007a]]),
* demonstrate the potential for ETG transport to decouple from ITG transport in regimes where both are unstable ([[Waltz2007a]]),
* demonstrate the reduction of ETG-transport by increasing ITG/TEM free energy ([[Candy2007b]]),
* demonstrate a "universal range" for ETG transport ([[Candy2007b]]),
* clarify {{file|etg_prl_comment.pdf|errors made in previous PIC simulations of ETG turbulence}}. 

The first systematic studies of gyrokinetic momentum transport ([[Waltz2007b]]), including the effects of the angular momentum pinch from ExB shear as well as the coriolis pinch, were published, and the effect of plasma shape on ExB shear quenching and transport was studied ([[Kinsey2007a]]).

=== 2008 ===
The next step in the validation of GYRO was also begun, with the development and application of synthetic BES and CECE diagnostics to allow direct comparisons of GYRO fluctuation predictions against DIII-D core turbulence measurements.  The initial results have been presented at a number of conferences and published in multiple journals ([[White2008]], [[Holland2008]]).  The initial study focused upon modeling a steady, MHD-free L-mode DIII-D discharge, with the primary conclusions that:

# Using local, fixed-gradient simulations, GYRO could match the "experimental" (as calculated via a ONETWO power balance analysis) energy flows within experimental gradient uncertainties for r/a < 0.6 (where r/a denotes normalized toroidal flux), but systematically underpredicted the energy flow at larger radii.
# When the effects of the synthetic diagnostics were included, local GYRO simulations also accurately reproduced measured fluctuation spectra and correlation lengths at r/a = 0.5, but underpredicted the measured fluctuation amplitudes at r/a = 0.75 by an amount consistent with the underprediction of the energy fluxes.  Interestingly, the shapes of the spectra and the correlation functions were still accurately reproduced at r/a = 0.75.

What the source of the energy flow underprediction is, why the correlation functions and spectral shapes but not amplitudes are accurately predicted at r/a = 0.75, and whether these results hold for other experimental conditions remain open questions under active investigation at this time.

More results related to gyrokinetic turbulent heating ([[Waltz2008a]]) were published, and a study of GAMs in the context of the drift-wave-zonal-flow paradigm was carried out ([[Waltz2008b]]) showing that it applies equally well to long-wavelength ITG/TEM and short-wavelength ETG turbulence.

Significant progress on [[Neooverview | neoclassical]] and [[ tgyrooverview | steady-state transport physics]] was also made; these lines of research have a separate wiki.

=== 2009 ===

Researchers from MIT were able to demonstrate good agreement between GYRO and C-Mod experiment via synthetic PCI diagnostics ([[Llin2009]]). 


== A Computational Science and User Perspective ==
GYRO owes it's computational efficiency in part to the strong support from the ORNL Center for Computational Science (CCS).  GYRO runs well on a wide range of small clusters to large supercomputers.  One can move between platforms seamlessly by setting a [[gyroplatforms|single environment variable]].  GYRO was among the earliest applications ported to the Cray X1 and XT3 at ORNL.  The code is modular and the layout is carefully organized.  There are few uses of esoteric language features.  Initial X1 optimizations to take advantage of multistreaming and vectorization were quite successful for all but the collision operator.  A later effort to improve the performance on the collision operator yielded a factor-of-ten improvement on the X1, with an average 10% improvement on IBM and commodity systems.  Recent PERC data is available which analyzes GYRO performance on various HPC systems ([[Worley2005a]]) using the IPM, KOJAK, SvPablo, TAU and PMaC modeling tool suite.  Additional GYRO performance data on various systems (including the Cray X1, XD1 and XT3) has been presented by Vetter ([[Vetter2005a]]), Worley ([[Worley2005b]]) and Fahey ([[Fahey2004a]]).  GYRO is presently so reliable that it is routinely used by ORNL staff to diagnose ''system hardware and software issues''.  For example, chassis interconnect problems on the XD1, filesystem slowdown in the XT3, and memory management issues on the SGI Altix.
 
From the point of view of ''utility'', the Eulerian codes GS2 and GYRO are set apart from all other codes in the US program in that they have a large (and growing) non-developer users group.  [[gyrousers|A list of GYRO users is here]].  Numerous painstaking simulations of DIII-D, JET, JT60, and NSTX discharges have been made.  R. Bravenec and C. Holland have developed synthetic diagnostic tools to analyze GYRO data.

In addition to many Cyclone-based scans, we maintain a [http://fusion.gat.com/theory/Gyrousers transport database] containing over 300 well-resolved flux tube simulations based on the GA standard case parameters ([[Waltz1997a]]).  Nearly all of these give particle and energy transport coefficients for both electrons and ions.  Some also include momentum transport.   Additional scans are continuously being added to the database.  In our view, compiling a database of simulations is a key practical end-product of nonlinear gyrokinetic simulations.  This database provides the benchmarks and validation for the GA advanced gyrofluid transport model TGLF ([[Staebler2005a]], [[Staebler2007a]]).  

== Urban Legends ==
The Eulerian codes GS2 and GYRO have had to confront a number of [http://en.wikipedia.org/wiki/Urban_legend urban legends] mostly in the form of unpublished/unsubstantiated claims circulating within the Fusion theory community. These seem to originate from researchers having no first-hand experience with either Eulerian schemes or local simulations.  We number these for future reference.

=== UL1: The local gyroBohm limit of global codes differs from local codes ===
This cannot be true.  As <math>\rho_*\,\!</math> vanishes, the transport obtained from a global code reaches a limiting value at a given radial location.  This limiting value (i.e., the gyroBohm scaled limit) is identical to the local simulation result.  This not only provides the physical meaning of a local simulation, but is an important test of validity for local and global codes alike.  GYRO has passed this test repeatedly ([[Candy2004a]], [[Waltz2002a]]).

=== UL2: Full torus simulations are necessary to correctly compute the local transport ===
DIII-D full-physics simulations which span 1/6th of a torus, 1/3rd of a torus, 1/2 of a torus, and a full torus give transport diffusivities which differ only by few percent ([[Waltz2005a]]). In fact, full-torus simulations are generally wasteful of computer resources.  Global codes which are limited to full torus operation could obtain significantly more accurate results by simulating only a fraction of a torus but operating with a higher number of particles per cell and/or spatial resolution.

=== UL3: Eulerian codes have inadequate velocity-space resolution ===
The truth is in fact quite the opposite.  Published GYRO simulations are always checked for adequate grid convergence by the standard method of grid refinement.  GYRO has a particularly efficient velocity-space discretization scheme which suffers no accuracy loss even when the distribution is nearly discontinuous across the trapped-passing boundary.  We typically use 128 velocity gridpoints per real-space cell.  This is roughly equivalent to 128 particles per cell (PPC) in terms of points where the distribution function is known.  We emphasize that this was, until recently, '''significantly more''' than that typically used in PIC simulations.<ref>Since the publication of the Nevins-Hammett theory of PIC noise [[Nevins2005a]], the typical number of particles per cell in PIC simulations seems to have grown, whereas the GYRO resolution has remain unchanged over approximately 6 years and probably over a thousand simulations.</ref> We have verified that no significant fine-scale structure in the distribution is being ignored or ''coarse-grained''.  Recent GYRO work ([[Candy2006a]]) demonstrates a detailed steady-state balance between production of fluctuations and (numerical) dissipation, thus resolving the ''entropy paradox'' in a manner consistent with the picture developed by Krommes ([[Krommes1994a]], [[Krommes1999a]]).  The numerical dissipation is also shown to be so small that it does not affect the observed transport.

=== UL4: The parallel nonlinearity can have a dramatic effect on the transport ===
This is false for realistic core tokamak parameters.  The so-called parallel nonlinearity (a velocity-space nonlinearity which is formally one order smaller in <math>\rho_*\,\!</math> than other terms in the gyrokinetic equations) is only one of several small terms commonly neglected in the standard operation of gyrokinetic codes.  GYRO has shown ([[Candy2006b]]) that the parallel nonlinearity has no statistically significant effect on the diagnosed transport when <math>\rho_* < 0.01\,\!</math>. Moreover, the parallel nonlinearity has nothing whatsoever to do with the entropy paradox or with producing steady-states of turbulence.  To be clear the parallel nonlinearity (related to the nonlinear Landau damping and to wave-particle trapping) is the physical origin of a small turbulent heating source. GYRO is the first code to diagnostically calculate this heating ([[Hinton2005a]]).

