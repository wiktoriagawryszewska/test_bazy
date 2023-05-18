# test_bazy
#include<stdio.h>
void zamien_parzyste(int n, int tab[n]) {
    // Znajdź pierwszą i ostatnią liczbę parzystą
    int i = 0;
    int j = n-1;
    while (i < j) {
        while (i < n && tab[i] % 2 != 0) {
            i++;
        }
        while (j >= 0 && tab[j] % 2 != 0) {
            j--;
        }
        if (i < j) {
            int tmp = tab[i];
            tab[i] = tab[j];
            tab[j] = tmp;
            i++;
            j--;
        }
    }
}

int main()
{
  int tab[]={1,2,3,4,5,6};
  int n = sizeof(tab) / sizeof(tab[0]);

    zamien_parzyste(n, tab);

    for (int i = 0; i < n; i++) {
        printf("%d ", tab[i]);
    }
}



#include<stdio.h>

int* odwrocenie(int n, int tab[n]) {
    int* tab1 = malloc(n * sizeof(int));
    for (int i = 0; i < n; i++) {
        tab1[i] = tab[n - i -1];
    }
    return tab1;
}

int main() {
    int n = 5;
    int tab[] = {1, 2, 3, 4, 5};
    int* tab1 = odwrocenie(n, tab);
    for (int i = 0; i < n; i++) {
        printf("%d ", tab1[i]);
    }
    return 0;
}

void unikalne(int n, int tab[]) {
    int wynik[n];
    int licznik = 0;
    for (int i = 0; i < n; i++) {
        int j;
        for (j = 0; j < licznik; j++) {
            if (tab[i] == wynik[j]) {
                break;
            }
        }
        if (j == licznik) {
            wynik[licznik] = tab[i];
            licznik++;
        }
    }
    for (int i = 0; i < licznik; i++) {
        printf("%d ", wynik[i]);
    }
}
int main(){
int tab6[] = {7,4,6,7,5,5,8,6,7};
    int n1 = sizeof(tab6) / sizeof(tab6[0]);
    unikalne(n1, tab6);
    printf("\n");
}


#include<stdio.h>

int najmniejsza(int a, int b,int tab[a][b])
{   int naj=tab[0][0];
    for(int i=0;i<a;i++)
    {
        for(int j=0;j<b;j++)
        {
            if(tab[i][j]<naj)
            {
                naj=tab[i][j];
            }
        }
    }
    return naj;
}
int najwieksza(int a, int b,int tab[a][b])
{   int naj=tab[0][0];
    for(int i=0;i<a;i++)
    {
        for(int j=0;j<b;j++)
        {
            if(tab[i][j]>naj)
            {
                naj=tab[i][j];
            }
        }
    }
    return naj;
}
int roznica(int a, int b,int tab[a][b])
{
    int c=najmniejsza(a,b,tab);
    int d=najwieksza(a,b,tab);
    return d-c;
}
int main(){
int a=2;
    int b=3;
    int tab[2][3]={{1,2,3},{4,5,6}};
    int h=roznica(a,b,tab);
    printf("%d",h);
}

#include <stdio.h>

char* foo(char* napis1, char* napis2 )
{

    printf("%s\n%s\n",napis1,napis2);
}
int main()
{
    char* napis1 = "hej";
    char* napis2 = "czesc";
    foo(napis1,napis2);
}

int porownaj(int tab[],int tab1[])
{ int size = sizeof(*tab) / sizeof(int);
 int pierwsza=0;
 int druga=0;
  for(int i=0;i<=size;i++)
  {
      if(tab[i]%2==1)
      {
          pierwsza++;
      }
  }
  for(int i=0;i<=size;i++)
  {
      if(tab1[i]%2==1)
      {
          druga++;
      }
  }
  if(pierwsza==druga)
  {
      return 1;
  }
  else{
  return 0;
  }
}
int main()
{
   int tab[]={1,2,4,5,9};
   int tab1[]={1,2,3,5,9};
   int x=porownaj(tab,tab1);
   printf("%d",x);
   return 0;
}
#include <stdio.h>

int iloscDzielnikow(unsigned int n) {
    int ilosc = 0;
    for (int i = 1; i <= n; i++) {
        if (n % i == 0) {
            ilosc++;
        }
    }
    return ilosc;
}

void najwiecejDzielnikow() {
    int obecna = 100;
    int naj = iloscDzielnikow(100);
    int x = 0;
    for (int i = 101; i < 1000; i++) {
        x = iloscDzielnikow(i);
        if (x > naj) {
            obecna = i;
            naj = x;
        }
    }
    printf("Liczba o największej liczbie dzielników: %d\n", obecna);
    printf("Liczba dzielników: %d\n", naj);
    printf("Dzielniki liczby %d:\n", obecna);
    for (int i = 1; i <= obecna; i++) {
        if (obecna % i == 0) {
            printf("%d ", i);
        }
    }
    printf("\n");
}

int main() {
    najwiecejDzielnikow();
    return 0;
}

int potega(unsigned int n)
{
    int wynik = 1;
    for(int i = 0; i<3; i++)
    {
         wynik *=n; 
    }
    return wynik;
}
