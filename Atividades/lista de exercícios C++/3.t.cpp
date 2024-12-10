#include <iostream>
using namespace std;

int main() {
    int num;
    cout << "Digite um número inteiro: ";
    cin >> num;

    if (num % 3 == 0 || num % 5 == 0) {
        cout << "O número é divisível por 3 ou por 5!" << endl;
    } else {
        cout << "O número não é divisível por 3 nem por 5." << endl;
    }

    return 0;
}
