Computational Performance
=========================

**Updated April 2025**

Recent information about the computational approach and scaling performance of CGYRO :cite:`candy:2016,candy:2019,sfiligoi:2022,sfiligoi:2023` is documented here.
    
Computational Approach
----------------------

Library overview
^^^^^^^^^^^^^^^^

CGYRO is written in Fortran, with GPU accelerator optimizations implemented using OpenACC or OpenMP offloading, and communication with GPU-aware MPI. Heavy use of cuFFT/rocFFT is made for the nonlinear term. Analysis tools are based on Python scripts. Exceptional GPU scaling performance on OLCF Summit has been demonstrated through previous ALCC and INCITE Awards over the years 2019-2024. On Summit, the following modules were used: ``pgi, spectrum-mpi, fftw, netlib-lapack, essl, cuda, python.``  In early 2023, CGYRO was ported to OLCF Frontier :cite:`sfiligoi:2023`, and capability-scale simulations using more than 20% of the system were carried out in a 2023-2024 INCITE project. Over 87% of CGYRO usage for our 2024 INCITE was capability-scale (over 90% for 2023 INCITE), using at least 2048 nodes (8192 MI250X accelerators) on Frontier. On Frontier, CGYRO uses the HPE Cray Compiling Environment (CCE) Fortran compiler ``(PrgEnv-cray, cray-mpich)``, ``craype-accel-amd-gfx90a`` (for GPU-aware Cray mpich), ``cray-python, rocm`` and AMD ``hipfort`` providing Fortran interfaces for calling HIP libraries ``hipFFT/rocFFT``.

Gyrokinetic framework
^^^^^^^^^^^^^^^^^^^^^

CGYRO solves the nonlinear, electromagnetic gyrokinetic equations  :cite:`sugama:1998` for 5D particle distributions :math:`\Hf(k_x,k_y,\theta;\xi,{\rm v})`, where the subscript :math:`a` is the species index, and tildes indicate a Fourier-space quantity. The *spatial coordinates* are

.. math::
   :label: eq.coord

   \begin{align}
   k_x    & \rightarrow  \text{radial wavenumber}   \; ,  \\
   k_y    & \rightarrow  \text{binormal wavenumber} \; ,  \\ 
   \theta & \rightarrow  \text{field-line coordinate}
   \end{align}

where :math:`k_\perp^2 = k_x^2 + k_y^2`, and the *velocity-space* coordinates are

.. math::
   
   \xi = \vpar/{\rm v}  & \rightarrow  \text{pitch angle cosine} \in [-1,1] \; , \\
   {\rm v}              & \rightarrow  \text{speed} \in [0,\infty] \; .

The use of *twisted fieldline coordinates* gives radial wavenumbers :math:`k_x` that depend on :math:`\theta` and :math:`k_y` :cite:`candy:2016`. For this reason, we define a simple radial wavenumber :math:`\kx` (the value of :math:`k_x` at :math:`\theta=0`). The :math:`(k_x,k_y)` spectral representation facilitates the arbitrary wavelength formulation by diagonalizing the gyroradius operator. The GK equations are written in terms of an EM *field potential* :math:`\pf`,

.. math::
   :label: eq.fpto
	   
    \pf = J_{0}(k_\perp \rho_a) \left( \dphif - \frac{\vpar}{c} \dapf \right) + \frac{m_a {\rm v}_{\perp}^2}{z_{a} e B} \frac{J_{1}(k_\perp \rho_a)}{k_\perp \rho_a} \dbpf \; ,

where :math:`m_a, z_a` and :math:`\rho_a` are the species mass, charge and gyroradius.  Above, :math:`(\dphif,\dapf,\dbpf)` are the electrostatic and transverse/compressional EM potentials, respectively, computed from the gyrokinetic Maxwell equations :cite:`sugama:1998`.  The Bessel functions :math:`J_{0}` and :math:`J_{1}` arise from gyroaveraging. In terms of :math:`\pf`, the GK equation for species :math:`a` can be written as

.. math::
   :label: eq.gk
	   
   \frac{\partial \hf}{\partial \tau} + A(\Hf,\pf) + B(\Hf,\pf) = 0 \; ,

with :math:`\tau \doteq (c_s/a) t` the normalized time, :math:`a` the separatrix minor radius, :math:`c_s=\sqrt{T_e/m_D}` the deuteron (mass :math:`m_D`) sound speed, and :math:`T_e` the electron temperature. :math:`A(\Hf,\pf)` and :math:`B(\Hf,\pf)` represent the **collisionless** and **collisional** terms, respectively. In Eq. :eq:`eq.gk`, :math:`\Hf` is the *nonadiabatic distribution* whereas :math:`\hf` is a *modified distribution* suitable for numerical time-integration.  They are related through the field potential by :math:`\hf = \Hf - (z_a T_e)/T_a \pf`. 

.. math::
   :label: eq.maxwell

   \left( k_\perp^2 \lambda_D^2 n_e + \sum_a \frac{z_a^2 T_e}{T_a} n_a \right) \dphif & = \sum_a z_a e \int \hskip -3pt \dv f_{0a} J_0(k_\perp \rho_a) \Hf \; , \\
   - \frac{2 n_e}{\betae} k_\perp^2 \rho_s^2 \dapf & = \sum_a z_a e \int \hskip -3pt \dv \frac{\vpar}{c_s} f_{0a} J_0(k_\perp \rho_a) \Hf \; \\
     -\frac{2 n_e}{\betae} \frac{B}{B_{\rm unit}} \dbpf & = \sum_a \int \hskip -3pt \dv \frac{m_a {\rm v}_{\perp}^2}{T_e} f_{0a} \frac{J_1(k_\perp \rho_a)}{k_\perp \rho_a} \Hf \; .
  
Here :math:`\lambda_D = \sqrt{T_e/(4 \pi n_e e^2)}` is the Debye length and :math:`\betae = 8 \pi n_e T_e/\bunit^2` is the effective electron beta, where :math:`\bunit` is the effective magnetic field :cite:`candy:2010`.

Time advance
^^^^^^^^^^^^

Operator splitting is used to separate the evolution of :math:`A(\Hf,\pf)` and :math:`B(\Hf,\pf)`. This allows the nonlinear, collisionless dynamics :math:`(A)` to be treated explicitly, while the collisional dynamics :math:`(B)` is advanced implicitly.  First, the **collisionless step** operates primarily on the spatial dimensions and is distributed in the velocity dimensions, requiring solution of 

.. math::
   :label: eq.gk_a
	   
   \frac{\partial \hf}{\partial \tau} + A(\Hf,\pf) = 0 \; .

We write the collisionless term as:

.. math::
   :label: eq.nl

   \begin{multline}
   A(\Hf,\pf) = -i \left( \Omega_{\rm parallel} + \Omega_{\rm drift} \right) \Hf
   - i \Omega_* \pf -i \Omega_s X \hf \\
     \qquad - \frac{c}{B} \frac{a}{c_s} \sum_{\kpv^\prime + \kpv^{\prime \prime} = \kpv}
       \left( \bhat \cdot \kpv^\prime \times \kpv^{\prime \prime} \right)
       \pf(\kpv^\prime) \hf(\kpv^{\prime \prime}) \; .
   \end{multline}

The linear terms in :math:`A` include the parallel streaming along the field line :math:`\Omega_{\rm parallel}`, drift motion perpendicular to the field line :math:`\Omega_{\rm drift}`, *instability drive* from equilibrium density and temperature gradients :math:`\Omega_*`, and :math:`\exb` shear (see Ref. :cite:`candy:2016`). These linear terms define the *streaming kernel*, hereafter referred to as ``str``. The last term in Eq. :eq:`eq.nl` is a convolution (Poisson bracket in real space).  This defines the *nonlinear kernel* and is hereafter referred to as ``nl``. Note that **global capability** (profile-curvature, or radial profile variation of the plasma density, temperature, and rotation of the equilibrium state) is enabled using a novel *wavenumber advection* scheme :cite:`candy:2018,candy:2020`.  Explicit coupling with the Maxwell equations is also required to advance :math:`\pf` in time. This operation defines the *field solve* kernel, hereafter referred to as ``field``.  To advance Eq. :eq:`eq.gk_a`, RK4 or adaptive RK5(4)/RK7(6) methods are used.

The **collisional step** acts primarily on velocity dimensions and is distributed in the spatial dimensions:

.. math::
   :label: eq.cstep
	   
   \frac{\partial \hf}{\partial \tau} + B(\Hf,\pf) = 0 \quad \text{where} \quad 
   B(\Hf,\pf) = -i \Omega_{\xi} \Hf - \frac{a}{c_s} \sum_b C_{ab}^{L}(\Hf,\Hfb) \; .

Here :math:`-i \Omega_{\xi}` describes linear trapped particle motion, and :math:`C_{ab}^{L}` is the Sugama cross-species collision operator :cite:`sugama:2009`, which describes pitch-angle and energy diffusion. This is one of the most sophisticated collision operators available in numerical gyrokinetics.  A Legendre pseudospectral discretization in :math:`\xi` is combined with a Steen pseudospectral discretization in :math:`{\rm v}`. Using a weak form of the discrete collision matrix, we construct a self-adjoint pseudospectral representation.  An implicit time-advance is necessary for stability without severe accuracy loss. Using a generalization of the Crank-Nicolson method, Eq. :eq:`eq.cstep` is advanced with a single matrix-vector multiply (matrix rank :math:`N_\xi N_v N_a`).  The matrix is large and well-suited to execution on GPUs. The *collision kernel* is hereafter referred to as ``coll``.

FFT-based evaluation of the nonlinearity
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Evaulation of the quadratic nonlinearity in Eq. :eq:`eq.nl` is done in a standard way using a 2D dealiased FFT :cite:`orszag:1971`.  To prevent *aliasing*, we zero-pad the spectral representation by a factor of :math:`3/2`. The convolution conserves important flow invariants and eliminates a class of nonlinear instabilities from the numerical solution. To perform the forward and inverse FFTs, we use ``FFTW`` :cite:`frigo:2005` by default with options for cuFFT/rocFFT (GPU) on Summit/Frontier and Intel MKL on supported platforms.  First, we perform a series of four 2D complex-to-real ``(c2r)`` transforms:

.. math::
  (i k_x) \pf & \underset{\mathtt{c2r}}{\longrightarrow} \frac{\partial \Psi_a}{\partial x} \, , \\
  (i k_x) \hf & \underset{\mathtt{c2r}}{\longrightarrow} \frac{\partial h_a}{\partial x} \, , \\
  (i k_y) \pf & \underset{\mathtt{c2r}}{\longrightarrow} \frac{\partial \Psi_a}{\partial y} \, , \\
  (i k_y) \hf & \underset{\mathtt{c2r}}{\longrightarrow} \frac{\partial h_a}{\partial y} \; ,

where :math:`x` and :math:`y` are real-space meshpoints, such that all arrays are extended and
zero-padded by a factor of :math:`3/2` (quantities without tildes are in real space).  The real-space
products are then taken, followed by the inverse transform of the entire nonlinearity via
a single 2D real-to-complex ``r2c`` transform

.. math::
  - \frac{\partial \Psi_a}{\partial x} \frac{\partial h_a}{\partial y} +
   \frac{\partial h_a}{\partial x} \frac{\partial \Psi_a}{\partial y} 
   \underset{\mathtt{r2c}}{\longrightarrow}  \left( \bhat \cdot
   \kpv^\prime \times \kpv^{\prime \prime} \right) \pf(\kpv^\prime)
   \hf(\kpv^{\prime \prime}) \; .

.. csv-table:: Summary of data properties of kernels. ``str`` refers to parallel streaming, ``field`` refers to the solution of the three Maxwell equations, ``coll`` refers to the implicit collision step, and ``nl`` refers to the nonlinear bracket (convolution).  In each case, the communication cost associated with each kernel is denoted by the ``comm`` suffix.
   :align: center
   :header: Kernel, Data dependence, Dominant operation 
   :widths: 25,50,25
   :name: tab.kernels

   ``str``,":math:`{\kx,\theta},[k_y]_2,[\xi,{\rm v},a]_1`",loop
   ``field``,"Same as ``str``", loop
   ``coll``,":math:`[\kx,\theta]_1,[k_y]_2,\xi,{\rm v},a`",mat-vec multiply
   ``nl``,":math:`{\kx,k_y},[\theta,[\xi,{\rm v},a]_1]_2`",FFT
   ``str_comm``,":math:`{\kx,\theta},[k_y]_2,\underline{[\xi,{\rm v},a]_1}`",MPI_ALLREDUCE
   ``field_comm``,Same as ``str_comm``,MPI_ALLREDUCE 
   ``coll_comm``,":math:`\kx,\theta,[k_y]_2,[\xi,{\rm v},a]_1`:math:`\leftrightarrow [\kx,\theta]_1,[k_y]_2,\xi,{\rm v},a`",MPI_ALLTOALL
   ``nl_comm``,":math:`\kx,\theta,[k_y]_2,[\xi,{\rm v},a]_1`:math:`\leftrightarrow \kx,k_y,[\theta,[\xi,{\rm v},a]_1]_2`",MPI_ALLTOALL  
	  
