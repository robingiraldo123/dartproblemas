import 'dart:io';

void main() {
  print('Escriba su edad');
  var respuesta = stdin.readLineSync();
  var valor = int.parse(respuesta!);
  if (valor >= 18) {
    print('Eres mayor de edad porque tiene $valor');
  } else {
    print('Usted es menor porque tiene $valor');
  }
}
