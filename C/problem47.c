#include <stdio.h>
#include <stdbool.h>

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

bool has_x_factors(unsigned long n, int x)
{
	// Returns the number of distinct factors
	unsigned long i, tmp=n;
	int num_factors = 0;
	if (n % 2 == 0)
	{
		num_factors++;
		while (n % 2 == 0)
			n = n / 2;
	}

	for (i=3; i<tmp/2; i+=2)
	{
		if (isPrime(i))
		{
			if (n % i == 0)
			{
				num_factors++;
				while (n % i == 0)
					n = n / i;
			}
			if (isPrime(n))
			{
				num_factors++;
				break;
			}
		}
		if (num_factors > x)
		{
			return false;
		}
	}
	return num_factors == x;
}

int main(void)
{
	unsigned long i=644;
	bool first = has_x_factors(i,4);
	bool second = has_x_factors(i+1,4);
	bool third = has_x_factors(i+2,4);
	bool fourth = has_x_factors(i+3,4);

	for (i=645; i<4294967295; i++)
	{
		first = second;
		second = third;
		third = fourth;
		fourth = has_x_factors(i+3,4);
		if (first && second && third && fourth)
		{
			printf("Number %d\n", i);
			break;
		}
	}
	return 0;
}