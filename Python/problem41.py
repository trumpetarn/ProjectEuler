import helpers.primes as primes
import helpers.pandigitals as pd


for i in reversed(range(4,9)):
	pan = pd.pandigitals(i)
	largest = 0
	for p in reversed(pan):
		if primes.isPrime(p):
				largest = p
				break
	if largest > 0:
		break
print(largest)