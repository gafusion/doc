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

