#include <iostream>
using namespace std;

int main() {
    int A, B;
    char S;
    cin >> A >> S >> B;

    bool result = false;

    if (S == '<') {
        result = (A < B);
    } else if (S == '>') {
        result = (A > B);
    } else if (S == '=') {
        result = (A == B);
    }

    if (result)
        cout << "Right\n";
    else
        cout << "Wrong\n";

    return 0;
}
