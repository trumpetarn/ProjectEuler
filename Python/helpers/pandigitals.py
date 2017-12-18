"""
	This files includes all functionality connected to pandigital numbers.
	A pandigital number is a number using all numbers between a basevalue and N
	e.g. 1324 is a pandigital number with base 1 and N=4
"""
import itertools

def pandigitals(N, base=1):
	"""Returns all pandidigals of length N
		base can be used to allow 0, or
		to have a "substring"
		For <= len N use allPandigitals
	"""
	NUMBERS = list(range(base,N+base))
	pandigits = []
	for i in list(itertools.permutations(NUMBERS)):
		if i[0] != 0:
			tmp = ""
			for j in i:
				tmp = tmp + str(j)
			pandigits.append(int(tmp))
	return sorted(pandigits)

def allPandigitals(N, base=1):
	""" Returns all pandigitals of len <= N
			base can be used to allow 0, or
			to have a "substring"
			For only len N use pandigitals
	"""
	ret = []
	for i in range(base,base+N):
		ret += pandigitals(N, base)
	return ret

def isPandigital(N, base=1):
	"""Tells is N is pandigital
		base can be used to allow 0, or
		to have a "substring"
	"""
	n_str = str(N)
	for i in range(base,len(n_str)+base):
		if not str(i) in n_str:
			return False
	return True