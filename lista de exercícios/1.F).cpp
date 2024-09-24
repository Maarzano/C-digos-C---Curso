#include <iostream>
using namespace std;

int main() {
    string nome;
    int idade;
    cout << "Digite seu nome: ";
    cin.ignore();  // Limpa o buffer do cin
    getline(cin, nome);  // Usa getline para permitir espaços
    cout << "Digite sua idade: ";
    cin >> idade;
    cout << "Nome: " << nome << ", Idade: " << idade << endl;
    return 0;
}
