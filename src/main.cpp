#include <iostream>
#include "funciones.h"
using namespace std;

int main() {
    string nombre;
    cout << "Escribe tu nombre: ";
    cin >> nombre;
    saludar(nombre);
    return 0;
}
