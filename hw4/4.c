#include <stdio.h>

struct exp
{
    char a;
    long double g;
    short b;
    int c;
    long d;
    float e;
    double f;
};

int main()
{
    struct exp s;
    printf("Size of struct: %lu\n", sizeof(s));
    printf("Size of char: %lu\n", sizeof(s.a));
    printf("Size of short: %lu\n", sizeof(s.b));
    printf("Size of int: %lu\n", sizeof(s.c));
    printf("Size of long: %lu\n", sizeof(s.d));
    printf("Size of float: %lu\n", sizeof(s.e));
    printf("Size of double: %lu\n", sizeof(s.f));
    printf("Size of long double: %lu\n", sizeof(s.g));
    return 0;
}
