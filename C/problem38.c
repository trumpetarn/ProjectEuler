#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <math.h>

unsigned concatenate(unsigned x, unsigned y) {
    unsigned pow = 10;
    while(y >= pow)
        pow *= 10;
    return x * pow + y;        
}

bool is_pandigital(unsigned x)
{
	int n = 0;
	int numbers[] = {0,1,2,3,4,5,6,7,8,9};
	int tmp;
	while (x > 0)
	{
		n++;
		if (n > 9)
		{
			return false;
		}
		tmp = x;
		x /= 10;
		numbers[tmp-10*x] = 0;
		
	}
	int sum = 0;
	for (int i=1;i<10;i++)
	{
		sum += numbers[i];
	}
	if (n < 9 || sum != 0)
	{
		return false;
	}
	return true;
}

int main(void)
{
	unsigned val = 0;
	unsigned tmp[9] = {0,0,0,0,0,0,0,0,0};
	unsigned largest = 0;
	for (int i=1;i<10000;i++)
	{
		for (int j=1;j<10;j++)
		{
			val = 0;
			tmp[j-1]=i*j;
			for (int k=1; k<j; k++)
			{
				if (val == 0)
				{
					val = concatenate(tmp[k-1],tmp[k]);
				}else
				{
					val = concatenate(val,tmp[k]);
				}
			}
			if (is_pandigital(val) && val > largest)
			{
				largest = val;
			}
		}
	}
	printf("Largest: %d\n", largest);
	return 0;
}