.. _tgyro_solver:

TGYRO Solver
~~~~~~~~~~~~

.. |vpr| mathmacro:: V^\prime
.. |qgb| mathmacro:: Q_{\rm GB}
.. |qhat| mathmacro:: \widehat{Q}
.. |jhat| mathmacro:: \widehat{{\cal J}}
.. |sj| mathmacro:: {\sigma,j}
.. |sspjjp| mathmacro:: {\sigma\sigma^\prime,jj^\prime}
.. |spjp| mathmacro:: {\sigma^\prime,j^\prime}
.. |spj| mathmacro:: {\sigma^\prime,j}
.. |medskip| mathmacro:: ~
		     
TGYRO solves the *steady-state transport problem*; that is, the transport
equations with :math:`\partial_t \rightarrow 0`.  This algorithm was originally
envisioned to form the basis for a time-implicit solver, but frankly there has
been little interest or need for this capability.  Instead, flexibility in
dealing with multiple ions and solver robustness have been emphasized.

Formulation
-----------

To describe the algorithm, we will restrict attention to coupled :math:`T_i`
and :math:`T_e` evolution, even though density and rotation can also be
evolved.
   
.. math::
   \begin{align}
   \frac{1}{\vpr(r)} \frac{\partial}{\partial r} \left[ 
   \vpr(r) \,  Q_i(r) \right] = &~S_i \; , \\ 
   \frac{1}{\vpr(r)} \frac{\partial}{\partial r} \left[ 
   \vpr(r) \, Q_e(r) \right] = &~S_e \; .
   \end{align}

Here, the energy fluxes are the taken to be the sum of neoclassical and turbulent
transport:

.. math::
   \begin{align}
   Q_i = & ~Q_i^{\rm Neo} + Q_i^{\rm Turb} \\ 
   Q_e = & ~Q_e^{\rm Neo} + Q_e^{\rm Turb} 
   \end{align}
   
The total ion and electron sources, :math:`S_e` and :math:`S_i`, are described in more
detail in the :ref:`tgyro_equations` .
   
   
Some comments regarding units
-----------------------------

In TGYRO, we have found it convenient to use CGS units rather than employing some variant of the more
popular dimensionless normalizations.  Thus, we have

.. math::
   \begin{align}
   {\rm Source}: \quad &~ S \sim \frac{{\rm erg}}{{\rm cm}^3 \, {\rm s}} \\
   {\rm Energy~Flux}: \quad &~ Q \sim \frac{{\rm erg}}{{\rm cm}^2 \, {\rm s}} \\
   {\rm Power}: \quad & P \sim  \frac{{\rm erg}}{{\rm s}} \rightarrow 
   \int_0^r dx \, V^\prime(x) S(x) 
   \end{align}

   
Solution strategy
-----------------

Rather than solving the equations directly, we prefer to solve the volume-integrated form
of the equation so that we can deal directly with the fluxes:

.. math::
   \begin{align}
   Q_i^T(r) \doteq \frac{1}{\vpr(r)} & ~\int_0^r dx \, \vpr(x) S_i \\ 
   Q_e^T(r) \doteq \frac{1}{\vpr(r)} & ~\int_0^r dx \, \vpr(x) S_e  
   \end{align}

The result is a curious system which depends on both the temperatures and the
temperature gradients:

.. math::
   \begin{align}
   Q_i(z_i,z_e,T_i,T_e) - Q_i^T(T_i,T_e) = &~0 \\
   Q_e(z_i,z_e,T_i,T_e) - Q_e^T(T_i,T_e) = &~0
   \end{align}

where

.. math::
   \begin{equation}
   z_i \doteq - \frac{a}{T_i} \frac{\partial T_i}{\partial r} 
   \quad\mbox{and}\quad 
   z_e \doteq - \frac{a}{T_e} \frac{\partial T_e}{\partial r}
   \end{equation}

It is important to note the connection between profiles and gradients.  Specifically, if we enforce the following pedestal 
boundary conditions at :math:`r=r_*`:

.. math::
   \begin{equation}
   T_\sigma(r_*) = T_\sigma^* \; .
   \end{equation}

Then the gradients :math:`z_\sigma` uniquely determine the temperature profiles, :math:`T_\sigma`:

.. math::

   \begin{equation}
   T_\sigma(r) = T_\sigma^* 
   \exp\left( \int_r^{r_*} dx \, z_\sigma(x) \right) \; .
   \end{equation}

Formulation on a discrete grid
------------------------------

On a discrete grid $\{r_j\}$, the temperature profile can be approximately determined using the trapezoidal rule 

.. math::
   \begin{equation}
   T_\sigma(r_{j-1}) = T_\sigma(r_j) \exp \left\{
   \left[ \frac{z_\sigma(r_j)+z_\sigma(r_{j-1})}{2} \right]
   \left[ r_j-r_{j-1} \right] \right\} \; .
   \end{equation}

To put the problem into discrete form, we define a vector of 
independent variables (gradients) and functions (fluxes):

.. math::
   \begin{align}
   z_\sj = &~ z_\sigma(r_j) \; , \\
   Q_\sj = &~ Q_\sigma(r_j) \; , \\
   Q^T_\sj = &~ Q^T_\sigma(r_j) \; .
   \end{align}

Then, the equations to be solved are

.. math::
   \begin{equation}
   \qhat_\sj = \qhat^T_\sj  \; .
   \end{equation}

where a hat denotes gyroBohm normalization:

.. math::
   \begin{equation}
   \qhat \doteq \frac{Q}{\qgb} 
   \quad \text{where} \quad \qgb = n_e T_e c_s (\rho_s/a)^2 \; .
   \end{equation}

The goal is to apply Newton's method in a way which is as accurate as possible while still
minimizing evaluation of the expensive functions :math:`Q_\sj`.  Operationally, we make the
key assumption that the transport 
fluxes depend only locally on the gradients (which is approximately 
true when quantities are normalzied to the gyroBohm unit of flux), 
so that the Jacobian associated with :math:`Q_\sj` is block diagonal:

.. math::
   \begin{equation}
   \qhat_\sj(z^0) - \qhat^T_\sj(z^0) 
   + \frac{\partial \qhat_\sj}{\partial z_\spj} \,\delta z_\spj 
     - \frac{\partial \qhat^T_\sj}{\partial z_\spjp} \, \delta z_\spjp
       = 0 \; .
       \end{equation}

Above, we have used the shorthand $z \doteq \{z_\sj\}$ and 
$z^0 \doteq \{z^0_\sj\}$.  This can be written in terms of 
Jacobian matrices as

.. math::
   \begin{equation}
   \jhat_{\sspjjp} \, \delta z_{\sigma^\prime,j^\prime} = 
   -\left[ \qhat_\sj(z^0) - \qhat^T_\sj(z^0) \right] \eta_\sj \; ,
   \label{eq.newton}
   \end{equation}

where 

.. math::
   \begin{equation}
   \jhat_\sspjjp \doteq {\cal J}_{\sigma\sigma^\prime,jj} \delta_{jj^\prime}
   -{\cal J}^T_{\sspjjp}\; ,
   \end{equation}

and the quantity $z^1 = z^0 + \delta z$ is the Newton 
update for the vector $z$  In Eq.~(\ref{eq.newton}), we have
introduced a {\it relaxation parameter} $\eta_\sj$. Note that 
this method generalizes 
to an arbitrary number of gradients and fluxes per gridpoint.  
In the case of three radial gridpoints, $\{r_1,r_2,r_3\}$, 
the Jacobian matrices have the explicit forms

.. math::
   \begin{equation}
   {\cal J}_{\sspjjp} = \begin{pmatrix}
   \displaystyle \frac{\partial \qhat_{i,1}}{\partial z_{i,1}} &
   \displaystyle \frac{\partial \qhat_{i,1}}{\partial z_{e,1}} &
   0 & 0 & 0 & 0 \medskip \\
   \displaystyle \frac{\partial \qhat_{e,1}}{\partial z_{i,1}} &
   \displaystyle \frac{\partial \qhat_{e,1}}{\partial z_{e,1}} &
   0 & 0 & 0 & 0 \medskip \\
   0 & 0 &
   \displaystyle \frac{\partial \qhat_{i,2}}{\partial z_{i,2}} &
   \displaystyle \frac{\partial \qhat_{i,2}}{\partial z_{e,2}} &
   0 & 0  \medskip \\
   0 & 0 &
   \displaystyle \frac{\partial \qhat_{e,2}}{\partial z_{i,2}} &
   \displaystyle \frac{\partial \qhat_{e,2}}{\partial z_{e,2}} &
   0 & 0  \medskip \\
   0 & 0 & 0 & 0 &
   \displaystyle \frac{\partial \qhat_{i,3}}{\partial z_{i,3}} &
   \displaystyle \frac{\partial \qhat_{i,3}}{\partial z_{e,3}} &
   \medskip \\
   0 & 0 & 0 & 0 &
   \displaystyle \frac{\partial \qhat_{e,3}}{\partial z_{i,3}} &
   \displaystyle \frac{\partial \qhat_{e,3}}{\partial z_{e,3}} &
   \end{pmatrix}
   \end{equation}

.. math::
   \begin{equation}
   {\cal J}^T_{\sspjjp} = \begin{pmatrix}
   \displaystyle \frac{\partial \qhat^T_{i,1}}{\partial z_{i,1}} &
   \displaystyle \frac{\partial \qhat^T_{i,1}}{\partial z_{e,1}} &
   \displaystyle \frac{\partial \qhat^T_{i,1}}{\partial z_{i,2}} &
   \displaystyle \frac{\partial \qhat^T_{i,1}}{\partial z_{e,2}} &
   \displaystyle \frac{\partial \qhat^T_{i,1}}{\partial z_{i,3}} &
   \displaystyle \frac{\partial \qhat^T_{i,1}}{\partial z_{e,3}} 
   \medskip \\
   \displaystyle \frac{\partial \qhat^T_{e,1}}{\partial z_{i,1}} &
   \displaystyle \frac{\partial \qhat^T_{e,1}}{\partial z_{e,1}} &
   \displaystyle \frac{\partial \qhat^T_{e,1}}{\partial z_{i,2}} &
   \displaystyle \frac{\partial \qhat^T_{e,1}}{\partial z_{e,2}} &
   \displaystyle \frac{\partial \qhat^T_{e,1}}{\partial z_{i,3}} &
   \displaystyle \frac{\partial \qhat^T_{e,1}}{\partial z_{e,3}} 
   \medskip \\
   \displaystyle \frac{\partial \qhat^T_{i,2}}{\partial z_{i,1}} &
   \displaystyle \frac{\partial \qhat^T_{i,2}}{\partial z_{e,1}} &
   \displaystyle \frac{\partial \qhat^T_{i,2}}{\partial z_{i,2}} &
   \displaystyle \frac{\partial \qhat^T_{i,2}}{\partial z_{e,2}} &
   \displaystyle \frac{\partial \qhat^T_{i,2}}{\partial z_{i,3}} &
   \displaystyle \frac{\partial \qhat^T_{i,2}}{\partial z_{e,3}} 
   \medskip \\
   \displaystyle \frac{\partial \qhat^T_{e,2}}{\partial z_{i,1}} &
   \displaystyle \frac{\partial \qhat^T_{e,2}}{\partial z_{e,1}} &
   \displaystyle \frac{\partial \qhat^T_{e,2}}{\partial z_{i,2}} &
   \displaystyle \frac{\partial \qhat^T_{e,2}}{\partial z_{e,2}} &
   \displaystyle \frac{\partial \qhat^T_{e,2}}{\partial z_{i,3}} &
   \displaystyle \frac{\partial \qhat^T_{e,2}}{\partial z_{e,3}} 
   \medskip \\
   \displaystyle \frac{\partial \qhat^T_{i,3}}{\partial z_{i,1}} &
   \displaystyle \frac{\partial \qhat^T_{i,3}}{\partial z_{e,1}} &
   \displaystyle \frac{\partial \qhat^T_{i,3}}{\partial z_{i,2}} &
   \displaystyle \frac{\partial \qhat^T_{i,3}}{\partial z_{e,2}} &
   \displaystyle \frac{\partial \qhat^T_{i,3}}{\partial z_{i,3}} &
   \displaystyle \frac{\partial \qhat^T_{i,3}}{\partial z_{e,3}} 
   \medskip \\
   \displaystyle \frac{\partial \qhat^T_{e,3}}{\partial z_{i,1}} &
   \displaystyle \frac{\partial \qhat^T_{e,3}}{\partial z_{e,1}} &
   \displaystyle \frac{\partial \qhat^T_{e,3}}{\partial z_{i,2}} &
   \displaystyle \frac{\partial \qhat^T_{e,3}}{\partial z_{e,2}} &
   \displaystyle \frac{\partial \qhat^T_{e,3}}{\partial z_{i,3}} &
   \displaystyle \frac{\partial \qhat^T_{e,3}}{\partial z_{e,3}} 
   \end{pmatrix}
   \end{equation}

An important quantity to measure after a Newton iteration is
the residual 

.. math::
   \begin{equation}
   R^1_\sj = \frac{\left[\qhat_\sj(z^1)-\qhat^T_\sj(z^1)\right]^2}{
   \left[\qhat_\sj(z^1)\right]^2+\left[\qhat^T_\sj(z^1)\right]^2}
   \end{equation}

If, after a Newton step, any :math:`R^1_\sj > R^0_\sj` is not reduced, some strategy must be adopted
to modify the gradient vector :math:`z^1` and/or the target. Note that there are two distinct iterations: 

- A Newton iteration, which is rapidly convergent given 
  that one is close to a root and the $\qhat$ are smooth 
  functions, 
- A fixed-point iteration following the Newton iteration,
  because the weak profile variation of $\qhat$ was 
  ignored

If the temperature dependence of :math:`\qhat` was included, there would be no fixed-point iteration component.

Computation of the Jacobian
---------------------------

We approximate the derivatives in the Jacobian 
matrix using a forward difference approximation

.. math::
   \begin{equation}
   \frac{\partial \qhat_\sj}{\partial z_\spjp} \simeq 
   \frac{\qhat_\sj (z_\spjp + \Delta z) -\qhat_\sj (z_\spjp)}{\Delta z} 
   \end{equation}

A desireable feature of this approximation is that the iteration scheme, Eq.~(\ref{eq.newton}) if it converges, 
will converge to the exact root of the original equations without any influence of the finite-difference truncation 
error.
