#include <stdio.h>
#include <stdbool.h>

#define N 1000000



bool isPrime(unsigned long n)
{
	for(unsigned long i=2; i<=n/2; ++i)
  {
    // condition for nonprime number
    if(n%i==0)
    {
      return false;
    }
  }
  return true;
}

int main(void)
{
	unsigned long sum=0;
	unsigned long j = 2;
	int terms = 0;
	int high = 0;
	unsigned long high_val = 0;
	for (unsigned long p=2; p<100; p++)
	{
		if (isPrime(p))
		{
			sum = 0;
			terms=0;		
			for (unsigned long i=p; i<N; i++)
			{
				if (isPrime(i))
				{
					sum += i;
					terms++;
					if (sum > N)
						break;
					if (isPrime(sum) && terms >= high)
					{
						high = terms;
						high_val = sum;
					}
				}
			}
		}
	}
	printf("Max %d: %d\n", high, high_val);
	return 0;
}