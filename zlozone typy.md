/*
	7.2.1 (r,róż) Zdefiniuj strukturę trojkat przechowującą długości boków
	trójkąta. Napisz funkcję, która otrzymuje jako argument zmienną typu
	struct trojkat, i zwraca jako wartość obwód trójkąta przekazanego
	w argumencie.
*/

#include <stdio.h>
#include <stdlib.h>


struct trojkat
{
	int a;
	int b;
	int c;
};


int obwod ( struct trojkat t )
{
	return t.a + t.b + t.c;
}




int main ()
{
	struct trojkat moj;

	scanf ( "%i %i %i", &moj.a, &moj.b, &moj.c );

	printf ( "%i \n", obwod(moj) );

	return 0;
}



/*
	7.2.2 (r,!) Napisz funkcję, która otrzymuje jako argumenty zmienną troj1
	typu struct trojkat zdefiniowanego w zadaniu 7.2.1 oraz zmienną
	troj2 wskaźnik na zmienną typu struct trojkat, i przepisuje za-
	wartość zmiennej troj1 do zmiennej wskazywanej przez troj2.
*/



#include <stdio.h>
#include <stdlib.h>


struct trojkat
{
	int a;
	int b;
	int c;
};


void przepisz ( struct trojkat troj1, struct trojkat* troj2 )
{
	troj2->a = troj1.a;
	troj2->b = troj1.b;
	troj2->c = troj1.c;
}





int main ()
{
	struct trojkat in, out;

	scanf ( "%i %i %i", &in.a, &in.b, &in.c );

	przepisz ( in, &out );

	printf ( "%i %i %i \n", out.a, out.b, out.c );

	return 0;
}
