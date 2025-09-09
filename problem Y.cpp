#include<iostream>
using namespace std;

int main() {
    long long a, b, c, d;
    cin >> a >> b >> c >> d;

    long long product = a * b * c * d;

    cout << product % 100 << endl; 

    return 0;
}
