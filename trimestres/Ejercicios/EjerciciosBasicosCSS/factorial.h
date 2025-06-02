#include "factorial.h"

unsigned long long factorial(int n) {
    unsigned long long result = 1;
    
    // Calcular factorial usando un bucle
    for (int i = 1; i <= n; i++) {
        result *= i;
    }

    return result;
}
