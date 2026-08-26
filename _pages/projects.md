---
layout: profiles
permalink: /research/
title: research
description: <p>My research interests lie at the interface of radio observations and the theory of high redshift galaxy and cosmological structure formation, with data analysis and machine learning applications acting as a bridge. Broadly, I am interested in statistical inference problems spanning the physical sciences, with a particular interest in understanding how ML/AI techniques can be reliably and robustly adopted within scientific settings. I am also interested in the development of real-world, end-to-end analysis pipelines for astrophysical surveys, and the robust connection of data to cosmological models. See below for some of my recent and ongoing projects and their selected publications. See my <a href='https://ui.adsabs.harvard.edu/search/p_=0&q=author%3A%22Kern%2C%20Nicholas%20S%22%20year%3A2010-2030&sort=date%20desc%2C%20bibcode%20desc' target='_blank'>ADS library</a> for a full list of publications. Scroll to the bottom for some of my selected talks.</p>
nav: true
nav_order: 1
use_math: true

profiles:
  # if you want to include more than one profile, just replicate the following block
  # and create one content file for each profile inside _pages/
  - align: right
    image: manifold.png
    content: profile_diffusion.md
    more_info: <p>In this toy case, a denoising diffusion model, s(x), memorizes its training data and thus fails to learn the true data distribution, p(x), leading to biased estimation of the posterior, p(x|y), when presented with observational data, y.</p>

  - align: left
    image: movie_ps_beam15deg.gif
    content: profile_bayeslim.md
    more_info: <p>Mock foreground and instrument optimization, revealing an underlying cosmological 21 cm signal.</p>

  - align: right
    image: eor_limits.png
    content: profile_hera22.md

  - align: left
    image: tri_plot_Apr15_13_11_24.png
    content: profile_kern17.md
    more_info: <p> Emulated posterior distributions on LCDM, EoR star formation and Cosmic Dawn X-ray heating parameters with a 1000-hour mock HERA observation.</p>

  - align: right
    image: gpr_window_low_noise_ell075.png
    content: profile_gpr.md
    more_info: <p>Simulated recovery of the 21 cm power spectrum with Gaussian process modeling, showing that without careful normalization it is difficult to recover the power spectrum robustly (i.e. large horizontal errorbars).</p>

  - align: left
    image: gleam02_MFS_XX.png
    content: profile_abscal.md
    more_info: <p>A calibrated HERA image of the radio sky, showing a collection of radio galaxies.</p>

  - align: right
    content: profile_talks.md
---
