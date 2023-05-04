#include<stdio.h>
#include<math.h>
void wypisz(unsigned int n, unsigned int k, int tab[][k])
{
    int i, j;
    for(i=0; i<n; i++)
    {
        for(j=0; j<k; j++)
        {
            printf("%d\t", tab[i][j]);

        }
        printf("\n");
    }
}

void zerowanie(unsigned int n, unsigned int k, int tab[n][k])
{
    int i, j;
    for(i=0; i<n; i++)
    {
        for(j=0; j<k; j++)
        {
            tab[i][j]=0;

        }
    }
}
void indeksmaxsred(unsigned int n, unsigned int k, int tab[n][k])
{
    int i, j;
    int maximum;
    int indeks;
    for(i=0; i<n; i++)
    {
        int suma=0;
        for(j=0; j<k; j++)
        {
            suma=suma+tab[i][j];

        }
        if(i==0)
        {
            maximum=suma;
        }
        if(maximum<suma)
        {
            indeks=i;
            maximum=suma;
        }
    }
    return indeks;


}
void wypisz2(int** t, unsigned int n, unsigned int m)
{
    int i, j;
    for(i=0; i<n; i++)
    {
        for(j=0; j<m; j++)
        {
            printf("%d\t", t[i][j]);
        }
        printf("\n");
    }
    printf("\n");
}
void wczytaj(int** t, unsigned int n, unsigned int m)
{
    int i,j;
    for(i=0; i<n; i++)
    {
        for(j=0; j<m; j++)
        {
            scanf("%d", &t[i][j]);
        }

    }

}
void zamiana(int** pierwsza,int ** druga, unsigned int n, unsigned int m)
{
    int i,j;
    int temp;
    for(i=0; i<n; i++)
    {
        for(j=0; j<m; j++)
        {
            temp=druga[i][j];
            pierwsza[i][j]=temp;
        }

    }

}

int ** tarczadorzutek(unsigned int n)
{
    int** t= alokujkwad(n);
    int i,j;
     for(i=0; i<n; i++)
    {
        for(j=0; j<n; j++)
        {

        }

    }
    return t;
}
//int ** alokuj(unsigned int n, unsigned int m)
//{
  //  int **t= malloc(m*sizeof())
//}
int zsumuj(unsigned int n, unsigned int k, int tab[][k])
{
    int i, j;
    int suma=0;
    for(i=0; i<n; i++)
    {
        for(j=0; j<k; j++)
        {
            suma=suma+tab[i][j];


        }

    }
}

int main()
{

    int tablica[2][3]={{1,2,3},{4,5,6}};
    int n=2;
    int k=3;
    wypisz(n,k,tablica);

    printf("%d",zsumuj(n,k,tablica));
    return 0;

}
