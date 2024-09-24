#include <iostream>
using namespace std;

int main() {
    int num;
    cout << "Digite um número: ";
    cin >> num;

    if (num != 0) {
        cout << "O número é diferente de zero" << endl;
    } else {
        cout << "O número é zero" << endl;
    }

    return 0;
}
