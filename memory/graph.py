import plotly
from plotly.graph_objs import Scatter, Layout
str = open('data.tsv').read()
x2 = []
y2 = []
d  = {}
for line in str.split('\n'):
		a = line.split('\t')
		if (len(a) == 3):
			stride = a[0]
			size   = a[1]
			time   = a[2]
			if d.has_key(stride):
				d[stride].append( (size, time)) 
			else:
				d[stride] = [ (size, time) ]

data = []
for key in d.keys():
	curr_trace_x = []
	curr_trace_y = []
	for t in d[key]:
		curr_trace_x.append(t[0])
		curr_trace_y.append(t[1])

	data.append(Scatter(x=curr_trace_x, y=curr_trace_y, name=key + ' byte stride'))

plotly.offline.plot({"data":data, "layout": Layout(title="Memory Latency",xaxis=dict(title='Memory log2 bytes'), yaxis=dict(title='latency in nanoseconds') )})

#plotly.offline.plot({"data":[Scatter(x=x2, y=y2)],"layout":Layout(title="hello world")})
