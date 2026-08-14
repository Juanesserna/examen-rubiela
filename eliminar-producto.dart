import 'dart:io';

void eliminarProducto(List<Map<String, dynamic>> productos) {
  if (productos.isEmpty) {
    print('No hay productos para eliminar.');
    return;
  }
  
  print('\n--- LISTA DE PRODUCTOS ---');
  for (int i = 0; i < productos.length; i++) {
    print('${i + 1}. Nombre: ${productos[i]['Nombre Producto']} | '
        'Precio: ${productos[i]['Precio']}');
  }

  stdout.write('Número del producto a eliminar: ');
  String? indiceTexto = stdin.readLineSync();

  int? indice = int.tryParse(indiceTexto ?? '');
  if (indice == null || indice < 1 || indice > productos.length) {
    print('Error: número fuera de rango.');
    return;
  }

  Map<String, dynamic> eliminado = productos.removeAt(indice - 1);
  print('Producto eliminado: ${eliminado['Nombre Producto']}');
}