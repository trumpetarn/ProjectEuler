num_str = ""
L = 1000000
i = 0
while len(num_str)<L:
	i += 1
	num_str += str(i)
prod = 1
for i in range(0,7):
	print i, num_str[(10**i)-1]
	prod *= int(num_str[(10**i)-1])
print prod