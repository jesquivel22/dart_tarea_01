import 'dart:io';

void main() {
  var books = [];
  var CD = [];

  String? tituloz = "";
  String? precioz = "";
  String? npz = "";
  int m = 0;
  int l = 0;
  int c = 0;

  while (m == 0) {
    print("________________________");
    print("|   MENU PRINCIPAL     |");
    print("________________________");
    print("|                      |");
    print("|   [1]   LIBROS       |");
    print("|   [2]   CD´S         |");
    print("|   [3]   SALIR        |");
    print("________________________");
    print("");
    print("  Digite la opción: ");
    String? a = stdin.readLineSync();

    switch (a) {
      case "1":
        {
          l = 0;
          while (l == 0) {
            print("________________________");
            print("|      MENU LIBRO      |");
            print("________________________");
            print("|                      |");
            print("|   [1]  REGISTRAR     |");
            print("|   [2]  LISTAR        |");
            print("|   [3]  SALIR         |");
            print("________________________");
            print("");
            print("  Digite la opción: ");
            String? b = stdin.readLineSync();

            switch (b) {
              case "1":
                {
                  print("________________________");
                  print("|   REGISTRAR LIBRO    |");
                  print("________________________");
                  print("-> TITULO :");
                  tituloz = stdin.readLineSync();
                  print("-> PRECIO :");
                  precioz = stdin.readLineSync();
                  print("-> NUMEROS DE PAGINA :");
                  npz = stdin.readLineSync();
                  books.add(Libro(titulo: tituloz, precio: precioz, np: npz));
                  print("");
                  print(" LIBRO RESGISTRADO ...");
                  // Libro(titulo: tituloz, precio: precioz, np: npz);
                }
                break;
              case "2":
                {
                  listarBook(books);
                }
                break;
              case "3":
                {
                  l = 1;
                }
                break;

              default:
                {
                  print("OPCION ERRONEA");
                }
                break;
            }
          }
        }
        break;
      case "2":
        {
          c = 0;
          while (c == 0) {
            print("________________________");
            print("|      MENU  CD's      |");
            print("________________________");
            print("|                      |");
            print("|   [1]  REGISTRAR     |");
            print("|   [2]  LISTAR        |");
            print("|   [3]  SALIR         |");
            print("________________________");
            print("");
            print("  Digite la opción: ");
            String? v = stdin.readLineSync();

            switch (v) {
              case "1":
                {
                  print("________________________");
                  print("|   REGISTRAR CD's     |");
                  print("________________________");
                  print("-> TITULO :");
                  tituloz = stdin.readLineSync();
                  print("-> PRECIO :");
                  precioz = stdin.readLineSync();
                  print("-> MINUTOS :");
                  npz = stdin.readLineSync();
                  CD.add(Cd(titulo: tituloz, precio: precioz, min: npz));
                  print("");
                  print(" LIBRO RESGISTRADO ...");
                }
                break;
              case "2":
                {
                  listarCds(CD);
                }
                break;
              case "3":
                {
                  c = 1;
                }
                break;

              default:
                {
                  print("OPCION ERRONEA");
                }
                break;
            }
          }
        }
        break;
      case "3":
        {
          print("");
          print("MUCHAS GRACIAS POR SU VISITA");
          m = 1;
        }
        break;

      default:
        {
          print("OPCION ERRONEA");
        }
        break;
    }
  }
}

class Papa {
  final String? titulo;
  final String? precio;

  Papa(this.titulo, this.precio);

  @override
  String toString() {
    return 'PAPA: titulo: ${this.titulo}, precio: ${this.precio}';
  }
}

class Libro extends Papa {
  final String? np;
  Libro({
    required String? titulo,
    required String? precio,
    required this.np,
  }) : super(titulo, precio);

  @override
  String toString() {
    return '|${darformat(this.titulo.toString(), 22)} |  ${darformat(this.precio.toString(), 8)} | ${darformat(this.np.toString(), 8)} |';
  }
}

class Cd extends Papa {
  final String? min;
  Cd({
    required String? titulo,
    required String? precio,
    required this.min,
  }) : super(titulo, precio);

  @override
  String toString() {
    return '|${darformat(this.titulo.toString(), 22)} |  ${darformat(this.precio.toString(), 8)} | ${darformat(this.min.toString(), 8)} |';
  }
}

void listarBook(var books) {
  print("");
  print("________________________________________________");
  print("|               LISTA DE LIBROS                |");
  print("________________________________________________");

  print("|    TITULO             |  PRECIO   | PAGINAS  |");
  print("________________________________________________");

  for (var n in books) {
    print(n);
    print("________________________________________________");
  }
  print("");
}

void listarCds(var books) {
  print("");
  print("________________________________________________");
  print("|                LISTA DE CD's                 |");
  print("________________________________________________");

  print("|    TITULO             |  PRECIO   | MINUTOS  |");
  print("________________________________________________");

  for (var n in books) {
    print(n);
    print("________________________________________________");
  }
  print("");
}

darformat(String text, int cant) {
  String textfinal = "";
  int len = text.length;
  if (len >= cant) {
    textfinal = text.substring(0, cant - 3);
    textfinal = textfinal + "...";
  } else {
    textfinal = text;
    for (var i = len; i < cant; i++) {
      textfinal = textfinal + " ";
    }
  }
  return textfinal;
}
