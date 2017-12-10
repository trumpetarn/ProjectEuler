from fractions import Fraction

numbers = ['1','2','3','4','5','6','7','8','9']
fractions = []
for i in numbers:
	for j in numbers:
		for k in numbers:
			for l in numbers:
				if int(i+j)>int(k+l):
					break
				bools = [i==k,i==l,j==k,j==l]
				if i != j and k != l and i+j != k+l and any(bools):
					numerator = int(i+j)*1.0
					denominator = int(k+l)*1.0
					f = [0,0,0,0]
					f[0] = 1.0*int(i)/int(k)
					f[1] = 1.0*int(j)/int(k)
					f[2] = 1.0*int(i)/int(l)
					f[3] = 1.0*int(j)/int(l)
					for idx in range(0,4):
						if numerator/denominator == f[idx] and bools[idx]:
							fractions.append((numerator,denominator))
product = 1
for fr in fractions:
	product = product * fr[0]/fr[1]
print "Answer:", Fraction.from_float(product).limit_denominator(250)