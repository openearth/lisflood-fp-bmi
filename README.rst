LISFLOOD-FP with BMI
====================

This repository contains the **LISFLOOD-FP model (version 5.9)** with **Basic Model Interface (BMI)** functionality included.

LISFLOOD-FP 
-----------

LISFLOOD-FP is a hydrodynamic model developed at the `University of Bristol`_. It solves the local inertia equation to simulate
overland water flow using a regular grid.
This specific version of LISFLOO-FP is BMI-compatible and allows for accessing model information during execution. 

.. _University of Bristol: http://www.bristol.ac.uk/geography/research/hydrology/models/lisflood/

Note
    The here available LISFLOOD-FP model is based on version 5.9. This is, however, not the most up-to-date version. In case you are interested in using the BMI functionality,
    or just in a open-source version of the model, this repositry may be suited for you. Otherwise, please consider contacting the `University of Bristol`_ if the here provided 
    functionalities do not meet your requirements. For LISFLOOD-FP related issues please contact `University of Bristol`_, for BMI related questions you can leave an issue here.

Basic Model Interface (BMI) 
---------------------------

By means of the BMI_, it is possible to initiate and finalize a LISFLOOD-FP model as well as to get and set variable values during model execution. As such, running LISFLOOD-FP 
using BMI commands allows for a more inter-active modelling approach and online-coupling with other models such as for instance in `GLOFRIM
<https://www.nat-hazards-earth-syst-sci.net/19/1723/2019/>`_.

For further information regarding the (technological) background of the BMI_, we refer to the mentioned resources.

.. _BMI: https://bmi.readthedocs.io/en/latest/

Note
    The implementation of the BMI was done using version 1.0. The current version of the BMI is however 2.0. As this major upgrade came with some changes in the code structure,
    the here available model is not compatible with BMI 2.0.

Compilation and usage
---------------------
There are two make files included:

* Makefile: tested for Linux, Ubuntu 19.10 (using g++ (Ubuntu 8.3.0-6ubuntu1) 8.3.0 and GNU Make 4.2.1 Built for x86_64-pc-linux-gnu)
* Makefile_win: tested for Windows 10, see further instructions below

Windows
    To get the code compiled for windows 10 using mingw32 (64bit), please follow the following steps:

    * Get the mingw-w64 installer from https://sourceforge.net/projects/mingw-w64/files/Toolchains%20targetting%20Win32/Personal%20Builds/mingw-builds/installer/mingw-w64-install.exe/download
    * Follow installation instructions
    * Add the mingw-w64 bin folder (e.g. in c:\Program Files\mingw-w64\x86_64-8.1.0-posix-seh-rt_v6-rev0\mingw64\bin) to your path environment variable.
    * clone this repository
    * rename ``makefile`` to ``_makefile``
    * rename ``makefile_win`` tot ``makefile``.

The model can be compiled with ``mingw32-make``.

If you want to redistribute the .exe and .dll, please make sure to include the following .dll files from the mingw-w64 bin folder (see above).
    * libgcc_s_seh-1.dll
    * libgomp-1.dll
    * libstdc++-6.dll

Running models
    In case you are running linux, the library ``liblisflood.so`` can be used to run LISFLOOD-FP with BMI, for example from within a Python script.

    In case you are running windows, the library ``lisflood.dll`` can be used to run LISFLOOD-FP with BMI, for example from within a Python script.

    The ``lisflood.exe`` (Windows) or ``lisflood`` (Linux) executable can be used to run the model from command line with ``lisflood [-v] model.par`` where ``model.par`` is your LISFLOOD-FP parameter file.

    To run the model with the executable, shared object and the executable must be in the same directory as the model.par and all associated files.

License
-------

This specific LISFLOOD-FP version is licensed under GNU GPL 3.0.

Referencing
-----------

If you are using this model or any derivation thereof for your work or research, please cite these two references.

.. [GLOFRIM] Hoch, J. M., Eilander, D., Ikeuchi, H., Baart, F., and Winsemius, H. C.: Evaluating the impact of model complexity on flood wave propagation and inundation extent with a hydrologic–hydrodynamic model coupling framework, Nat. Hazards Earth Syst. Sci., 19, 1723–1735, https://doi.org/10.5194/nhess-19-1723-2019, 2019.

.. [LISFLOOD-FP] Bates, P. D., de Roo, A. P. J.: A simple raster-based model for flood inundation simulation, Journal of Hydrology, 236, 54-77, https://doi.org/10.1016/S0022-1694(00)00278-X, 2000.

