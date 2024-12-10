#include <iostream>
using namespace std;

int main() {
	int num1, num2, num3;
	
		cout << "digite o 1 numero: " <<"\n";
		cin >> num1;
		cout << "digite o 2 numero: " << "\n";
		cin >> num2;
		cout << "digite o 3 numero: " << "\n";
		cin >> num3;
			if (num1 < num2 && num1 > num3) {
				cout << "o primeiro número é menor que o segundo número e maior que o terceiro número";
			
			} else {
				cout << "o primeiro número não é menor que o segundo número e maior que o terceiro número";
			}
}
