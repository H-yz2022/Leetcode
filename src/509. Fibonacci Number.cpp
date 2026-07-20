// Fibonacci numbers: given n, compute
// F_n = F_n-1 + F_n-2 ...
// F_1 = F_2 = 1
// Subprobs: F(i) = F_i 1 <= i <= n
// Relate: F(i) = F(i-1) + F(i-2)
// Topological order: increasing i, for i = 1, i = 2
// Base: F(1) = F(2) = 1
// Original: F(n)
// Time: T(n) = T(n-1) + T(n-2) + 1


class Solution {
public:
    int fib(int n) {
        int f[n+1];
        if (n == 1 || n == 0) return n;
        f[0] = 0;
        f[1] = 1; 
        for (int i=2; i<=n; i++) {
            f[i] = f[i-1] + f[i-2];
        }
        return f[n];
    }
};
