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
  $ sudo port install netcdf
  $ sudo port install netcdf-fortran
