#include <iostream>
using namespace std;

int main() {
    float precoCompra[100], precoVenda[100];
    int lucroMenor10 = 0, lucroEntre10e20 = 0, lucroMaior20 = 0;
    for (int i = 0; i < 100; i++) {
        cout << "Insira o preço de compra e venda da mercadoria " << i + 1 << ": ";
        cin >> precoCompra[i] >> precoVenda[i];
        float lucro = (precoVenda[i] - precoCompra[i]) / precoCompra[i] * 100;
        if (lucro < 10) {
            lucroMenor10++;
        } else if (lucro <= 20) {
            lucroEntre10e20++;
        } else {
            lucroMaior20++;
        }
    }
    cout << "Lucro < 10%: " << lucroMenor10 << endl;
    cout << "10% <= Lucro <= 20%: " << lucroEntre10e20 << endl;
    cout << "Lucro > 20%: " << lucroMaior20 << endl;
    return 0;
}
