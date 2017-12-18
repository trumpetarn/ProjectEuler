#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

bool isPrime(unsigned long n)
{
	for(int i=2; i<=n/2; ++i)
  {
    // condition for nonprime number
    if(n%i==0)
    {
      return false;
    }
  }
  return true;
}

bool isGoldbach(unsigned long n)
{
	unsigned long prime, square;
	for(prime=3; prime<n; prime +=2)
	{
		if (isPrime(prime))
		{
			for (square=1; (prime+2*square*square)<=n; square++)
			{
				if (prime+2*square*square == n)
				{
					return true;
				}
			}
		}
	}
	return false;
}

int main(void)
{
	for (unsigned long i=9; i<4294967295; i+=2)
	{
		if (!isPrime(i) && !isGoldbach(i))
		{
			printf("The smallest number: %d\n", i);
			break;
		}
	}
	return 0;
}