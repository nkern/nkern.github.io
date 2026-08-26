---
layout: post
title: Training a U-Net for cosmological image segmentation
date: 2024-02-10
tags: computer-vision CNN deep-learning
author: Nicholas Kern
mathjax: true
description: 
mermaid:
  enabled: true
  zoomable: true
---

<script src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.0/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>

{::nomarkdown}
{% assign jupyter_path = "assets/jupyter/unet_for_xh.ipynb" | relative_url %}
{% capture notebook_exists %}{% file_exists assets/jupyter/unet_for_xh.ipynb %}{% endcapture %}
{% if notebook_exists == "true" %}
    {% jupyter_notebook jupyter_path %}
{% else %}
    <p>Sorry, the notebook you are looking for does not exist.</p>
{% endif %}
{:/nomarkdown}
