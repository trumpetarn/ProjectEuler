def primes(n):
    """ Returns  a list of primes < n """
    sieve = [True] * n
    for i in xrange(3,int(n**0.5)+1,2):
        if sieve[i]: sieve[i*i::2*i]=[False]*((n-i*i-1)/(2*i)+1)
    return [2] + [i for i in xrange(3,n,2) if sieve[i]]

def get_trunc(number, dir=0):
	tmp = str(number)
	ret = []
	if dir==0:
		for i in range(0,len(tmp)):
			ret.append(int(tmp[i:]))
	else:
		for i in range(len(tmp),0,-1):
			if i != 0:
				ret.append(int(tmp[0:i]))
	return ret



prime_num = primes(739398)
trunc_sum = 0
j = 0
for i in reversed(prime_num[4:]):
	is_truncatable = True
	for trunc in set(get_trunc(i)+get_trunc(i,1)):
		if not trunc in prime_num:
			is_truncatable = False
			break
	if is_truncatable:
		j = j+1
		print j,':',i
		trunc_sum = trunc_sum + i

print "Sum of truncatable primes:", trunc_sum