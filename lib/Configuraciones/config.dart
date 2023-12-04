// configuracion_page.dart

import 'package:flutter/material.dart';

class ConfiguracionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: const <Widget>[
          ListTile(
            title: Text('Preferencias del Usuario'),
            subtitle:
                Text('Configuración de preferencias individuales del usuario.'),
            leading: Icon(Icons.settings),
          ),
          ListTile(
            title: Text('Cuentas y Seguridad'),
            subtitle: Text('Opciones de seguridad y privacidad.'),
            leading: Icon(Icons.settings),
          ),
          ListTile(
            title: Text('Notificaciones y Sonidos'),
            subtitle: Text(
                'Configuración de notificaciones y sonidos de la aplicación.'),
            leading: Icon(Icons.settings),
          ),
          ListTile(
            title: Text('Accesibilidad'),
            subtitle: Text('Configuración de tamaño de fuente y contraste.'),
            leading: Icon(Icons.settings),
          ),
          ListTile(
            title: Text('Idioma y Localización'),
            subtitle: Text('Selección del idioma de la aplicación.'),
            leading: Icon(Icons.settings),
          ),
          // Agregar más ListTile según sea necesario
        ],
      ),
    );
  }
}
