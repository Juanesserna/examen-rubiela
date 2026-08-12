//Listar productos: Mostrar todos los productos con: Número de índice, Nombre, Precio,Cantidad disponible

void listarProducto(List<Map<String, dynamic>> producto) {
  if (producto.isEmpty) {
    // Verificamos si la lista está vacía.
    print(
      'No hay productos registrados.',
    ); // Si no hay productos, mostramos este mensaje.
    return; // "return" termina la función aquí.
  }

  print('LISTA DE PRODUCTOS'); // Si hay productos, mostramos un título.
  for (int i = 0; i < producto.length; i++) {
    //// "i" comienza en 0 y aumenta hasta llegar al último producto.
    print(
      // Mostramos la información del Producto actual.
      '${i + 1}. Nombre: ${producto[i]['Nombre Producto']} | '
      'Precio: ${producto[i]['Precio']} | '
      'Cantidad: ${producto[i]['Cantidad']}',
    );
  }
}
