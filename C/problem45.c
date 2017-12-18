#include <stdio.h>
#include <stdbool.h>

unsigned long getTriangular(unsigned long n)
{
	return n*(n+1)/2;
}

unsigned long getPentagonal(unsigned long n)
{
	return n*(3*n-1)/2;
}

unsigned long getHexagonal(unsigned long n)
{
	return n*(2*n-1);
}

unsigned long main(void)
{
	unsigned long t = 285;
	unsigned long p = 165;
	unsigned long h = 143;
	t++;
	unsigned long tri = getTriangular(t);
	unsigned long pen = getPentagonal(t);
	unsigned long hex = getHexagonal(t);
	while (tri!=pen || tri!=hex)
	{
		if (pen < hex && pen < tri)
		{
			p++;
			pen = getPentagonal(p);
		}else if (hex < pen && hex < tri)
		{
			h++;
			hex = getHexagonal(h);
		}else
		{
			t++;
			tri = getTriangular(t);
		}
	}
	printf("t: %d, h: %d, p: %d, val: %d\n", t,h,p,tri);
	return 0;
}