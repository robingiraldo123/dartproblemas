import 'dart:io';

main() {
  var lista = [];
  print(
      "ingrese nombre separe por coma (deje la linea en blanco para terminar): ");
  while (true) {
    var respuesta = stdin.readLineSync();
    respuesta = respuesta!.trim();
    if (respuesta == "") break;
    var s = respuesta.split(",");
    lista.add([s[0], double.parse(s[1])]);
  }

  lista.forEach((element) {
    print(
      " ${element[0]}: ${element[1]} ${(element[1] >= 3.8) ? 'aprobado' : (element[1] >= 2.5 && element[1] < 3.8) ? 'recuperando' : 'Perdio'}",
    );
  });
}
