/*
	3.2.1 (r) Napisz funkcję otrzymującą jako argumenty wskaźniki do dwóch
	zmiennych typu int, która zwraca jako wartość mniejszą z liczb wska-
	zywanych przez argumenty.
*/


#include <stdio.h>

int mniejsza ( int* a, int* b )
{
	if ( *a < *b )
	{
		return *a;
	}

	return *b;
}

int main()
{
	int a = 20;
	int b = 10;

	printf ( "%i \n", mniejsza(&a, &b) );

	return 0;
}

/*
	3.2.2 (r) Napisz funkcję otrzymującą jako argumenty wskaźniki do dwóch
	zmiennych typu int, która zwraca jako wartość wskaźnik na zmienną
	przechowującą mniejszą z liczb wskazywanych przez argumenty.
*/


#include <stdio.h>

int* mniejsza ( int* a, int* b )
{
	if ( *a < *b )
	{
		return a;
	}

	return b;
}


int main()
{
	int a = 20;
	int b = 10;

	printf ( "a = %i  @ %p \n", a, &a );
	printf ( "b = %i  @ %p \n", b, &b );

	printf ( "mniejsza = %i @ %p \n", *mniejsza(&a, &b), mniejsza(&a, &b) );

	return 0;
}


/*
	3.2.3 (r) Napisz funkcję otrzymującą jako argumenty wskaźniki do dwóch
	zmiennych typu int, która zamienia ze sobą wartości wskazywanych
	zmiennych.
*/

#include <stdio.h>

void zamien ( int* a, int* b )
{
	int tmp = *a;
	*a = *b;
	*b = tmp;
}

int main()
{
	int a = 20;
	int b = 10;

	printf ( "%i %i \n", a, b );
	zamien ( &a, &b );
	printf ( "%i %i \n", a, b );

	return 0;
}



/*
	3.2.4 Napisz funkcję otrzymującą jako argumenty wskaźniki do dwóch zmien-
	nych typu int, która zamienia ze sobą wartości wskazywanych zmien-
	nych tylko wtedy, gdy wskazywana przez drugi argument zmienna jest
	mniejsza od zmiennej wskazywanej przez pierwszy argument.
*/

#include <stdio.h>

void zamien_jesli_mniejsza ( int* a, int* b )
{
	if ( *a < *b )
	{
		int tmp = *a;
		*a = *b;
		*b = tmp;
	}
}

int main()
{
	int a = 5;
	int b = 20;

	printf ( "%i %i \n", a, b );
	zamien_jesli_mniejsza ( &a, &b );
	printf ( "%i %i \n", a, b );
	zamien_jesli_mniejsza ( &a, &b );
	printf ( "%i %i \n", a, b );

	return 0;
}


/*
	3.2.6 Napisz funkcję, której argumentami są n typu int oraz w wskaźnik
	do int, która przepisuje wartość n do zmiennej wskazywanej przez w.
*/


#include <stdio.h>

void przepisz ( int n, int* w )
{
	*w = n;
}

int main()
{
	int a;

	przepisz ( 5, &a );

	printf ( "%i \n", a );

	return 0;
}
