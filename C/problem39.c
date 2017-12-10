#include <stdio.h>

int main(void)
{
	int a,b,c;
	int perimiter;
	int num_of_solutions = 0;
	int max_num = 0;
	int p = 0;
	for (perimiter=1;perimiter<=1000;perimiter++)
	{
		num_of_solutions = 0;
		for (a=1;a<perimiter;a++)
		{
			for (b=1;b<perimiter-a;b++)
			{
				c = perimiter - a - b;
				if ((a*a+b*b) == c*c)
				{
					num_of_solutions++;
				}
			}
		}
		if (num_of_solutions/2 > max_num)
		{
			max_num = num_of_solutions/2;
			p = perimiter;
		}
	}
	printf("Perimiter: %d, #solutions: %d\n", p, max_num);
	return 0;
}