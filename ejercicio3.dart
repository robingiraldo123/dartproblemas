import 'dart:io';

main() {
  print('Bienvenido. Escoja su pais');
  print('1. Colombia');
  print('2. Argentina');
  print('3. Chile');
  var respuesta = stdin.readLineSync();
  var valor = int.parse(respuesta!);
  print('-----------------------------');
  print('Valor del producto: ');
  var producto = stdin.readLineSync();
  var valorProducto = int.parse(producto!);

  if (valor == 1) {
    var total = (valorProducto * 19) / 100;
    var totalproducto = valorProducto - total;
    print('Su total es : $totalproducto');
  } else if (valor == 2) {
    var total = (valorProducto * 20) / 100;
    var totalproducto = valorProducto - total;
    print('Su total es : $totalproducto');
  } else {
    var total = (valorProducto * 9) / 100;
    var totalproducto = valorProducto - total;
    print('Su total es : $totalproducto');
  }
}
