/*
	4.2.1 Napisz funkcję, która otrzymuje dwa argumenty: nieujemną liczbę cał-
	kowitą n oraz n-elementową tablicę tab elementów typu int i:
	a) (r) nadaje wartość zero wszystkim elementom tablicy tab,
	b) (r) zapisuje do kolejnych elementów tablicy wartości równe ich in-
	deksom (do komórki o indeksie i funkcja ma zapisywać wartość i),
	c) podwaja wartość wszystkich elementów w tablicy tab,
	d) do wszystkich komórek tablicy tab wstawia wartości bezwzględne
	ich pierwotnych wartości.
*/



#include <stdio.h>


void zeruj ( int n, int tab[ n ] )
{
	for ( int i = 0 ; i < n ; i += 1 )
	{
		tab[ i ] = 0;
	}
}


void index ( int n, int tab[ n ] )
{
	for ( int i = 0 ; i < n ; i += 1 )
	{
		tab[ i ] = i;
	}
}


void podwajaj ( int n, int tab[ n ] )
{
	for ( int i = 0 ; i < n ; i += 1 )
	{
		tab[ i ] = tab[ i ] * 2;
	}
}


void bezwzgledna ( int n, int tab[ n ] )
{
	for ( int i = 0 ; i < n ; i += 1 )
	{
		if ( tab[ i ] < 0 )
		{
			tab[ i ] = - tab[ i ];
		}
	}
}


void wyswietl ( int n, int tab[ n ] )
{
	printf( "---\n" );

	for ( int i = 0 ; i < n ; i += 1 )
	{
		printf ( "%i \n", tab[ i ] );
	}
}


int main()
{
	int n;

	scanf ( "%i", &n );

	int tab[ n ];

	for ( int i = 0 ; i < n ; i += 1 )
	{
		scanf ( "%i", &tab[ i ] );
	}

	wyswietl( n, tab );

	index( n, tab );

	wyswietl( n, tab );

	return 0;
}



/*
	4.2.10  Napisz funkcję, która otrzymuje dwa argumenty: dodatnią liczbę cał-
	kowitą n oraz n-elementową tablicę tab o elementach typu int i:
	a) (r,!) zwraca największą wartość przechowywaną w tablicy tab,
	b) zwraca najmniejszą wartość przechowywaną w tablicy tab,
	c) (r,!) zwraca indeks elementu tablicy tab o największej wartości,
	d) zwraca indeks elementu tablicy tab o najmniejszej wartości,
	e) zwraca największą spośród wartości bezwzględnych elementów prze-
	chowywanych w tablicy tab,
	f) zwraca indeks elementu tablicy tab o największej wartości bez-
	względnej.
*/


#include <stdio.h>

int fun_a ( int n, int tab[] )
{
	int najwiekszy = tab[ 0 ];

	for ( int i = 1 ; i < n ; i +=1 )
	{
		if ( tab[ i ] > najwiekszy )
		{
			najwiekszy = tab[ i ];
		}
	}

	return najwiekszy;
}


int fun_b ( int n, int tab[] )
{
	int najmniejszy = tab[ 0 ];

	for ( int i = 1 ; i < n ; i +=1 )
	{
		if ( tab[ i ] < najmniejszy )
		{
			najmniejszy = tab[ i ];
		}
	}

	return najmniejszy;
}


int fun_c ( int n, int tab[] )
{
	int najwiekszy = tab[ 0 ];
	int index = 0;

	for ( int i = 1 ; i < n ; i +=1 )
	{
		if ( tab[ i ] > najwiekszy )
		{
			najwiekszy = tab[ i ];

			index = i;
		}
	}

	return index;
}


int fun_d ( int n, int tab[] )
{
	int najmniejszy = tab[ 0 ];
	int index = 0;

	for ( int i = 1 ; i < n ; i +=1 )
	{
		if ( tab[ i ] < najmniejszy )
		{
			najmniejszy = tab[ i ];

			index = i;
		}
	}

	return index;
}


#define bezwzgledna( x )  ( ( x < 0 ) ? ( -x ) : ( x ) )


int fun_e ( int n, int tab[] )
{
	int najwiekszy = bezwzgledna( tab[ 0 ] );

	for ( int i = 1 ; i < n ; i +=1 )
	{
		if ( bezwzgledna( tab[ i ] ) > najwiekszy )
		{
			najwiekszy = bezwzgledna( tab[ i ] );
		}
	}

	return najwiekszy;
}


int fun_f ( int n, int tab[] )
{
	int najwiekszy = bezwzgledna( tab[ 0 ] );
	int index = 0;

	for ( int i = 1 ; i < n ; i +=1 )
	{
		if ( bezwzgledna( tab[ i ] ) > najwiekszy )
		{
			najwiekszy = bezwzgledna( tab[ i ] );

			index = i;
		}
	}

	return index;
}



int main ()
{
	int tab[] = { -7, -5, 3, -4, 1, -8 };

	printf ( "%i \n", fun_f( 6, tab ) );

	return 0;
}




/*
	4.2.13  Napisz funkcję, która otrzymuje jako argument dodatnią licz-
	bę całkowitą n, a następnie tworzy dynamiczną n-elementową tablicę
	o elementach typu int i zwraca jako wartość wskaźnik do jej pierw-
	szego elementu.
	4.2.15 Napisz funkcję, która dostaje jako argument wskaźnik do jed-
	nowymiarowej dynamicznej tablicy o elementach typu int i zwalnia
	pamięć zajmowaną przez przekazaną w argumencie tablicę.
*/


#include <stdio.h>
#include <stdlib.h>


int* zaalokuj ( int rozmiar )
{
	return malloc(rozmiar * sizeof( int ));
}


void zwolnij ( int* tab )
{
	free ( tab );
}


int main ()
{
	int* tab = zaalokuj( 5 );

	printf ( "%p \n", tab );

	zwolnij( tab );

	return 0;
}



/*
	4.2.2 Napisz funkcję, która otrzymuje dwa argumenty: dodatnią liczbę cał-
	kowitą n oraz n-elementową tablicę tab o elementach typu int i zwraca 
	jako wartość:
	b) sumę elementów tablicy tab,
	c) sumę kwadratów elementów tablicy tab.
*/

#include <stdio.h>


int suma ( int n, int tab[ n ] )
{
	int s = 0;

	for ( int i = 0 ; i < n ; i += 1)
	{
		s = s + tab[ i ];
	}

	return s;
}


int kwadrat ( int n, int tab[ n ] )
{
	int s = 0;

	for ( int i = 0 ; i < n ; i += 1)
	{
		s = s + tab[ i ] * tab[ i ];
	}

	return s;
}


void wyswietl ( int n, int tab[ n ] )
{
	printf( "---\n" );

	for ( int i = 0 ; i < n ; i += 1 )
	{
		printf ( "%i \n", tab[ i ] );
	}
}


int main()
{
	int n;

	scanf ( "%i", &n );

	int tab[ n ];

	for ( int i = 0 ; i < n ; i += 1 )
	{
		scanf ( "%i", &tab[ i ] );
	}

	wyswietl( n, tab );

	printf ( "suma = %i \n", suma( n, tab ) );

	printf ( "suma kwadratów = %i \n", kwadrat( n, tab ) );

	return 0;
}



/*
	4.2.6 Napisz funkcję, która otrzymuje trzy argumenty: dodatnią liczbę cał-
	kowitą n oraz dwie n-elementowe tablice tab1, tab2 o elementach
	typu int i:
	a) (r) przepisuje zawartość tablicy tab1 do tablicy tab2,
	b) przepisuje zawartość tablicy tab1 do tablicy tab2 w odwrotnej
	kolejności (czyli element tab1[0] ma zostać zapisany do komórki
	tablicy tab2 o indeksie n − 1).
*/

#include <stdio.h>

void przepisywanie ( int n, int tab1[ n ], int tab2[ n ] )
{
	for ( int i = 0 ; i < n ; i += 1 )
	{
		tab1[ i ] = tab2[ i ];
	}
}

void odwrotna ( int n, int tab1[ n ], int tab2[ n ] )
{
	for ( int i = 0 ; i < n ; i += 1 )
	{
		tab2[ i ] = tab1[ n - 1 - i ];
	}
}


void wyswietl ( int n, int tab[ n ] )
{
	for ( int i = 0 ; i < n ; i += 1 )
	{
		printf ( "%i ", tab[ i ] );
	}
	printf( "\n" );
}


int main()
{
	int n;

	scanf ( "%i", &n );

	int tab1[ n ];
	int tab2[ n ];

	for ( int i = 0 ; i < n ; i += 1 )
	{
		scanf ( "%i", &tab1[ i ] );
	}

	for ( int i = 0 ; i < n ; i += 1 )
	{
		scanf ( "%i", &tab2[ i ] );
	}


	wyswietl ( n, tab1 );
	wyswietl ( n, tab2 );

	printf("-----------------------------\n");

	odwrotna ( n, tab1, tab2 );


	wyswietl ( n, tab1 );
	wyswietl ( n, tab2 );

	return 0;
}


/*
	4.2.8 Napisz funkcję, która otrzymuje cztery argumenty: dodatnią liczbę
	całkowitą n, n-elementowe tablice tab1 i tab2 oraz 2*n-elementową
	tablicę tab3 o elementach typu double.
	a) Funkcja powinna przepisywać zawartość tablic tab1 i tab2 do ta-
	blicy tab3 w taki sposób, że na początku tablicy tab3 powinny się
	znaleźć elementy tablicy tab1, a po nich elementy tablicy tab2.
	b) Funkcja powinna przepisywać zawartość tablic tab1 i tab2 do ta-
	blicy tab3 w taki sposób, że w komórkach tablicy tab3 o nie-
	parzystych indeksach powinny się znaleźć elementy tablicy tab1,
	a w komórkach tablicy tab3 o parzystych indeksach elementy ta-
	blicy tab2.
*/


#include <stdio.h>

void przepisuje ( int n, int tab1[], int tab2[], int tab3[] )
{
	for ( int i = 0 ; i < n ; i += 1 )
	{
		tab3[ i ] = tab1[ i ];
	}

	for ( int i = 0 ; i < n ; i += 1 )
	{
		tab3[ n + i ] = tab2[ i ];
	}
}

void na_zmiane ( int n, int tab1[], int tab2[], int tab3[] )
{
	for ( int i = 0 ; i < 2 * n ; i += 1 )
	{
		if ( i%2 == 0 )
		{
			tab3[ i ] = tab1[ i / 2 ];
		}
		else
		{
			tab3[ i ] = tab2[ (i - 1) / 2 ];
		}
	}
}


void wyswietlanie ( int n, int tab[] )
{
	for ( int i = 0 ; i < n ; i += 1 )
	{
		printf ( "%i . ", tab[ i ] );
	}

	printf ( "\n" );

}


int main ()
{
	int n;

	scanf ( "%i", &n );

	int tab1[ n ];
	int tab2[ n ];
	int tab3[ 2 * n ];

	for ( int i = 0 ; i < n ; i += 1 )
	{
		scanf ( "%i", &tab1[ i ] );
	}

	for ( int i = 0 ; i < n ; i += 1 )
	{
		scanf ( "%i", &tab2[ i ] );
	}

	wyswietlanie ( n, tab1 );
	wyswietlanie ( n, tab2 );
	na_zmiane ( n, tab1, tab2, tab3 );
	wyswietlanie ( 2 * n, tab3 );

	return 0;
}
