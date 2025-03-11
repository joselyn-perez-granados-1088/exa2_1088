import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Joselyn Perez 1088'),
          backgroundColor: const Color.fromARGB(198, 112, 111, 111),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                // Agregar funcionalidad para el botón de configuración aquí
              },
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: 9, // Ajusta según la cantidad de elementos que tengas
          itemBuilder: (context, index) {
            return _buildListItem(
              'Haris', // Reemplaza con el nombre que corresponda
              Icons.person, // Icono de perfil
            );
          },
        ),
      ),
    );
  }

  Widget _buildListItem(String name, IconData icon) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(icon), // Icono de perfil
      ),
      title: Text(name),
      subtitle: Text('Not Invited Yet'),
      trailing: ElevatedButton(
        onPressed: () {
          // Agregar funcionalidad para el botón "Invite" aquí
        },
        child: Text('Invite'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          textStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}