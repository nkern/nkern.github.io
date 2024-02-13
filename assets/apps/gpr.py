import numpy as np

def draw_x(N, xmin, xmax):
	diff = xmax - xmin
	return np.random.rand(N) * diff + xmin


def draw_noise(N, scale):
	return np.random.randn(N) * scale


