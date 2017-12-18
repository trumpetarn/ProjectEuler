"""
	This file includes for all helper funcitons for prime numbers
"""

def primes(n):
  """ Returns  a list of primes < n """
  sieve = [True] * n
  for i in xrange(3,int(n**0.5)+1,2):
      if sieve[i]: sieve[i*i::2*i]=[False]*((n-i*i-1)/(2*i)+1)
  return [2] + [i for i in xrange(3,n,2) if sieve[i]]

def isPrime(n):
	""" Returns whether or not n is prime """
	if n==2 or n==3: return True
	if n%2==0 or n<2: return False
	for i in range(3,int(n**0.5)+1,2):   # only odd numbers
		if n%i==0:
			return False    
	return True	