#include <stdio.h>
#include "../include/even.h"

int main() {
    if (is_even(42)) {
        printf("42 is even!\n");
    } else {
        printf("42 is odd!\n");
    }
    return 0;
}