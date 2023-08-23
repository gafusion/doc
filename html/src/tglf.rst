TGLF
====

Quick links
-----------

.. toctree::
   :titlesonly:

   tglf/tglf_table
   tglf/tglf_list
   tglf/tglf_output_list

Overview
--------

The TGLF model is a next generation gyro-Landau-fluid model that improves the accuracy of the trapped particle response and the finite Larmor radius effects compared to its predecessor, GLF23. The model solves for the linear eigenmodes of trapped ion and electron modes (TIM, TEM), ion and electron temperature gradient (ITG, ETG) modes and electromagnetic kinetic ballooning (KB) modes. The TGLF model generalizes the methods of GLF23 to a more accurate system of moment equations and an eigenmode solution method that is valid for shaped geometry and finite aspect ratio. The Miller equilibrium model is used in TGLF for shaped finite aspect ratio geometry. In the first phase of developing TGLF, the linear eigenmodes were benchmarked against a database of 1800 linear stability calculations using the GKS gyrokinetic code. The next phase focused on finding a saturation rule that used the quasilinear (QL) weights from TGLF and accurately fit the fluxes from nonlinear simulations. Using a database of 83 nonlinear GYRO simulations with Miller shaped geometry and kinetic electrons, a model for the saturated fluctuation intensity has been found. With a simple quasilinear (QL) saturation rule, remarkable agreement with the energy and particle fluxes from the GYRO database is obtained for both shaped or circular geometry and also for low aspect ratio. Using this new QL saturation rule along with a new ExB shear quench rule for shaped geometry, the density and temperature profiles have recently been predicted in over 500 transport code runs and the results compared against experimental data from 96 tokamak discharges from DIII-D, JET, and TFTR. Compared to GLF23, the TGLF model demonstrates better agreement between the predicted and experimental temperature profiles. Surprisingly, TGLF predicts that the high-k modes are found to play an important role in the central core region of low (L-mode) and high confinement (H-mode) plasmas lacking transport barriers. Using Miller finite aspect ratio shaped geometry in place of :math:`s\text{-}\alpha` infinite aspect ratio circular geometry results in larger transport (especially :math:`\chi_e`) and improved agreement with TFTR, which is circular. By contrast, we see little change in the agreement for DIII-D and JET, where the stabilizing effect of elongation compensates for the increase in :math:`\chi` due to finite aspect ratio. 

.. csv-table:: **References: TGLF saturation models**
   :header: "Device",  "Useful reference"
   :widths: 20,20

    SAT0, ":cite:`staebler:2007,kinsey:2008`"
    Spectral Shift,  ":cite:`staebler:2013,staebler:2013b`"
    SAT1,  ":cite:`staebler:2016`"
    SAT2,  ":cite:`staebler:2020,staebler:2021`"
    SAT3,  ":cite:`dudding:2022a,dudding:2022b`"

.. csv-table:: **References: TGLF validation against experimental data**
   :header: "Device",  "Required citation"
   :widths: 20,20

    DIII-D, ":cite:`grierson:2018,thome:2021`"
    NSTX,  ":cite:`kaye:2019`"
    ASDEX,  ":cite:`angioni:2022`"
