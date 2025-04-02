### CNNs for Cosmological Simulations
<img src="../assets/img/square-github.svg" width="17" height="17">
<a href="https://github.com/nkern/py21cmnet" target="_blank">github/py21cmnet</a>

A PyTorch implementation of convolutional autoencoders with application to image segmentation of cosmological radiative transfer simulations. Once trained, this model can be used to quickly determine ionized regions of the universe given an evolved matter density field. This is important because radiative transfer is generally the most expensive part of large scale cosmological simulations. The ability to accelerate this step can dramatically improve the size of models we are able to run with a given amount of time and compute.