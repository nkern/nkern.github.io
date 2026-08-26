### Cosmic Dawn Emulators in Python
<img src="../assets/img/square-github.svg" width="17" height="17">
<a href="https://github.com/BayesLIM/emupy" target="_blank">github/emupy</a>

Surrogate models, or emulators, are ways to approximate simulations that are otherwise too time intensive or computationally expensive to run directly. They allow us to produce robust, Bayesian parameter constraints on sophisticated models of cosmology and astrophysics.
In <a href="https://iopscience.iop.org/article/10.3847/1538-4357/aa8bb4/meta" target="_blank">Kern et al. 2017</a>, we created a Python-based emulator framework for relating 21cm intensity mapping survey data to sophisticated models of Cosmic Dawn and the Epoch of Reionization.

The generalized Python emulator code can be found in the emupy software. The code supports polynomial, Gaussian Process, and neural network based surrogates, and contains minimal working examples.