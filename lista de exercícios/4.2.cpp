#include <iostream>
#include <locale>


using namespace std;


int main() {
    setlocale(LC_ALL, "pt_BR.UTF-8");
    int opcao;
    double num1, num2, resultado;


    cout << "Selecione uma operação:" << endl;
    cout << "1. Adição" << endl;
    cout << "2. Subtração" << endl;
    cout << "3. Multiplicação" << endl;
    cout << "4. Divisão" << endl;
    cout << "Opção: ";
    cin >> opcao;


    cout << "Informe o primeiro número: ";
    cin >> num1;
    cout << "Informe o segundo número: ";
    cin >> num2;


    switch (opcao) {
        case 1:
            resultado = num1 + num2;
            cout << "Resultado da Adição: " << resultado << endl;
            break;
        case 2:
            resultado = num1 - num2;
            cout << "Resultado da Subtração: " << resultado << endl;
            break;
        case 3:
            resultado = num1 * num2;
            cout << "Resultado da Multiplicação: " << resultado << endl;
            break;
        case 4:
            if (num2 != 0) {
                resultado = num1 / num2;
                cout << "Resultado da Divisão: " << resultado << endl;
            } else {
                cout << "Erro: Divisão por zero não é permitida." << endl;
            }
            break;
        default:
            cout << "Opção inválida!" << endl;
            break;
    }
    return 0;
}
