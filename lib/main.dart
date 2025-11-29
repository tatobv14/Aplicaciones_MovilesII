import 'package:flutter/material.dart';

void main() {
  runApp(const NavigatorDemoApp());
}

class NavigatorDemoApp extends StatelessWidget {
  const NavigatorDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo Navigator',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

// === Pantalla 1: HomePage ===
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    /*
    ===================================================================
    ======================== DESCRIPCIÓN DEL RETO =====================
    ===================================================================

    OBJETIVO: Implementar una navegación sencilla hacia una nueva
              pantalla de "Ayuda" (HelpPage) utilizando Rutas Anónimas
              (MaterialPageRoute).

    PASOS A SEGUIR:
    1.  [RETO 1/3] Crea la clase 'HelpPage' al final de este archivo.
        (Mira la sección marcada con // [RETO] PASO 3)

    2.  [RETO 2/3] En esta pantalla (HomePage), dentro del AppBar,
        agrega un 'actions' y un 'IconButton'.

    3.  [RETO 3/3] Dentro de la función onPressed() del IconButton,
        implementa la navegación hacia la HelpPage con:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HelpPage(),
              ),
            );

    */
    return Scaffold(
      appBar: AppBar(
        // [RETO] PASO 2: Coloca aquí el código del actions y el IconButton.
        // Ejemplo de estructura (¡debes completarla!):
        /*
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline, color: Colors.black, size: 30),
            onPressed: () {
              // [RETO] PASO 3: Llama a Navigator.push aquí.
              //
            },
          ),
        ],
        */
        
        title: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: const Text(
            '1. Pantalla Inicial GAES 2',
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 254, 106, 56),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 243, 156, 33),
              Color(0xFF4CAF50),
              Color.fromARGB(255, 0, 0, 0),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/image.jpg',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(
                          data: '¡Dato pasado desde la Pantalla Inicial!',
                          color: const Color.fromARGB(255, 7, 7, 7),
                        ),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Color.fromARGB(255, 186, 29, 29),
                  ),
                  label: const Text('Ir a Pantalla Detalle'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 220, 175, 92),
                    foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// === Pantalla 2: DetailPage ===
class DetailPage extends StatelessWidget {
  final String data;
  final Color color;

  const DetailPage({required this.data, required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: const Text(
            '2. Pantalla Detalle GAES 2',
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 254, 106, 56),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4CAF50), Color.fromARGB(255, 243, 156, 33)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 206, 206, 64),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Text(
                      'Dato Recibido del GAES 2:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        data,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: color),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      label: const Text(
                        'Volver a la Pantalla Inicial del GAES 2',
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                          255,
                          220,
                          175,
                          92,
                        ),
                        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  'assets/image2.jpg',
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// =================================================================
// [RETO] PASO 1: Define aquí la clase 'HelpPage'. Debe ser un StatelessWidget.
// No necesita recibir argumentos en su constructor.
//
// Puedes usar esta plantilla y rellenar los contenidos (Scaffold, AppBar, etc.):
/*
class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla de Ayuda'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Información de Soporte',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Función para volver a la pantalla anterior
                // (Pista: Navigator.pop)
              },
              child: const Text('Volver'),
            ),
          ],
        ),
      ),
    );
  }
}
*/