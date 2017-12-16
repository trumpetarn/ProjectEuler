import itertools
import helpers.primes as primes

def pandigitals(N):
	NUMBERS = list(range(1,N+1))
	pandigits = []
	for i in list(itertools.permutations(NUMBERS)):
		tmp = ""
		for j in i:
			tmp = tmp + str(j)
		pandigits.append(int(tmp))
	return sorted(pandigits)
for i in reversed(range(4,9)):
	pan = pandigitals(i)
	largest = 0
	for p in reversed(pan):
		if primes.isPrime(p):
				largest = p
				break
	if largest > 0:
		break
print(largest)