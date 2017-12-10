import itertools
NUMBERS = [1,2,3,4,5,6,7,8,9]

def pandigitals():
	pandigits = []
	for i in list(itertools.permutations(NUMBERS)):
		tmp = ""
		for j in i:
			tmp = tmp + str(j)
		pandigits.append(int(tmp))
	return pandigits

def concat_prod(val, lst):
	ret = ""
	for n in lst:
		ret += str(val*n)
	if len(ret) == 9:
		return int(ret)
	return 0

print "WARNING: This solution is slow, use the C-code instead"
pd = pandigitals()
x=10000
for i in reversed(range(1,x)):
	for j in range(0,9):
		prod = concat_prod(i, NUMBERS[:j])
		if prod in pd:
			print prod, i,j