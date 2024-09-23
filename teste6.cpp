#include <iostream>
using namespace std;

int main() {
    int x;
    cout << "escolha entre, 1, 2, 3" << "\n";
    cin >> x;
    switch (x) {
    case 1:
        cout << "agora são 05:00 da manhã";
        break;
    case 2:
        cout << "agora são 12:00";
        break;
    case 3:
        cout << "agora são 00:00";
    default:
        break;
    }
    return 0;
}