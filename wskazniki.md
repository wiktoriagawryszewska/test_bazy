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