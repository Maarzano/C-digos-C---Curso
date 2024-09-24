#include <iostream>
using namespace std;

int main() {
    int idade;
    char temCarteira;

    cout << "Digite sua idade: ";
    cin >> idade;
    cout << "Você tem carteira de motorista? (s/n): ";
    cin >> temCarteira;

    if (idade > 18 && (temCarteira == 's' || temCarteira == 'S')) {
        cout << "Você pode dirigir." << endl;
    } else {
        cout << "Você não pode dirigir." << endl;
    }

    return 0;
}
