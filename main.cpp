#include <cstdlib>
#include <iostream>
#include <ostream>
#include "math.hpp"

using namespace std;

int main() {
    int a, b;
    int result;
    int x;

    cout << "Pick two integers: " << endl;
    cin >> a;
    cin >> b;

    result = mul(a, b);

    cout << result << endl;

    x = abs(result);

    cout << x << endl;

    return 0;
}

