#include <iostream>
using namespace std;

int main() {
    float preco, desconto;
    cout << "Digite o preço do produto: ";
    cin >> preco;
    cout << "Digite o desconto em porcentagem: ";
    cin >> desconto;
    float preco_final = preco - (preco * desconto / 100);
    cout << "O preço final com desconto é: " << preco_final << endl;
    return 0;
}
