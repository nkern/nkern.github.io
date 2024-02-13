---
layout: profiles
permalink: /code/
title: code
description: Some of the open-source projects I work on.
nav: true
nav_order: 3

profiles:
  # if you want to include more than one profile, just replicate the following block
  # and create one content file for each profile inside _pages/
  - align: right
    image: h1c_idr2_flow.png
    content: profile_heracal.md
    image_circular: false # crops the image to make it circular
    more_info: >
      <p>A software flowchart for the HERA analysis pipeline.</p>

  - align: left
    image: comparison_tri_plot.png
    content: profile_emupy.md
    image_circular: false # crops the image to make it circular
    more_info: >
      <p>Posterior inference of a Cosmic Dawn simulation, accelerated with emulators.</p>
---