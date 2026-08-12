import 'dart:io';
import 'listarProductos.dart';
import 'addproduct.dart';
import 'actualizarproducto.dart';

void main() {
  List<Map<String, dynamic>> productos = [];
  bool activo = true;

  while (activo) {
    print(
      'MENÚ BIBLIOTECA \n\n1. Agregar libro\n2. Listar libros\n3. Actualizar libro\n4. Eliminar libro\n5. Salir \n\n Elige una opción:',
    );

    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        agregarProducto(productos);
        break;
      case '2':
        listarProducto(productos);
        break;
      case '3':
        actualizarProducto(productos);
        break;
      /*case '4':
        eliminarLibro(libros);
        break; */
      case '5':
        print('¡Hasta luego!');
        activo = false;
        break;
      default:
        print('Opción inválida. Intenta de nuevo.');
    }
  }
}
