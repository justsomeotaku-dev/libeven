#include <stdio.h>
#include <even.h>

int main() {
    if (is_even(42)) {
        printf("42 is even!\n");
    } else {
        printf("42 is odd!\n");
    }
    if (is_odd(42)) {
        printf("42 is odd!\n");
    } else {
        printf("42 is even!\n");
    }
    return 0;
}