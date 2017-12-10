def primes(n):
    """ Returns  a list of primes < n """
    sieve = [True] * n
    for i in xrange(3,int(n**0.5)+1,2):
        if sieve[i]: sieve[i*i::2*i]=[False]*((n-i*i-1)/(2*i)+1)
    return [2] + [i for i in xrange(3,n,2) if sieve[i]]

def all_rotations(number):
	prime_str = str(number)
	ret = [number]
	for i in range(1,len(prime_str)):
		tmp = prime_str[i:] + prime_str[0:i]
		if not int(tmp) in ret:
			ret.append(int(tmp))
	return ret

all_primes = primes(1000000)
cirular_primes = []
for prime in all_primes:
	if not prime in cirular_primes:
		isCircular = True
		rots = all_rotations(prime)
		for i in rots:
			if (not i in all_primes) or (i in cirular_primes):
				isCircular = False
				break
		if isCircular:
			cirular_primes = cirular_primes + rots
print "Number of circular primes", len(set(cirular_primes))