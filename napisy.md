/*
	5.2.2 (r) Napisz funkcję dlugosc, która jako argument otrzymuje napis
	i zwraca jako wartość jego długość. Napisz dwie wersje funkcji dlugosc
	dla napisów składających się ze znaków typu char i wchar_t.
*/


#include <stdio.h>


int dlugosc ( char* napis )
{
	for ( int i = 0 ;  ; i += 1 )
	{
		if ( napis[ i ] == 0 )
		{
			return i;
		}
	}

	return 0;
}



int main ()
{
	printf ( "%i \n", dlugosc( "Kinja" ) );

	return 0;
}



/*
	5.2.20  Napisz funkcję godzina, która dostaje w argumentach trzy liczby
	całkowite godz, min i sek, zawierające odpowiednio godziny, minuty
	oraz sekundy, i zwraca jako wartość napis zawierający godzinę w for-
	macie godz:min:sek, w którym wartości poszczególnych pól pochodzą
	ze zmiennych podanych w argumentach.
*/



#include <stdio.h>
#include <stdlib.h>


char* godzina ( int godz, int min, int sek )
{
	char* napis = malloc( 9 );

	napis[ 0 ] = godz / 10 + '0';
	napis[ 1 ] = godz % 10 + 48;
	napis[ 2 ] = 58;
	napis[ 3 ] = min / 10 + '0';
	napis[ 4 ] = min % 10 + 48;
	napis[ 5 ] = 58;
	napis[ 6 ] = sek / 10 + '0';
	napis[ 7 ] = sek % 10 + 48;
	napis[ 8 ] = 0;

	return napis;
}




int main ()
{

	printf ( "%s \n", godzina( 20, 51, 57 ) );
	printf ( "%s \n", godzina( 13, 14, 15 ) );
	printf ( "%s \n", godzina( 2, 0, 0 ) );

	return 0;
}



/*
	5.2.25  Napisz funkcję kopiuj, która dostaje jako argumenty napis oraz wskaź-
	nik do napisu (czyli wskaźnik do wskaźnika), tworzy nową tablicę zna-
	ków, kopiuje do niej napis zawarty w pierwszym argumencie, i przy-
	pisuje wskaźnik do nowo utworzonej tablicy do zmiennej wskazywanej
	przez drugi argument.
*/


#include <stdio.h>
#include <stdlib.h>
#include <string.h>


void kopiuj ( char* napis, char** wsk )
{
	int rozmiar = strlen ( napis );


	char* nova;

	nova = malloc ( rozmiar + 1 );

	for ( int i = 0 ; i < rozmiar + 1 ; i += 1 )
	{
		nova[ i ] = napis[ i ];
	}

	*wsk = nova;
}



int main ()
{
	char* xx = "Ala";
	char* nap;

	kopiuj(xx, &nap);

	printf ( "%s \n", nap );

	return 0;
}



/*
	5.2.3 Napisz funkcję porównaj, która jako argumenty otrzymuje dwa napisy
	i zwraca 1 gdy napisy są równe i 0 w przeciwnym przypadku. Napisz
	dwie wersje funkcji porownaj dla napisów składających się ze znaków
	typu char i wchar_t.
*/


#include <stdio.h>


int porownaj ( char* str_1, char* str_2 )
{
	int i;

	for ( i = 0 ; str_1[ i ] != 0 && str_2[ i ] != 0 ; i += 1 )
	{
		if ( str_1[ i ] != str_2[ i ] )
		{
			return 0;
		}
	}

	if ( str_1[ i ] == str_2[ i ] )
	{
		return 1;
	}

	return 0;
}



int main ()
{
	printf ( "%i \n", porownaj( "Ala", "Ola" ) );

	printf ( "%i \n", porownaj( "Ala", "Ala" ) );

	printf ( "%i \n", porownaj( "Kasia", "Ola" ) );

	return 0;
}



/*
	5.2.7  (r) Napisz funkcję sklej otrzymującą jako argumenty trzy tablice
	znaków i zapisującą do trzeciej tablicy konkatenację napisów znajdu-
	jących się w dwóch pierwszych tablicach (czyli dla napisów ”Ala m”
	i ”a kota” znajdujących się w pierwszych dwóch argumentach do trze-
	ciej tablicy powinien zostać zapisany napis ”Ala ma kota”). Zakłada-
	my, że w trzeciej tablicy jest wystarczająco dużo miejsca.
	Napisz dwie wersje funkcji sklej dla napisów składających się ze zna-
	ków typu char i wchar_t.
*/


#include <stdio.h>


void sklej ( char* tab1, char* tab2, char* tab3 )
{
	 int i;

	for ( i = 0 ; tab1[ i ] != 0 ; i += 1 )
	{
		tab3[ i ] = tab1[ i ];
	}

	for ( int j = 0 ; tab2[ j ] != 0 ; j += 1 )
	{
		tab3[ i ] = tab2[ j ];

		i += 1;
	}

	tab3[ i ] = 0;

}



int main (  )
{
	char tab1 [] = "Ala m";
	char tab2 [] = "a kota";
	char tab3 [ 12 ];

	sklej ( tab1, tab2, tab3 );
	printf ( "%s \n", tab3 );

	return 0;
}


/*
	5.2.8  Napisz funkcję, która otrzymuje w argumencie napis i podmienia
	w nim wszystkie małe litery na duże litery.
	Zakładamy, że napis przechowywany jest w tablicy o elementach ty-
	pu char, składa się wyłącznie z liter łacińskich i białych znaków,
	oraz że system ,na którym jest kompilowany i uruchamiany program,
	używa standardowego kodowania ASCII.
*/


#include <stdio.h>


void podmiana ( char* tab )
{
	for ( int i = 0 ; tab[ i ] != 0 ; i += 1 )
	{
		if ( tab[ i ] >= 'a' && tab[ i ] <= 'z' )
		{
			tab[ i ] = tab[ i ] - 'a' + 'A';
		}
	}

}


int main ()
{
	char s[] = "ALA ma Kocice";

	printf ( "%s \n", s );

	podmiana ( s );

	printf ( "%s \n", s );

	return 0;
}

