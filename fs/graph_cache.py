import plotly
from plotly.graph_objs import Scatter, Layout, Bar
import math
str = open('cache_data').read()
x = []
y = []
for line in str.split('\n'):
	a = line.split('\t')
	if len(a) == 2:
		print math.log(float(a[0]), 2)
		x.append(math.log(float(a[0]), 2))
		y.append(a[1])

plotly.offline.plot({"data": [Bar(x=x, y=y)]})
