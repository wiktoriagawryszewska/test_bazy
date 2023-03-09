#include <stdio.h>
#include<math.h>
int main()
{

    printf("wczytaj liczby calkowite");
    int x,y,z;
    scanf("%d%d%d", &x,&y,&z);

    printf("srodkowa z %d, %d i %d wynosi ", x,y,z);
    if(x>=y && x<=z)
    {
        printf("%d", x);

    }
    else if(y>=x && x>=z)
    {
        printf("%d", x);

    }
    else if(y>=x && y<=z)
    {
        printf("%d", y);
    }
    else if(y<=x && y>=z)
    {
        printf("%d", y);
    }
    else
    {
        printf("%d", z);
    }

    return 0;

}
