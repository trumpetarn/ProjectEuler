
def isPalindrome(x):
	strX = str(x)
	lenX = len(strX)
	i = 0;
	isPalindrome=True
	while (i < lenX/2):
		
		if (strX[i] != strX[-1-i]):
			isPalindrome = False
			break
		i = i + 1 
	return isPalindrome
	
def toBinary(x):
	a=bin(x)
	return a[2:]

a=0
for i in range(1,1000001):
	if (isPalindrome(i)):
		if (isPalindrome(toBinary(i))):
			print(str(i) + ":" + toBinary(i))
			a = a + i
print(a)