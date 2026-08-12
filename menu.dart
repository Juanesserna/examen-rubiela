import 'dart:io';

void main() {
  List<Map<String, dynamic>> producto = [];
  bool activo = true;

  while (activo) {
    print(
      'MENÚ BIBLIOTECA \n\n1. Agregar producto\n2. Listar productos\n3. Actualizar producto\n4. Eliminar producto\n5. Salir \n\n Elige una opción:',
    );

    String? opcion = stdin.readLineSync();

    switch (opcion) {
      /* case '1':
        agregarProducto(producto);
        break; */
      case '2':
        /*         listarProducto(producto);
 */
        break;
      /*   case '3':
        actualizarProducto(producto);
        break;
      case '4':
        eliminarProducto(producto);
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
