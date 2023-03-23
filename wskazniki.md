#include<stdio.h>
#include<math.h>
int podwoj(int* x)
{
    *x= 2*(*x);
return *x;
}

int main(){
    int a =7;
    printf("%d\n", podwoj(&a));
    printf("%d", a);
    return 0;
}

#include<stdio.h>
#include<math.h>
int min(int* x, int* y)
{
    if(*x>*y)
        return *y;
        return *x;
}

int main(){
    int a =7;
    int b = 9;
    printf("%d\n", min(&a, &b));
    return 0;
}
#include<stdio.h>
#include<math.h>
int suma(const int* x, const int* y){

 return *x + *y;
}

int main(){
    int a =17;
    int b = 9;
    printf("%d", suma(&a, &b));
    return 0;
}

#include<stdio.h>
#include<math.h>
void przypisz( int* n, int* w){
*w=n;

}

int main(){
    int x = 5;
    przypisz(3, &x);
    printf("%d", x);


    return 0;
}

#include<stdio.h>
#include<math.h>
int* rezerwuj( ){

return malloc(sizeof(int))
}

int main(){
   int* wsk = rezerwuj();
   printf("%p", wsk)
   printf("%d", *wsk)
    return 0;
}
