#include <iostream>
using namespace std;


int main() {
    int dia;


    cout << "Selecione um dia da semana:" << endl;
    cout << "1. Domingo" << endl;
    cout << "2. Segunda-feira" << endl;
    cout << "3. Terça-feira" << endl;
    cout << "4. Quarta-feira" << endl;
    cout << "5. Quinta-feira" << endl;
    cout << "6. Sexta-feira" << endl;
    cout << "7. Sábado" << endl;
    cout << "Opção: ";
    cin >> dia;


    switch (dia) {
        case 1:
            cout << "Domingo - Final de semana." << endl;
            break;
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
            cout << "Dia útil." << endl;
            break;
        case 7:
            cout << "Sábado - Final de semana." << endl;
            break;
        default:
            cout << "Opção inválida! Por favor, selecione um número de 1 a 7." << endl;
            break;
    }
    return 0;
}
