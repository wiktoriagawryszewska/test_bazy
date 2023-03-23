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
