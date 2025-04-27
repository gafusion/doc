:orphan:

.. _buildlinux:

Ubuntu/Mint
-----------

Install fortran, MPICH and FFTW libraries::

  $ sudo apt install gfortran
  $ sudo apt install mpich libmpich-dev
  $ sudo apt install libfftw3-dev
  
.. _buildosx:

OSX Sonoma
----------

Install the Xcode command line developer tools::

  $ xcode-select --install

Download and Install Xquartz: https://www.xquartz.org   
 
Download and Install Macports: https://www.macports.org/install.php::
        
  $ sudo port -v selfupdate

Install python::

  $ sudo port install python-310
  $ sudo port select --set python python-310   
  $ sudo port select --set python3 python-310   
 
Install compilers::
 
  $ sudo port install gcc13 
  $ sudo port select --set gcc mp-gcc13     
  $ sudo port install mpich-gcc13
  $ sudo port select --set mpi mpich-gcc13-fortran
  $ sudo port install fftw-3 
  $ sudo port install fftw-3-single
  $ sudo port install netcdf
  $ sudo port install netcdf-fortran

.. _buildconda:
  
Conda setup
-----------

The conda setup can be used as a regular user (no sudo privileges needed), and works on both OSX and Linux.

If you do not have an existing conda setup yet, download and install Miniconda from https://www.anaconda.com/download/


Once inside the conda setup, create the conda gacode environment.

On Linux::

  $ conda create -n gacode -c conda-forge gfortran binutils make python fftw openmpi netcdf4 libopenblas=*=*openmp*

On OSX::

  $ conda create -n gacode -c conda-forge gfortran make python fftw openmpi netcdf4


Since many conda environment can co-exist on a single machine, activate the gacode one when using the GACODE tools::

  $ conda activate gacode

