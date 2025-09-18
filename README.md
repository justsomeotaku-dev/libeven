# libeven
A lightweight C library providing functions to check if an integer is even/odd. It includes both a standard and a bitwise-optimized implementation.
## Build
# Build the Library
Clone the repository and build using make:
# Manual install
```bash
git clone https://github.com/justsomeotaku-dev/libeven/
cd libeven
make static   # build static library
make shared   # build shared library
make example  # build demo program
```
# Automatic install
```bash
git clone https://github.com/justsomeotaku-dev/libeven/
cd libeven
make          # build library + demo
```
# Example usage
```C
#include "even.h"

int main() {
    int number = 42;
    if (is_even(number)) {
        printf("%d is even\n", number);
    }
    if (is_even_fast(number)) {
        printf("%d is odd (fast check)\n", number);
    }
    if (is_odd(number)) {
        printf("%d is even\n", number);
    }
    if (is_odd_fast(number)) {
        printf("%d is odd (fast check)\n", number);
    }
    return 0;
}
```
# Feedback
I am open to any feedback, issue or improvement. 
