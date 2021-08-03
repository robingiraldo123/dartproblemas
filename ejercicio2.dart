import 'dart:io';

main() {
  print('Escriba su edad');
  var respuesta = stdin.readLineSync();
  var valor = int.parse(respuesta!);
  if (valor < 0 && valor <= 0.9) {
    print('Categoría Prenatal');
  } else if (valor >= 0 && valor <= 1) {
    print('Categoria bebé');
  } else if (valor >= 3 && valor <= 5) {
    print('Categoria Niño pequeño');
  } else if (valor >= 5 && valor <= 12) {
    print('Categoria Escuela primaria');
  } else if (valor >= 12 && valor <= 18) {
    print('Categoria Adolescente');
  } else if (valor >= 18 && valor <= 21) {
    print('Categoria Adulto Joven');
  } else {
    print('Categoria no encontrada');
  }
}
