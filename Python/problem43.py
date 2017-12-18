import helpers.pandigitals as pd

def hasProperty(pan):
	primes = [2,3,5,7,11,13,17]
	pStr = str(pan)
	N = len(pStr)-2
	for i in range(1,N):
		if int(pStr[i:i+3])%primes[i-1] != 0:
			return False
	return True

pans = pd.pandigitals(10, base=0)
psum = 0
for pan in pans:
	if hasProperty(pan):
		psum += pan
print psum