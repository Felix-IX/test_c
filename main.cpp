#include <iostream>
using namespace std;

int main () {
    int a[20] {0};
    int num = 300;

    for (int i : a) {
        a[i] = num++;
        cout << a[i] << endl << num << endl; 
    }

    return 0;
}

