#include <iostream>
using namespace std;

int main() {
    string nome;
    cout << "Digite seu nome: ";
    cin.ignore();
    getline(cin, nome); 
    cout << "Seu nome é: " << nome << endl;
    return 0;
}