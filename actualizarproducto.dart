import 'dart:io';

void actualizarProducto(List<Map<String, dynamic>> productos) {
  // Verificamos si hay productos.
  if (productos.isEmpty) {
    print('No hay productos para actualizar.');
    return;
  }

  // Mostramos los productos disponibles.
  print('\n--- LISTA DE PRODUCTOS ---');

  for (int i = 0; i < productos.length; i++) {
    print(
      '${i + 1}. '
      'Nombre: ${productos[i]['Nombre Producto']} | '
      'Precio: ${productos[i]['Precio']} | '
      'Cantidad: ${productos[i]['Cantidad']}',
    );
  }

  // Pedimos el número del producto.
  stdout.write('\nÍndice del producto a actualizar: ');

  // Guardamos lo que escribió el usuario.
  String? indiceTexto = stdin.readLineSync();

  // Convertimos el texto a número.
  int? indice = int.tryParse(indiceTexto ?? '');

  // Comprobamos que haya ingresado un número.
  if (indice == null) {
    print('Debes ingresar un número.');
    return;
  }

  // Comprobamos que el producto exista.
  if (indice < 1 || indice > productos.length) {
    print('Ese producto no existe.');
    return;
  }

  // Convertimos el número del usuario
  // a la posición que utiliza Dart.
  int i = indice - 1;

  // Pedimos los nuevos datos.
  // Si se deja vacío, se conserva el dato anterior.

  stdout.write('Nuevo nombre (Enter para conservar): ');
  String? nombre = stdin.readLineSync();

  stdout.write('Nuevo precio (Enter para conservar): ');
  String? precioTexto = stdin.readLineSync();

  stdout.write('Nueva cantidad (Enter para conservar): ');
  String? cantidadTexto = stdin.readLineSync();

  // Actualizamos el nombre si el usuario escribió uno.
  if (nombre != null && nombre.trim().isNotEmpty) {
    productos[i]['Nombre Producto'] = nombre;
  }

  // Actualizamos el precio si el usuario escribió uno.
  if (precioTexto != null && precioTexto.trim().isNotEmpty) {
    double? precio = double.tryParse(precioTexto);

    if (precio != null) {
      productos[i]['Precio'] = precio;
    } else {
      print('El precio debe ser un número.');
      return;
    }
  }

  // Actualizamos la cantidad si el usuario escribió una.
  if (cantidadTexto != null && cantidadTexto.trim().isNotEmpty) {
    int? cantidad = int.tryParse(cantidadTexto);

    if (cantidad != null) {
      productos[i]['Cantidad'] = cantidad;
    } else {
      print('La cantidad debe ser un número.');
      return;
    }
  }

  // Confirmamos la actualización.
  print('Producto actualizado correctamente.');
}
