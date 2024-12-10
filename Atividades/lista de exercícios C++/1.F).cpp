#include <iostream>
using namespace std;

int main() {
    string nome;
    int idade;
    cout << "Digite seu nome: ";
    cin.ignore(0);
    getline(cin, nome);
    cout << "Digite sua idade: ";
    cin >> idade;
    cout << "Nome: " << nome << ", Idade: " << idade << endl;
    return 0;
}
