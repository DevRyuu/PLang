// data type and variables in C
#include <stdio.h>
#include <stdlib.h>

int main()
{
    int a = 10;
    int b = 20;
    int c = a + b;
    printf("%d + %d = %d\n", a, b, c);

    int a = 10;
    int b = 20;
    int c = a - b;
    printf("%d - %d = %d\n", a, b, c);

    int a = 10;
    int b = 20;
    float c = (float)a / b;
    printf("%.2f\n", c);

    int a = 10;
    int b = 20;
    int max;
    if (a < b)
    {
        max = b;
    } else
    {
        max = a;
    }
    printf("큰 수는: %d\n", max);

    int a = 10;
    int b = 20;
    int c = a + b;
    int d = a - b;
    float e = (float)a / b;
    int max;
    if (a < b)
    {
        max = b;
    } else
    {
        max = a;
    }
    printf("%d + %d = %d\n", a, b, c);
    printf("%d - %d = %d\n", a, b, d);
    printf("%.2f\n", e);
    printf("큰 수는: %d\n", max);

    int a = 10;
    int b = 20;
    int c = a + b;
    int d = a - b;
    float e = (float)a / b;
    int max = a < b ? b : a;
    printf("%d + %d = %d\n", a, b, c);
    printf("%d - %d = %d\n", a, b, d);
    printf("%.2f\n", e);
    printf("큰 수는: %d\n", max);

    int a = 10;
    int b = 20;
    int c = a + b;
    int d = a - b;       // 10 - 20 = -10
    float e = (float)a / b;
    int max = a < b ? b : a;
    printf("%d + %d = %d\n", a, b, c);
    printf("%d - %d = %d\n", a, b, d);
    printf("%.2f\n", e);
    printf("큰 수는: %d\n", max);

    return 0;
}