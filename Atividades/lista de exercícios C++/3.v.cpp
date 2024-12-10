#include <iostream>
#include <string>
using namespace std;

int main() {
    string nome;

    cout << "Digite seu nome: ";
    cin >> nome;

    if (nome == "Wilson" || nome == "Gloria") {
        cout << "Olá, bem-vindo(a) de volta!" << endl;
    } else {
        cout << "Nome não reconhecido." << endl;
    }

    return 0;
}
