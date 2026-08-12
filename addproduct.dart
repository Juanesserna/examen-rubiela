import 'dart:io';

void agregarProducto(List<Map<String, dynamic>> productos) {
  while (true) {
    try {
      print("Ingrese el nombre del producto");
      String nombre = stdin.readLineSync()!;
      print("Ingrese el precio del producto");
      double precio = double.parse(stdin.readLineSync()!);
      print("Ingrese la cantidad del producto");
      int cantidad = int.parse(stdin.readLineSync()!);

      if (nombre != "") {
        productos.add({
          "Nombre Producto": nombre,
          "Precio": precio,
          "Cantidad": cantidad,
        });
        print("Producto agregado con exito");
        break;
      } else {
        print("El nombre esta vacio\n");
      }
    } catch (e) {
      print("Debe ingresar un numero valido para la cantidad\n");
    }
  }
}
