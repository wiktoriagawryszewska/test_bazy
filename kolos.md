
`` c
// pakiety wymagane
#include <stdio.h>
#include <math.h>
#include <stdbool.h>

printf("tekst i typ",parametr)
scanf("tekst i typ",parametr)
typy:
%d - int
%f - float
%s - string
%lf - double 
%b - bool
%u - unsigned int
//W S K A Ź N I K I
%p - wskazniki
w fukncji (*x)
w print("%p ",&x)

//odwrtotnosc liczby int
int main()
{
    int x;
    scanf("%d",&x);
    printf("Przedchwila wpisalem liczbe %d a jej odwrotnosc to %f",x,1/(float)(x));
    return 0;
}
//pierwiastek
int main()
{
    int x;
    scanf("%d",&x);
    printf("Pierwiastek liczby wynosi: %f",sqrt(x));
    return 0;
}
//wartosc bezwzgledna dla int
int main()
{
    int x;
    scanf("%d",&x);
    printf("Wartosc bezwzgledna liczby wynosi: %d",abs(x));
    return 0;
}
// dla float wartosc bezwzgledna
fabs zamiast abs
//notacja wykladnicza
int main()
{
    float x;
    scanf("%f",&x);
    printf("Notacja wykladnicza wprowadzonej liczby wynosi: %e",x);
    return 0;
}
//pierwiastek z 3 stopnia
int main()
{
    float x;
    scanf("%f",&x);
    printf("Pierwiastek 3 stopnia: %f",pow(x,1./3));
    return 0;
}
//wartosc bezwzgledna uzywajac tylko ifow
int main()
{
    int x;
    scanf("%d",&x);
    if (x>=0){
        printf("|%d|=%d",x,x);
    }
    else{
        printf("|%d|=%d",x,-x);
    }
return 0;
}
//funckja signum
int main()
{
    int x;
    scanf("%d",&x);
    if (x>0){
        printf("1");
    }
    else if(x<0){
        printf("-1");
    }
    else if(x==0){
        printf("0");
    }
return 0;
}
//maximum na 2 liczby 
int main()
{
    int x,y;
    scanf("%d%d",&x,&y);
    if(x>y){ ///tu porownuje nasze zmienne
        printf("%d",x);
    }
    else{ // jesli x jest mniesze od y
        printf("%d",y);
    }
return 0;
}
//max na 3 liczby 
int main()
{
    int x,y,z;
    scanf("%d%d%d",&x,&y,&z);
    if((x>y) && (x>z)){
    printf("%d",x);
    }
    else if(y>z){
        printf("%d",y);
    }
    else{
        printf("%d",z);
    }
return 0;
}
// srednia liczba z 3 liczb
int main()
{
    int x,y,z;
    scanf("%d%d%d",&x,&y,&z);
    if(((x>=y)&&(x<=z))||((x<=y)&&(x>=z))){
    printf("%d",x);
    }
    else if(((x>=y)&&(y>=z))||((x<=y)&&(y<=z))){
        printf("%d",y);
    }
    else{
        printf("%d",z);
    }

return 0;
}
//program ktory liczy pole trojkata
int main()
{
    int a,b,c,h,w;
    float p,P;
    printf("Podaj 1 jesli znasz bok i wysokosc, a 2 jak dlugosc bokow ");
    scanf("%d",&w);
    if(w==1){
        printf("Podaj dlugosc boku");
        scanf("%d",&a);
        printf("Podaj wysokosc");
        scanf("%d",&h);
        P=(a*h)/2.0;
        printf("Pole trojkata o bokach %d i wysokosci %d wynosi: %f",a,h,P);
    }
   if(w==2){
        printf("Podaj dlugosc trzech bokow");
        scanf("%d%d%d",&a,&b,&c);
        p=(a+b+c)/2.0;
        P=sqrt(p*(p-a)*(p-b)*(p-c));
        printf("Pole trojkata o bokach %d,%d,%d wynosi %f",a,b,c,P);
    }
return 0;
}
//uklad oznaczony i nieoznaczony
int main()
{
    int a,b,c,d,e,f,x,y;
    int w,wx,wy;
    scanf("%d%d%d%d%d%d",&a,&b,&c,&d,&e,&f);
    printf("%d*x+%d*y=%d ",a,b,c);
    printf("%d*x+%d*y=%d ",d,e,f);
    w=a*e-b*d;
    wx=c*e-b*f;
    wy=a*f-c*d;
    if(w!=0){
        printf("x= %d ",(wx/w));
        printf("y= %d ",(wy/w));
    }
    if(w==0){

        if(wy==0&&wx==0){
            printf("uklad nieoznaczony, nieskonczenie wiele rozwiazan");
        }
        else{
            printf("uklad sprzeczny,brak rozwiazan");
        }
    }
    return 0;
}
//delta
int main()
{
    int a,b,c,x,y,delta;
    scanf("%d%d%d",&a,&b,&c);
    printf("Zdefiniowales rownanie kwadratowe %dx^2+%db+%d=0 ",a,b,c);
    delta=(b*b)-(4*a*c);
    if(delta<0){
        printf("Delta %d , brak rozwiazan rzeczywistych",delta);
    }
    if(delta==0){
        float x;
        x=-b/(2*a);
        printf("Delta %d , x=%f ",delta,x);
    }
    if(delta>0){
        float x1,x2;
        float pierw;
        pierw=sqrt(delta);
        x1=(-b-pierw)/(2*a);
        x2=(-b+pierw)/(2*a);
        printf("Delta %d, x1=%f , x2=%f",delta,x1,x2);
    }
    return 0;
}
// wczytuje dwie liczby n i m, wypisuje wielokrotnosci n do momentu m
// zakres liczby od n do m
int main()
{
    int n,m;
    scanf("%d%d",&n,&m);
    for(int i=n;i<m;i=i+n){
        printf("%d ",i);
    }
    return 0;
}
//m pierwszysch wielokrotnosci n
int main()
{
    int n,m;
    scanf("%d%d",&n,&m);
    for(int i=1;i<=m;i++){
        printf("%d ",i*n);
    }
    return 0;
}
// wieloktornosci liczby n wieksze od m i mniejsze od k
/// 8, 100 ,130
int main()
{
    int m,n,k;
    scanf("%d%d%d",&n,&m,&k);
    int i;
    for(i=m/n*n+n;i<k;i=i+n){
            printf("%d ",i);
    }
    return 0;
}
//silnia
int main()
{
    int n;
    scanf("%d",&n);
    int i;
    int wynik=1;
    for(i=2;i<=n;i++){
            wynik=wynik*i;
    }
    printf("wasza wpisana liczba %d = %d ",n,wynik);
    return 0;
}
//1^2+2^2+3^2...+n^2
int main()
{
    int n;
    scanf("%d",&n);
    int i;
    int wynik=0;
    for(i=1;i<=n;i++){
            wynik=wynik+i*i;
    }
    printf("ciag liczby %d wynosi %d ",n,wynik);
    return 0;
}

//ile skladnikow mozna zsumowac aby nie przekroczyc k
///1000 = 13
int main()
{
    int n,k;
    scanf("%d",&k);
    int i=1;
    int wynik=0;
    while(wynik<k){
        wynik=wynik+i*i;
        i++;
    }
    printf("%d",i-2);
    return 0;
}
//na n=2 n=3 2 n=4 2 * 4 = 8 n=6 2*4*6=48
//iloczyn wysztkich liczb naturalnych parzystych nie przekraczajacych liczby n
int main()
{
    int n,k;
    scanf("%d",&n);
    int i=1;
    int wynik=1;
    for(i=2;i<=n;i=i+2){
        wynik=wynik*i;
    }
    printf("%d",wynik);
    return 0;
}
// n nie ujemna i wypisuje element ciagu fibonaciego o indeksie n
int main()
{
    int n;
    scanf("%d",&n);
    int i;
    int p=1;
    int d=1;
    int temp;
    int wynik=1;
    for (i=1;i<n;i++) {
    temp=p;
    p=d;
    d=d+temp;
  }
    printf("%d",p);
    return 0;
}
// nwd
/// 8 i 12 to 4
int NWD(int a, int b)
{
    while(a!=b)
       if(a>b)
           a-=b;
       else
           b-=a;
    return a;
}
int main()
{
    int a,b;
    scanf("%d%d",&a,&b);

    printf("nwd = %d",NWD(a,b));
    return 0;
}
// zad dodatkowe
int main(){
int x,d,z;
for(x=1;x<1000;x++){
    z=1;
    for(d=2;d<=sqrt(x);d++){
        if(x%d==0){
            z=z+d+x/d;
        }
    }
    if(z==x){
        printf("%d, ",x);
    }
}
return 0;
}
/////////////////////////////////////////////////
//1 * 49 = 7^2
// 2*50 = 100 - 10^2
// szukamy par w ktorych iloczyn tych liczb to kwadrat licb
// zakres do 1000int main()
{
    int i,j,kwadrat,wynik,k;
    int ile;
    for(i=1;i<1000;i++){
        for(j=i+1;j<1000;j++){
            while(i*j==k*k)
        }
    }
    printf("%d wynikow",ile);
    return 0;
}
/////////////////////////////////////////////////
//liczby idealne

//wypisywacz liczb pierwszych
/////////////////////////////////////////////////
//n wczytuje i wypisuje wartosc bezwzgledna
//n wczytuje i wypisuje wartosc bezwzgledna
int bezwzgledna(int n){
    if(n>0){
        return n;
    }
    else{
       return -n;
    }
}
int main()
{
    int n;
    scanf("%d",&n);
    printf("|%d|= %d",n,bezwzgledna(n));
    return 0;
}
//silnia z n
unsigned int silnia(unsigned int n){
    unsigned int wynik=1;
    for(int i=2;i<=n;i++){
            wynik=wynik*i;
    }
    return wynik;
}
int main()
{
    unsigned int n;
    scanf("%d",&n);
    printf("%d!= %d",n,silnia(n));
    return 0;
}
//funkcja wykladnicza 2 do n z liczbami ujemnymi
float dwa_do_potegi(int x){
if(x==0)
     return 1;
    else if(x>0)
        return 2*dwa_do_potegi(x-1);
        else
            return 1/dwa_do_potegi(-x);
}
int main()
{
    int n;
    scanf("%d",&n);
    printf("2^%d= %f",n,dwa_do_potegi(n));
    return 0;
}
//podloga pierwiastka z n
/// 7 => 2
/// 130 => 11
/// 16 => 4
int podloga(int n){
    int wynik=0;
    int i;
    for(i=1;i*i<=n;i++){
        if(i*i<=n){
            wynik=i;
        }
    }
    return wynik;
}
int main()
{
    int n;
    scanf("%d",&n);
    printf("podloga z pierwiastka = %d",podloga(n));
    return 0;
}
//dla n wyrzucamy sume poglog
int podloga(int n){
    int wynik=0;
    int i;
    for(i=1;i*i<=n;i++){
        if(i*i<=n){
            wynik=i;
        }
    }
    return wynik;
}
int suma_pod(int n){
    int wynik=0;
    for(int i=1;i<=n;i++){
        wynik+=podloga(i);
    }
    return wynik;
}
int main()
{
    int n;
    scanf("%d",&n);
    printf("suma podlog z pierwiastka = %d",suma_pod(n));
    return 0;
}
//dodatnie n zwraca rozklady liczby n a^2+b^2=n
///10 3^2+1^2=10
///50 5^2+5^2=50
///7  nic
void rozklad(unsigned int n){
    int a,b;
    for(a=1;a<=n;a++){
        for(b=a;b<=n;b++){
            if(a*a+b*b==n){
                printf("(%d,%d)",a,b);
            }
        }
    }
}
int main()
{
    int n;
    scanf("%d",&n);
    rozklad(n);
    return 0;
}
// funkcja wyswietla ile razy zostala wywolana
void zlicz(){
    static int liczba=0;
    liczba++;
    printf("Ta funkcja wywolano %d razy\n",liczba);
}
int main()
{
    zlicz();
    zlicz();
    zlicz();
    zlicz();
    zlicz();
    zlicz();
    return 0;
}
// wczytuje int i zwraca ja jako swoja wartosc i zsumowac wszystkie jej wartosci
int sumaa(int liczba){
    static int suma=0;
    suma=suma+liczba;
    printf("suma wynosi %d\n",suma);
    return liczba;
}
int main()
{
    sumaa(5);
    sumaa(8);
    sumaa(3);
    sumaa(2);
    sumaa(1);
    return 0;
}
// silnia rekurencyjnie
int silnia(int liczba){
    if (liczba==0) return 1;
    return liczba*silnia(liczba-1);
}
int main()
{
    printf("%d",silnia(5));
    return 0;
}
// ciag zdefiniowany rekurencyjnie wypisujacy wyrazy ciagu zad 21
// wyraz 0=1, wyraz a n+1=2*an+5
/// 1 7 19 43 91
int ciag(int liczba){
    if (liczba==0) return 1;
    return 2*ciag(liczba-1)+5;
}
int main()
{
    for(int i=0;i<10;i++){
        printf("a_%d = %d \n",i,ciag(i));
    }
    return 0;
}
// an+2=an+1+2an+3
// wyraz 0=1, wyraz a n+1=2*an+5
/// 1 1 6 11 26
int ciag(int liczba){
    if (liczba==0 || liczba==1) return 1;
    return ciag(liczba-1)+2*ciag(liczba-2)+3;
}
int main()
{
    for(int i=0;i<10;i++){
        printf("a_%d = %d \n",i,ciag(i));
    }
    return 0;
}
//ciag tribonachciego dla pierwszych 10
int fib(int liczba){
    if (liczba<=2) return 1;
    return fib(liczba-1)+fib(liczba-2)+fib(liczba-3);
}
int main()
{
    int i;
    for(i=0;i<10;i++){
        printf("%d ",fib(i));
    }
    return 0;
}
// ciag 1 2 3 6 12 24
int sumaa(int liczba){
    if (liczba==0)
    return 1;
    else if(liczba==1)
        return 2;
    int wynik=0;
    int i;
    for(i=0;i<liczba;i++){
        wynik=wynik+sumaa(i);
    }
    return wynik;
}
int main()
{
    printf("%d",sumaa(5));
    return 0;
}
/// ciag 1 1 3
// n parzyste:
/// an=an-1+n
// n nieparzyste
/// an=an-1*n
int wyraz(int n){
    if(n<=1) return 1;
    if(n%2==0){
        return wyraz(n-1)+n;
    }
    else{
        return wyraz(n-1)*n;
    }
}
int main()
{
    printf("%d",wyraz(4));
    return 0;
}
/// ciag 1 1 1 2 14 15 29 149
///a3n= a3n-1+a3n-2
///a5n+1=5a3n+4
int wyraz(int n){
    if(n<=2) return 1;
    if(n%3==0){
        return wyraz(n-1)+wyraz(n-2);
    }
    else if(n%3==1){
        return 5*wyraz(n-1)+4;
    }
    else return wyraz(n-1)+1;
}
int main()
{
    for(int i=0;i<10;i++){
        printf("%d  ",wyraz(i));
    }
    return 0;
}
/// ciag fibonaciego startujacy od tego co chcemy
int wyraz(int n,int x,int y){
    if(n==0) return x;
    if(n==1) return y;
    return wyraz(n-1,x,y)+wyraz(n-2,x,y);
}
int main()
{
    int i;
    int x=2;
    int y=7;
    for(int i=0;i<10;i++){
        printf("%d ",wyraz(i,x,y));
    }
    return 0;
}
/// ciag taki dziwny
int wyraz(int n,int x){
    if (n==0) return x;
    if(wyraz(n-1,x)%2==0){
    return wyraz(n-1,x)/2;
    }
    else{
        return 3*wyraz(n-1,x)+1;
    }
}
int main()
{
    int i;
    int x=100;
    for(int i=0;i<30;i++){
        printf("%d ",wyraz(i,x));
        if(wyraz(i,x)==1){
            break;
        }
    }
    return 0;
}
/// f(n,0)-n
/// f(0,m)=m
/// f(n,m)=f(n-1,m)+f(n,m-1)+f(n-1,m-1)
int wyraz(int n,int m){
    if(m==0)
        return n;
    else if(n==0)
        return m;
    else
        return wyraz(n-1,m-1)+wyraz(n-1,m)+wyraz(n,m-1);
}
int main()
{
    printf("wynik: %d ",wyraz(2,1));
    return 0;
}
// wskazniki
int main(){
int liczba=505;
    printf("Wartosc zmiennej to: %d\n",liczba);
    printf("Adres zmiennej to: %p\n\n",&liczba);
    int *wskaznik=&liczba;
    printf("wartosc zmiennej to: %d\n",liczba);
    printf("Adres zmiennej to: %p\n",&liczba);
    printf("Adres przechowywany w wskazniku to: %p\n",wskaznik);
    printf("Wskazywana wartosc to: %d\n",&wskaznik);
}
int podwoj(int *x){
*x=2*(*x);
return *x;
}
int main()
{
    int a=7;
    printf("%d\n",podwoj(&a));
    printf("%d",a);
    return 0;
}
//napisz funkcje zwracajaca mniejsza wartosc wskaznika
int mniejsza(int *x,int *y){
if(*x < *y){
    return *x;
}
return *y;
}
int main()
{
    int a=7;
    int b=4;
    printf("%d\n",mniejsza(&a,&b));
    return 0;
}
//napisz funkcje zwraca wskaznik na zmienna przechowujaca mniejsza z liczb przechowujaca
int mniejsza(int *x,int *y){
if(*x < *y){
    return x;
}
return y;
}
int main()
{
    int a=7;
    int b=4;
    printf("%p\n",&a);
    printf("%p\n",&b);
    printf("%p\n",mniejsza(&a,&b));
    return 0;
}
//funkcja swap, dwa arguemty dwa adresy
// zamienic wartosci wskazywanych zmiennych
void swap(int *x,int *y){
int temp;
temp = y;
y=x;
x=temp;
printf("x: %p\n",x);
printf("y: %p\n",y);
}
int main()
{
    int a=7;
    int b=24;
    printf("x= %p\n",&a);
    printf("y= %p\n",&b);
    swap(&a,&b);
    return 0;
}
//funkcja swap tylko wtedy gdy wskazywana przez drugi argument zmienna jest mniejsza;
void swap(int *x,int *y){
if(*x>*y){
int temp;
temp = *y;
*y=*x;
*x=temp;
}
}
int main()
{
    int a=7;
    int b=2;
    printf("a=%d\n",a);
    printf("b=%d\n",b);
    swap(&a,&b);
    printf("a=%d\n",a);
    printf("b=%d\n",b);
    return 0;
}
//funkcja swap tylko wtedy gdy wskazywana przez drugi argument zmienna jest mniejsza;
int suma(const int *x,const int *y){
   return*x+ *y;
}
int main()
{
    const int a=37;
    const int b=24;
    printf("%d",suma(&a,&b));
    return 0;
}
//funkcja przepisz
void przepisz(int n,int *x){
    *x=n;
}
int main()
{
    int a=37;
    przepisz(15,&a);
    printf("%d",a);
    return 0;
}
//NAPISZ BEZ argumetowa funkcje ktora rezerwuje pamiec dla pojedynczej zmiennej typu int
int* rezerwuj(){
    return malloc(sizeof(int));
}
int main()
{
    int * wsk=rezerwuj();
    printf("%p",wsk);
    return 0;
}
//NAPISZ BEZ argumetowa funkcje ktora rezerwuje pamiec dla pojedynczej zmiennej typu int
float* rezerwuj_floata(){
    return malloc(sizeof(float));
}
int main()
{
    float * wsk=rezerwuj_floata();
    printf("%p",wsk);
    return 0;
}
//przepisz stala
void przespisz_stala(const int* x,int* y){
*y=*x;
}

int main()
{
    const int a=5;
int b=19;
    przespisz_stala(&a,&b);
    printf("a=%d\n",a);
    printf("b=%d",b);
    return 0;
}
////
double funkcja(double (*fun)(int x),int y){
return fun(y);
}
double testowa(int x){
return x*x;
}
int main()
{
    int x=5;
    printf("%f\n",testowa(x));
    double(*wskaznikdofunkcji)(int);
    wskaznikdofunkcji=&testowa;
    printf("%p\n",wskaznikdofunkcji);
    printf("%f\n",funkcja(wskaznikdofunkcji,5));
    return 0;
}
void wypisz(unsigned int n,int * tab){
int i;
for(i=0;i<n;i++){
printf("%d\t",tab[i]);
}
printf("\n");
}
int main()
{
    int rozmiar=4;
int tab[rozmiar];
tab[0]=6; tab[1]=2; tab[2]=5; tab[3]=8;
wypisz(rozmiar,tab);
printf("%d\n",*tab);
    return 0;
}
/// nadaje wartosc 0 wszystkim elementom tablicy
void wypisz(unsigned int n,int * tab){
int i;
for(i=0;i<n;i++){
printf("%d\t",tab[i]);
}
printf("\n");
}
void zeruj(unsigned int n,int * tab){
int i;
for(i=0;i<n;i++){
tab[i]=0;
printf("%d\t",tab[i]);
}
printf("\n");
}
int main()
{
    int rozmiar=4;
int tab[rozmiar];
tab[0]=6; tab[1]=2; tab[2]=5; tab[3]=8;
wypisz(rozmiar,tab);
zeruj(rozmiar,tab);
return 0;
}
// podwojona tablica  i tablica bezwzgledna
void wypisz(unsigned int n,int * tab){
int i;
for(i=0;i<n;i++){
printf("%d\t",tab[i]);
}
printf("\n");
}
void podwoj(unsigned int n,int * tab){
int i;
for(i=0;i<n;i++){
printf("%d\t",tab[i]*2);
}
printf("\n");
}
void bezw(unsigned int n,int * tab){
int i;
for(i=0;i<n;i++){
printf("%d\t",abs(tab[i]));
}
printf("\n");
}
int main()
{
    printf("Hello world!\n");
    int rozmiar=5;
int tab[rozmiar];
tab[0]=-6; tab[1]=2; tab[2]=5; tab[3]=8; tab[4]=9;
wypisz(rozmiar,tab);
podwoj(rozmiar,tab);
bezw(rozmiar,tab);
return 0;
}
//suma elementow tablicy
void wypisz(unsigned int n,int * tab){
int i;
for(i=0;i<n;i++){
printf("%d\t",tab[i]);
}
printf("\n");
}
int suma(unsigned int n,int * tab){
 int suma=0;
 for(int i=0;i<n;i++){
    suma=suma+tab[i];
}
return suma;
}
int main()
{
    printf("Hello world!\n");
    int rozmiar=5;
int tab[rozmiar];
tab[0]=-6; tab[1]=2; tab[2]=5; tab[3]=8; tab[4]=9;
wypisz(rozmiar,tab);
printf("suma tablicy= %d",suma(rozmiar,tab));
return 0;
}
/// srednia geometryczna
void wypisz(unsigned int n,int * tab){
int i;
for(i=0;i<n;i++){
printf("%d\t",tab[i]);
}
printf("\n");
}
float sredniag(unsigned int n,int * tab){
 float suma=1;
 for(int i=0;i<n;i++){
    suma=suma*tab[i];
}
return pow(suma,1.0/n);
}
int main()
{
    printf("Hello world!\n");
int tab[]={6,2,5,8,9};
wypisz(5,tab);
printf("srednia geometryczna: %f \n",sredniag(5,tab));
return 0;
} 
//srednia harmoniczna
void wypisz(unsigned int n,int * tab){
int i;
for(i=0;i<n;i++){
printf("%d\t",tab[i]);
}
printf("\n");
}
float sredniaharmoniczna(unsigned int n, int * tab){

int i;
    float s = 0;
    for(i=0;i<n;i++){
        s = s + (1.0/tab[i]);
    }
    return n/s;
}
int main()
{
    printf("cw 4.2.4\n\n");
    unsigned int tab[] = {8, 2, 5, 1, 9};
    wypisz(5, tab);
    printf("Srednia harmoniczna: %f\n",sredniaharmoniczna(5, tab));
    return 0;
}
/// sito er
void wypisz(unsigned int n,bool * tab){
int i;
for(i=0;i<n;i++){
printf("%d\t",tab[i]);
}
printf("\n");
}
int sito(unsigned int n){
bool tab[n];
for(int i=0;i<n;i++){
    tab[i]=true;
}
int j,k;
for(j=2;j<n;j++){
    if(tab[j]){
            for(k=2*j;k<n;k=k+j){
                tab[k]=false;
            }
}
}
int x=n;
for(int x=n;x>0;x--){
    if(tab[x]==true){
        return x;
    }
}
}
int main()
{
printf("%d",sito(100));
return 0;
}
/// sito er ile
void wypisz(unsigned int n,bool * tab){
int i;
for(i=0;i<n;i++){
printf("%d\t",tab[i]);
}
printf("\n");
}
int sito(unsigned int n){
bool tab[n];
for(int i=0;i<n;i++){
    tab[i]=true;
}
int j,k;
for(j=2;j<n;j++){
    if(tab[j]){
            for(k=2*j;k<n;k=k+j){
                tab[k]=false;
            }
}
}
int x=n;
int ile;
for(int x=n;x>1;x--){
    if(tab[x]==true){
        ile++;
    }
}
return ile;
}
int main()
{
printf("%d",sito(100));
return 0;
}
///przepisz
void wypisz(unsigned int n,int * tab){
int i;
for(i=0;i<n;i++){
printf("%d\t",tab[i]);
}
printf("\n");
}
void przepisz(unsigned int n,int * tab1,int * tab2){
int i;
for(i=0;i<n;i++){
tab2[i]=tab1[i];
}
printf("\n");
}

int main()
{
int tab1[]={8,4,5,2,7};
int tab2[]={6,1,7,2,8};
wypisz(5,tab1);
wypisz(5,tab2);
przepisz(5,tab1,tab2);
wypisz(5,tab1);
wypisz(5,tab2);
return 0;
}
/// przepisz w odwrotnej kolejnosci
void wypisz(unsigned int n,int * tab){
int i;
for(i=0;i<n;i++){
printf("%d\t",tab[i]);
}
printf("\n");
}
void przepisz(unsigned int n,int * tab1,int * tab2){
int i;
for(i=0;i<n;i++){
tab2[i]=tab1[n-1-i];
}
printf("\n");
}

int main()
{
int tab1[]={8,4,5,2,7};
int tab2[]={6,1,7,2,8};
wypisz(5,tab1);
wypisz(5,tab2);
przepisz(5,tab1,tab2);
wypisz(5,tab1);
wypisz(5,tab2);
return 0;
}
//////////////////////////////////////////
ZAD DODATKOWE CW 7
//////////////////////////////////////////
// zad z liczbami 

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <math.h>
#include <stdbool.h>

int main()
{
int n=100;
int tab[100]={4,2,2,1,3,3,3,1,1,1,1,2,5,2};
int temp=1;
for(int i=1;i<n;i++)
    {
 if(tab[i]==tab[i-1])
        {
            temp++;
        }
    else
        {
        printf("%d %d ",temp,tab[i-1]);
        temp=1;
        }

    }
}

// zad z deszczowka

#include<stdio.h>

int kaluza(int wysokoszc[],int n)
{
    int lewa=0;
    int prawa=n-1;
    int lewa_max=0;
    int prawa_max=0;
    int woda = 0;

    while(lewa<prawa)
    {
        if(wysokoszc[lewa]>lewa_max)
        {
            lewa_max=wysokoszc[lewa];
        }
        if(wysokoszc[prawa]>prawa_max)
        {
            prawa_max=wysokoszc[prawa];
        }
        if(lewa_max<=prawa_max)
        {
            woda+=lewa_max - wysokoszc[lewa];
            lewa++;
        }
        else
        {
            woda += prawa_max-wysokoszc[prawa];
            prawa--;
        }
    }
    return woda;
}

int main()
{
    int wysokoszc[]={4,2,7,9,2,5,6,8,3,7};
    int n = sizeof(wysokoszc)/sizeof(wysokoszc[0]);

    printf("%d",kaluza(wysokoszc,n));
    return 0;
}
//suma tablic
void sumatablic(unsigned int n,int * tab1,int * tab2, int * wynik){
    for(int i=0;i<n;i++){
        wynik[i]=tab1[i]+tab2[i];
        printf("%d ",wynik[i]);
    }
}
int main()
{
    int tab1[]={2,7,1,3};
    int tab2[]={4,5,2,8};
    int wynik[4];
    sumatablic(4,tab1,tab2,wynik);
}
//maskymalne elementy z tablic
void sumatablic(unsigned int n,int * tab1,int * tab2, int * wynik){
    for(int i=0;i<n;i++){
        if(tab2[i]>tab1[i]){
            wynik[i]=tab2[i];
        }
        else{
            wynik[i]=tab1[i];
        }
        printf("%d ",wynik[i]);
    }
}
int main()
{
    int tab1[]={2,7,1,3};
    int tab2[]={4,5,2,8};
    int wynik[4];
    sumatablic(4,tab1,tab2,wynik);
}
//przepisywanie tablicy c)
void wypisz(unsigned int n,int * tab1){
    for(int i=0;i<n;i++){
        printf("%d ",tab1[i]);
    }
    printf("\n");
}
void zamiana(unsigned int n,int * tab1, int * tab2,int * tab3){
int temp;
for(int i=0;i<n;i++){
    temp=tab2[i];
    tab2[i]=tab1[i];
    tab1[i]=tab3[i];
    tab3[i]=temp;
}
}
int main()
{
    int tab1[]={2,7,1,3};
    int tab2[]={4,5,2,8};
    int tab3[]={5,8,9,4};
    zamiana(4,tab1,tab2,tab3);
    wypisz(4,tab1);
    wypisz(4,tab2);
    wypisz(4,tab3);
}
//doklejenie do tablicy dwoch
void wypisz(unsigned int n,double * tab1){
    for(int i=0;i<n;i++){
        printf("%f ",tab1[i]);
    }
    printf("\n");
}
void doklejenie(unsigned int n,double * tab1, double * tab2,double * tab3){
for(int i=0;i<2*n;i++){
    if(i<n){
            tab3[i]=tab1[i];
    }
    else{
        tab3[i]=tab2[i-n];
    }
}
}
int main()
{
    double tab1[]={2,7,1,3};
    double tab2[]={4,5,2,8};
    double tab3[8];
    doklejenie(4,tab1,tab2,tab3);
    wypisz(8,tab3);
}
//dwie tablice w jedna, parzyste indeksy tab2 nieparzyste tab1
void wypisz(unsigned int n,double * tab1){
    for(int i=0;i<n;i++){
        printf("%f ",tab1[i]);
    }
    printf("\n");
}
void doklejenie(unsigned int n,double * tab1, double * tab2,double * tab3){
for(int i=0;i<2*n;i++){
    if(i%2==0){
            tab3[i]=tab2[i/2];
    }
    else{
        tab3[i]=tab1[(i-1)/2];
    }
}
}
int main()
{
    double tab1[]={2,7,1,3};
    double tab2[]={4,5,2,8};
    double tab3[8];
    doklejenie(4,tab1,tab2,tab3);
    wypisz(8,tab3);
}
//1 tab max 2 tab srednia 3 tab min
void wypisz(unsigned int n,int * tab1){
    for(int i=0;i<n;i++){
        printf("%d ",tab1[i]);
    }
    printf("\n");
}
void sortowanie(unsigned int n,int * tab1, int * tab2,int * tab3){
for(int i=0;i<n;i++){
    int max,min,srodek;
    if(tab1[i]>=tab2[i] && tab1[i]>=tab3[i]){
        max=tab1[i];
        if(tab2[i]>tab3[i]){
            srodek=tab2[i];
            min=tab3[i];
        }
        else{
            srodek=tab3[i];
            min=tab2[i];
        }
    }
    else{
        if(tab2[i]>tab3[i]){
         max=tab2[i];
        if(tab3[i]>tab1[i]){
            srodek=tab3[i];
            min=tab1[i];
        }
        else{
            srodek=tab1[i];
            min=tab3[i];
        }
        }
            else{
            srodek=tab1[i];
            min=tab2[i];
        }
    }
tab1[i]=max;
tab2[i]=srodek;
tab3[i]=min;
}
}
int main()
{
    int tab1[]={2,7,1,3};
    int tab2[]={4,5,1,8};
    int tab3[]={1,6,4,6};
    sortowanie(4,tab1,tab2,tab3);
    wypisz(4,tab1);
    wypisz(4,tab2);
    wypisz(4,tab3);
}
// max element z tablicy jednej
void wypisz(unsigned int n,int * tab1){
    for(int i=0;i<n;i++){
        printf("%d ",tab1[i]);
    }
    printf("\n");
}
int max(unsigned int n,int * tab1){
    int wynik=tab1[0];
    for(int i=0;i<n;i++){
        if(tab1[i]>wynik){
            wynik=tab1[i];
        }
    }
    return wynik;
}
int main()
{
    int tab1[]={2,7,1,3};
    printf("max: %d",max(4,tab1));
}
// najmniejszy element tablicy
void wypisz(unsigned int n,int * tab1){
    for(int i=0;i<n;i++){
        printf("%d ",tab1[i]);
    }
    printf("\n");
}
int min(unsigned int n,int * tab1){
    int wynik=tab1[0];
    for(int i=0;i<n;i++){
        if(tab1[i]<wynik){
            wynik=tab1[i];
        }
    }
    return wynik;
}
int main()
{
    int tab1[]={2,7,1,3};
    printf("min: %d",min(4,tab1));
}
//max liczba wysywietla indeks tablicy
void wypisz(unsigned int n,int * tab1){
    for(int i=0;i<n;i++){
        printf("%d ",tab1[i]);
    }
    printf("\n");
}
int max(unsigned int n,int * tab1){
    int wynik=0;
    int indeks=0;
    for(int i=0;i<n;i++){
        if(tab1[i]>wynik){
            wynik=tab1[i];
            indeks=i;
        }
    }
    return indeks;
}
int main()
{
    int tab1[]={2,7,9,3};
    printf("max indeks: %d",max(4,tab1));
}
//min liczba wyswietla indeks tablicy
void wypisz(unsigned int n,int * tab1){
    for(int i=0;i<n;i++){
        printf("%d ",tab1[i]);
    }
    printf("\n");
}
int max(unsigned int n,int * tab1){
    int wynik=tab1[0];
    int indeks=0;
    for(int i=0;i<n;i++){
        if(tab1[i]<wynik){
            wynik=tab1[i];
            indeks=i;
        }
    }
    return indeks;
}
int main()
{
    int tab1[]={782,7,9,3};
    printf("min indeks: %d",max(4,tab1));
}
//iloczyn skalarny
void wypisz(unsigned int n,int * tab1){
    for(int i=0;i<n;i++){
        printf("%d ",tab1[i]);
    }
    printf("\n");
}
int iloczynskalarny(unsigned int n,int * tab1,int * tab2){
    int wynik;
    for(int i=0;i<n;i++){
        wynik=tab1[i]*tab2[i];
    }
    return wynik;
}
int main()
{
    int tab1[]={2,7,9,3};
    int tab2[]={2,1,3,7};
    printf("iloczyn skalarny: %d",iloczynskalarny(4,tab1,tab2));
}
//przesuniecie elementow tablicy o jeden w lewo
void wypisz(unsigned int n,int * tab1){
    for(int i=0;i<n;i++){
        printf("%d ",tab1[i]);
    }
    printf("\n");
}
void jedenwlewo(unsigned int n,int * tab1){
    int wynik;
    int temp=tab1[0];
    for(int i=0;i<n;i++){
        tab1[i]=tab1[i+1];
    }
    tab1[n-1]=temp;
}
int main()
{
    int tab1[]={2,7,9,3};
    int tab2[]={2,1,3,7};
    int tab11[]={6,2,3,1,6,9,8}; //7 ele
    wypisz(7,tab11);
    jedenwlewo(7,tab11);
    wypisz(7,tab11);
}
``
