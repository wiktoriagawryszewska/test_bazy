#include<stdio.h>
#include<math.h>

struct zespolone
{
    double a,b;
};

void wyswietllzes(struct zespolone liczba)
{
    printf("%f+%f i\n", liczba.a,liczba.b);
}

void wczytajlzes(struct zespolone liczba)
{
    scanf("%1f", &liczba.a);
    scanf("%1f", &liczba.b);
}

double modul(struct zespolone liczba)
{
    return pow((liczba.a*liczba.a+liczba.b*liczba.b),0.5);
}
struct zespolone dodaj(struct zespolone liczba1,struct zespolone liczba2)
{
    struct zespolone suma;
    suma.a=liczba1.a+liczba2.a;
    suma.b=liczba1.b+liczba2.b;
    return suma;
};
int main()
{
  struct zespolone x;
  x.a=2;
  x.b=4;
  wyswietllzes(x);
  printf("modol: %f\n", modol(x));

  struct zespolone y;
  y.a=5;
  y.b=7;
  wyswietllzes(y);
  struct zespolone z;
  z=dodaj(x,y);
  wyswietllzes(z);






#include<stdio.h>
#include<math.h>

struct trojkat
{
    double a,b,c;
};

void przepisz(struct trojkat t1, struct trojkat *t2)
{
    *t2=t1;
}
void wypisz(struct trojkat tr1)
{
    printf("%f\n", tr1.a);
    printf("%f\n", tr1.b);
    printf("%f\n", tr1.c);

}

int main()
{
    struct trojkat tr1;
    tr1.a=3;
     tr1.a=4;
      tr1.a=5;

    struct trojkat tr2;
    tr2.a=1;
    tr2.b=1;
    tr2.c=1;
    struct trojkat*wska2=&tr2;


    wypisz(tr1);
    wypisz(tr2);
    przepisz(tr1,wska2);
    wypisz(tr1);
    wypisz(tr2);

}





#include<stdio.h>
#include<math.h>

struct trojkat
{
    double a,b,c;
};

_Bool obwod(struct trojkat t)
{
    if(t.a+t.b>t.c && t.a+t.c>t.b && t.b+t.c>t.a && t.a>0 && t.b>0 t.c>0)
    {return 1;}
    else
        {return 0;}

}

int main()
{
    struct trojkat t1;
    t1.a=3;
    t1.b=4;
    t1.c=5;
    printf("pole %f\n",obwod(t1));
}




