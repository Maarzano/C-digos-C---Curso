# include <iostream>
using namespace std;


int main () {
    int num1, num2;
    cout << "escreva seu primeiro numero real: \n ";
    cin >> num1;
    cout << "escreva o seu segundo numero real: \n";
    cin >> num2;
    if (num1>num2) {
      cout << "o " << num1  << " e maior " << num2;
    } else if (num1 == num2) {
      cout << "o " << num1 << " e igual ao " << num2;
    } else {
      cout << "o " << num1 << " nao e maior " << num2;
    }
}
