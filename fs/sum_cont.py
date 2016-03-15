d = {}
for x in open('contention_data').read().split('\n'):
	a = x.split('\t')
	if not len(a) == 1:
		if not a[0] in d:
			d[a[0]] = float(a[1])
		else:
			d[a[0]] += float(a[1])

for x in d:
	print x, '\t', d[x]/float(x)
