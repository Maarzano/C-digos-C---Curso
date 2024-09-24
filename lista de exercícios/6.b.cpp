#include <iostream>
using namespace std;

int main() {
    int num;
    cout << "Insira um número inteiro: ";
    cin >> num;
    int i = 1;
    while (i <= 10) {
        cout << num << " x " << i << " = " << num * i << endl;
        i++;
    }
    return 0;
}
