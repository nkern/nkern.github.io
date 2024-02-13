### HERA's Analysis Pipeline

I've spent considerable work building a custom analysis pipeline for the unique challenges faced by the HERA 21 cm telescope.
This includes a precision calibration pipeline, and careful data models that isolate systematics from the cosmological signal in our data.


Absolute Gain Calibration for HERA, 
Kern et al. 2020b | 
<a href="https://iopscience.iop.org/article/10.3847/1538-4357/ab67bc" target="_blank">ApJ, 890, 122</a>
|
<a href="https://arxiv.org/abs/1910.12943" target="_blank">arxiv:1910.12943</a>

Precision calibration is fundamental to 21 cm science. In this paper, we investigate various approaches for calibration of the HERA receivers, including sky-based and hybrid redundant & absolute calibration schemes. For foreground avoidance power spectrum estimators, we show that HERA can be well-calibrated with a small number of degrees of freedom across time and frequency. We also show that, when not handled properly, calibration can actually excerbate inherent instrumental contaminants in the data. We further describe calibration gain smoothing techniques for mitigating this effect. These considerations are particularly important for radio experiments with redundant and closely packed antennas like HERA.

<br>

<div class="profile float-left">
  {%- include figure.html
  path="assets/img/hera_avg_pspec.png"
  class="img-fluid z-depth-0 rounded" -%}
  <div class="more-info">
    <p>HERA power spectra before (blue) and after (orange) systematics modeling and subtraction, showing nearly two orders of magnitude reduction in power.</p>
  </div>
</div>
Mitigating Intstrumental Coupling I,   Kern et al. 2019   | 
<a href="https://iopscience.iop.org/article/10.3847/1538-4357/ab5e8a" target="_blank">ApJ, 924, 51</a>
|
<a href="https://arxiv.org/abs/1909.11732" target="_blank">arxiv:1909.11732</a>
<br>
Mitigating Intstrumental Coupling II, Kern et al. 2020a | 
<a href="https://iopscience.iop.org/article/10.3847/1538-4357/ab3e73" target="_blank">ApJ, 924, 51</a>
|
<a href="https://arxiv.org/abs/1909.11733" target="_blank">arxiv:1909.11733</a>

Instrumental systematics are a persistent problem for 21 cm radio telescopes, and fundamentally limit the scientific potential 21 cm science. In this paper, we analytically describe the phenomenology of common radio instrumental systematics like cable reflections and crosstalk that are particularly pertinent for HERA. We propose novel algorithms for modeling and removing these systematic in the data, and use numerical visibility simulations to validate their performance and demonstrate their resistance to signal loss. In a follow-up paper, we demonstrate the effectiveness of these techniques in real HERA data (left), showing over an order of magnitude suppression in systematics in deep HERA observations (orange line). This was a crucial enabling factor for HERA's recent world-leading constraints on the EoR power spectrum. These techniques have also since gone on to inform systematic models for other 21 cm telescopes.

