import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Curso(
        texto: "Mi AppBar",
      ),
    );
  }
}

class Curso extends StatelessWidget {
  final String texto;
  const Curso({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(texto),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Aquí puedes agregar la funcionalidad para abrir el menú lateral
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Aquí puedes agregar la funcionalidad para la búsqueda
              },
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.bluetooth_searching)),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                AlertDialog(
                  title: const Text("HOla"),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: const <Widget>[
                        Text('This is a demo alert dialog.'),
                        Text('Would you like to approve of this message?'),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
        body: Center(
            child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(12)),
          child: const Text(
            "Esta es mi APP",
            style: TextStyle(
                fontSize: 40.0,
                color: Colors.green,
                fontWeight: FontWeight.bold),
          ),
        )));
  }
}
