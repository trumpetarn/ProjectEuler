import helpers.primes as prime
import itertools

def getPermutaions(num):
	numStr = str(num)
	l = list(itertools.permutations(numStr))
	ret = set()
	for tup in l:
		tmp = ""
		for i in tup:
			tmp += i
		ret = ret | {int(tmp)}
	return ret

fourDigitPrimes = set(prime.primes(10000)) - set(prime.primes(1000))
for p1 in fourDigitPrimes:
	perm = getPermutaions(p1)
	tmp = set([p1]);
	for p2 in perm & fourDigitPrimes:
		if p2 > p1:
			p3 = p1+(p2-p1)/2
			if p3 in fourDigitPrimes:
				if p3 in perm:
					tmp |= {p2, p3}
	if len(tmp)>2:
		print tmp
		

