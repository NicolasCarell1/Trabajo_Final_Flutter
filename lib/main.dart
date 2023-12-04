// main.dart

import 'package:flutter/material.dart';
import 'configuraciones/config.dart';
import 'detalle_imagen_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tienda Online',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 243, 239, 13)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Tienda Online'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _buildImageWithDescription(String imagePath, String description) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetalleImagenPage(imagePath, description),
          ),
        );
      },
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(imagePath),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Inicio'),
              Tab(icon: Icon(Icons.settings), text: 'Configuración'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Contenido de la pestaña de Inicio
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Imágenes con descripciones
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _buildImageWithDescription(
                          'assets/Galaxi_A23.jpg', 'Samsung Galaxi A23'),
                      _buildImageWithDescription(
                          'assets/iphone_13.jpg', 'Iphone 13'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _buildImageWithDescription(
                          'assets/Motorola_G42.jpg', 'Motorola G42'),
                      _buildImageWithDescription(
                          'assets/Pixel_5.jpg', 'Pixel 5'),
                    ],
                  ),
                ],
              ),
            ),
            // Contenido de la pestaña de Configuración
            ConfiguracionPage(),
          ],
        ),
      ),
    );
  }
}
