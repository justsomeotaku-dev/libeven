#include "even.h"

int is_even(int n) {
    return (n % 2 == 0);
}
int is_even_fast(int n) {
    return !(n & 1);
}
int is_odd(int n) {
    return (n % 2 != 0);
}
int is_odd_fast(int n) {
    return (n & 1);
}