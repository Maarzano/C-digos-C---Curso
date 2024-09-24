#include <iostream>
using namespace std;

int main() {
    string nome;
    cout << "Digite seu nome: ";
    cin.ignore();  // Limpa o buffer do cin
    getline(cin, nome);  // Usa getline para permitir espaços
    cout << "Seu nome é: " << nome << endl;
    return 0;
}