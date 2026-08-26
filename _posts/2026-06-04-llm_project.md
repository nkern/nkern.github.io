---
layout: post
title: Three ways I'm using AI in my research, and reflections on AI in science
date: 2026-06-04
tags: ai llm
author: Nicholas Kern
mathjax: true
description: 
published: false
mermaid:
  enabled: true
  zoomable: true
---

<script src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.0/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>

I've recently been integrating AI coding tools more deeply into my work, and I wanted to give a summary of i) how I'm using these tools in my research, ii) how I think it's enabling me to do better work, iii) how in many ways I'm enjoying my research more than ever before, and iv) some pitfalls and concerns I have with these tools. I'll go through three recent projects I've started (and am now nearly finished with) in order of increasing AI-integration in the work.
All of this has been started over the past few months in the summer of 2026: something that probably would have taken me twice as long a few years ago. All of these projects are also in collaboration with PhD students at U. Michigan.


## Project 1: claude as a coding tool
##### training and ablating diffusion models for cosmology

Working with UMich Phd student Jiaming Pan, I am exploring the generalizability of diffusion models as a function of their training data, and the impact this has on how they are used downstream for scientific inference problems.
To do this work, I wanted to have a single, self-consistent repo that holds all the tools for doing the data pre-processing, training runs, and inference steps: that way, me and my student can run model ablations without having to worry if we are using a different set of parameters, a different model configuration, etc. So the initial task was to simply build a minimal API around Huggingface's `diffusers` library, which would take a single `config.yaml` file and instantiate a diffusion model of a pre-specified size (UNet or DiT), load a dataset and run it through a series of preprocessing steps (e.g. log-transform, centering, scaling), and then train the model with a custom loss, learning rate scheduler, all while checkpointing the model during training with a consistent on-disk file structure so we could both load them after the training.

Therefore, this was mostly a plumbing task, which probably would have taken me at least 1 week to get the basic code in place, and then probably another 1-2 weeks of testing, debugging, and iteration. However, with Claude Opus 4.7/4.8, I was able to get a prototype API v0.1 of this down within day 1. This was very a interactive process: I knew what models, preprocessing, and loss functions I wanted, I just needed claude to write this into a general, user-friendly framework. This resulted in the [`cosmo_diff`][cosmodiff_ref] codebase

After iterating and realizing I needed more complex data pre-processing after the first few days, I was able to settle on a static API v0.2 within the first week. I then handed this to Jiaming and he was able to run the many number of experiments and ablations needed to carry out the research project (also with the help of Claude).



The takeaway: AI coding tools helped me write this framework faster, *and also probably better* than what I could have done on my own given a few week timeline. A big part of *how* I use AI coding tools is very collaborative. 



## Project 2: claude for (guided) applied math<
##### scaling-up Gaussian processes for sparse, structured cosmology data


## Project 3: claude for (guided) open-ended physics
##### implementing semi-numerical cosmological radiative transfer physics


## How it's impacting my research workflow
##### this is the most fun I've had since early grad school


## Some of my concerns
##### lower human-colleague interaction; temptations to detach from low-level details


### References
[1] cosmo_diffusion ([https://github.com/nkern/cosmo_diffusion][cosmodiff_ref])




[cosmodiff_ref]: https://github.com/nkern/cosmo_diffusion



