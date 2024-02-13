---
layout: page
title: The BayesLIM Project
permalink: /bayeslim/
---

The Bayesian Line Intensity Mapping (BayesLIM) project leverages advances in machine learning software and hardware to deliver a comprehensive Bayesian forward model for cosmological intensity mapping experiments. Its goal is to enable the first robust detection of the high redshift 21 cm signal, while faithfully accounting for covariant uncertainties between the signal and contaminants. The BayesLIM codebase is currently under development and will be released in 2024. For now, see an intial proof-of-concept (<a href="https://ml4physicalsciences.github.io/2023/files/NeurIPS_ML4PS_2023_154.pdf" target="_blank">Kern 2023</a>) presented at the NeurIPS 2023 "ML for the Physical Sciences" workshop.

<div class="text-center">
  {%- include figure.html
  path="assets/img/flowchart-min.png"
  class="img-fluid z-depth-0 rounded" 
  width=700 -%}
  <div class="more-info">
    <p class="text-left">
    	A flowchart describing the BayesLIM forward model. Training the model (similar to how one trains a neural network) is performed by a series of forward and backward calls to the model. We start with a (sparse) parameterization of the 21 cm sky signal, the foreground signal (diffuse and point source) the instrumental beam, and gains, and forward model them through to the interferometric visibilities (1, 2, & 3). Then we compare the forward model against our raw data collected by the telescope to compute a likelihood given a noise model (4), and then incorporate any priors on our model parameters to form the posterior (4). Finally, we use automatic differentiation to rapidly compute the gradient of the posterior with respect to all of our model parameters, and use an optimization scheme to update our parameters until convergence. The shape of the posterior can then be approximated via the inverse Fisher matrix, or by using the gradient information to efficiently MCMC sample the parameter space (e.g. via HMC).
    </p>
  </div>
</div>

Line intensity mapping (LIM)--in particular 21 cm LIM--is a theoretically powerful probe of high redshift cosmology and astrophysics. However, this technique faces the daunting challenge of mitigating astrophysical and instrumental contaminants by many orders of magnitude in order to make a robust detection of the signal. Unmodeled contaminants and uncertainties that are covariant with the signal can easily lead to false detections. Given the delicate nature of these measurements, what kind of data model and analysis pipeline is best suited to making a robust detection? Arguably, the optimal approach is to construct a joint posterior distribution across the 21 cm signal and all foreground and instrumental parameters, and to characterize the maximum a posteriori (MAP) and its shape to account for covariant uncertainties. Historically, this has been a computationally prohibitive task, forcing us to condition our data model on the assumption of a known foreground model (e.g. a known covariance), or a known instrument model. However, leveraging recent advances in machine learning software and hardware, the BayesLIM project seeks to make joint 21 cm posterior optimization possible for the first time.

---

Separately, BayesLIM is a

* fast and accurate forward model visibility simulator

* generalized direction-dependent and direction-independent calibration solver

* sparse signal parameterization and modeling tool

* constrained optimizer and MCMC sampler

* GPU-portable and AD-enabled data modeling tool

<div class="profile float-right">
  {%- include figure.html
  path="assets/img/BL_benchmark_w_grad.png"
  class="img-fluid z-depth-0 rounded" 
  width=450 -%}
</div>

Together, these components allow BayesLIM to jointly constrain the posterior distribution of the foregrounds, instrumental systematics, and the 21 cm signal, while making it easy to incorporate physically motivated priors in the inference process. Note that while BayesLIM is currently developed with 21 cm LIM as an application, the BayesLIM framework is equally applicable to galaxy emission-line LIM at low and high redshifts (future work).

The BayesLIM framework is written in PyTorch, leveraging its fast automatic differentiation library and its convenient GPU-portability. This plot shows the speed-up in evaluating the forward model and computing the posterior gradients for the CPU/GPU, and with BayesLIM's smart caching system. Together, these yield a nearly 50x speed-up in the gradient evaluation runtime relative to a standard CPU configuration.

---

<div class="text-center">
  {%- include figure.html
  path="assets/img/movie_ps_beam15deg.gif"
  class="img-fluid z-depth-0 rounded" 
  width=500 -%}
  <div class="more-info">
    <p class="text-left">
    	This shows a toy-model demonstration of a BayesLIM joint foreground + instrumental parameter optimization problem. We simulate point source foregrounds with unknown amplitudes, an unknown chromatic instrumental primary beam, and optimize them jointly until an underlying EoR signal in the data is revealed (Filtered Residual).
    </p>
  </div>
</div>

More details about BayesLIM and its development to come soon.
