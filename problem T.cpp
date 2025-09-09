#include <iostream>
#include <algorithm>
using namespace std;

int main() {
    int A, B, C;
    cin >> A >> B >> C;

    int nums[3] = {A, B, C};
    sort(nums, nums + 3);

    for (int i = 0; i < 3; i++) {
        cout << nums[i] << "\n";
    }

    cout << "\n";

    cout << A << "\n" << B << "\n" << C << "\n";

    return 0;
}
