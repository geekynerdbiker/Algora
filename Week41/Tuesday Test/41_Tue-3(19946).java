#include <iostream>
#include <cmath>

int main(int argc, const char * argv[]) {
        unsigned long long N;
        int k = 64;

        std::cin >> N;

        while(N != 0) {
        unsigned long long x = pow(2,k) -1;
        if( N == x-1) break;
        k--;
        N /=2;
        }

        std::cout << k << '\n';
        return 0;
        }
