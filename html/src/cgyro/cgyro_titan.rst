Running CGYRO on OLCF Titan
=================================

ORNL Titan is one of the most popular GPU platforms on which to run CGYRO.
This document provides some guidance on how to best make use of its resources

Titan capabilities
------------------

The bulk of the Titan compute power comes from the approximately 18k nodes, each hosting a single AMD Opteron CPU and a NVIDIA K20X GPU.
For our purposes, each Opteron provides 16 execution threads.
Each node is also equiped with 32 GB of CPU RAM and 5GB of GPU RAM.

Titan Platform File
-------------------

The recommended platform file is:

  * TITAN_PGI

Memory vs speed tradeoff in collisional term
--------------------------------------------

Unless you are using the simplified collision operator, i.e. **not COLLISION_MODEL=5**,
CGYRO will run that operator on CPU-only by default.
This choice has been made due to the significant memory cost of the other operators,
allowing simulations to run on a small number of nodes.

This default choice does however significantly slow down the simulation.
To force the collisional operator to execute on the (much faster) GPU, set

  * GPU_BIGMEM_FLAG=1

The faster setup will require significantly more GPU memory. If your job fails with CUDA errors, try increasing the number of nodes being used.



Balancing MPI Rank vs OMP
-------------------------

When submitting a CGYRO job, you are asked to pick an MPI rank ( *-n* ) and the number of threads/process ( *-nomp* ).
The product will determine the amount of compute resources you will use.

The recommended setting is to pick **nomp** to be 2.

For really big runs, you can make use of more nodes by setting **-nomp 4** or even **-nomp 8**.

Trading speed vs efficiency
---------------------------

As with most HPC codes, CGYRO will run faster when using more compute resources (i.e. compute nodes).
However, like most HPC codes, the efficiency will generally decrease as you use more resources, too.
I.e. you will be able to get **less computation done with the same amount of allocation time**.

Often, this is an expected tradeoff to get the desired results within a reasonable amount of time,
but it should be a conscious decision.
E.g. if you need the results of 8 independent simulations at once, and you do not care for partial results,
it will be more efficient to run them in parallel, each using 1/8th of the resources,
instead of running them sequentially using as many resources as possible for each.

The actual speedup, and the related efficiency, depends on the actual input setup.
Below you can see the wallclock results doing a few steps for the very small *nl01*, the medium sized *nl03* and the large *nl04*.

.. csv-table:: **nl01**
   :header: "#nodes","Wallclock time","Speedup","Efficiency"

   8,40,1.0x,100%
   16,20,2.0x,99%
   32,13,3.1x,78%
   64,7.9,5.1x,63%
   128,6.7,6.0x,38%
   256,5.5,7.3x,23%

.. csv-table:: **nl03**
   :header: "#nodes","Wallclock time","Speedup","Efficiency"

   64,366,1.0x,100%
   128,203,1.8x,90%
   256,149,2.5x,62%
   512,123,3.0x,37%
   1024,77,4.7x,30%

.. csv-table:: **nl04**
   :header: "#nodes","Wallclock time","Speedup","Efficiency"

   1024,123,1.0x,100%
   2048,94,1.3x,65%
   4096,73,1.7x,42%


Return to :doc:`top <cgyro_titan>`


