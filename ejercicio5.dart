import 'dart:io';

main() {
  var lista = [];
  print(
      "ingrese datos del producto separe por coma (deje la linea en blanco para terminar): ");
  double valorMaximo = 0.0;
  int pos = 0;
  int contador = 0;
  while (true) {
    var respuesta = stdin.readLineSync();
    respuesta = respuesta!.trim();
    if (respuesta == "") break;
    var s = respuesta.split(",");
    var importe = double.parse(s[1]);
    var cantidad = int.parse(s[2]);
    var iva = importe * cantidad * 19 / 100;
    var totalSinIva = importe * cantidad;
    var total = totalSinIva + iva;
    lista.add([s[0], importe, cantidad, iva, totalSinIva, total]);
    //compruebo si mayor
    if (importe > valorMaximo) {
      valorMaximo = importe;
      pos = contador;
    }
    contador++;
  }
  print('----------------------------------------------');
  print('Lista de productos');
  lista.forEach((e) {
    print(
      " Nombre producto: ${e[0]}: Valor:  ${e[1]}, Unidades: ${e[2]}, Total iva: ${e[3]}, Total sin iva: ${e[4]}, total con iva: ${e[5]} ",
    );
  });

  print("El articulo más caro es ${lista[pos][0]} $valorMaximo");

  print('----------------------------------------------');
  print('Ordenamiento de mayor a menor de los productos');
  lista.sort((a, b) {
    if (a[1] == b[1]) return 0;
    if (a[1] > b[1]) return -1;
    return 1;
  });
  lista.forEach((e) {
    print(
      " Nombre producto: ${e[0]}: Valor:  ${e[1]}, Unidades: ${e[2]}, Total iva: ${e[3]}, Total sin iva: ${e[4]}, total con iva: ${e[5]} ",
    );
  });
}
