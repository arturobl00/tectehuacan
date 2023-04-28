import 'package:flutter/material.dart';
import 'package:healthapp/pages/home.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 113, 177),
      body: Column(children: const [
        Titulo(),
        Barra(),
        Area3(),
      ]),
    );
  }
}

class CategoriaArea extends StatelessWidget {
  const CategoriaArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 20.0, right: 20.0, top: 0, bottom: 0.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Category",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              Icon(Icons.more_horiz)
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Column(
                  children: const [
                    Cubos(titulo: "Relationship", color: Colors.purple),
                    Cubos(titulo: "Educations", color: Colors.orange)
                  ],
                ),
                Column(
                  children: const [
                    Cubos(titulo: "Career", color: Colors.blue),
                    Cubos(titulo: "Others", color: Colors.pink)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Cubos extends StatelessWidget {
  final String titulo;
  final Color color;
  const Cubos({super.key, required this.titulo, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 140,
        height: 70,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(20.0)),
        child: Center(
          child: Text(
            titulo,
            style: const TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class Area3 extends StatefulWidget {
  const Area3({super.key});

  @override
  State<Area3> createState() => _Area3State();
}

class _Area3State extends State<Area3> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        children: [
          //Widget CategoriaArea
          CategoriaArea(),
          //Texto Excercises
          Padding(
            padding: const EdgeInsets.only(
                left: 20.0, right: 20.0, top: 0, bottom: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Exercises",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                Icon(Icons.more_horiz)
              ],
            ),
          ),
          Expanded(
            child: ListView(children: const [
              MyItem1(
                  dibujo: "👨🏻",
                  titulo: "Juan Perez",
                  subtitulo: "Docente",
                  color: Colors.orange),
              MyItem1(
                  dibujo: "👨🏻‍🦰",
                  titulo: "Raúl Menecez",
                  subtitulo: "Ingeniero",
                  color: Colors.blue),
              MyItem1(
                  dibujo: "👨🏻‍🦲",
                  titulo: "Pablo Lopez",
                  subtitulo: "Electricista",
                  color: Colors.yellow),
              MyItem1(
                  dibujo: "👩🏻‍🦳",
                  titulo: "Maria del Carmen",
                  subtitulo: "Doctora",
                  color: Colors.purple),
              MyItem1(
                  dibujo: "👩🏻‍🦱",
                  titulo: "Josefina Morales",
                  subtitulo: "Educadora",
                  color: Colors.blue),
              MyItem1(
                  dibujo: "👱🏻‍♀️",
                  titulo: "Esmeralda Boo",
                  subtitulo: "Psicologa",
                  color: Colors.yellow),
              MyItem1(
                  dibujo: "🧑🏻‍🦰",
                  titulo: "Jorge Ivañez",
                  subtitulo: "Medico",
                  color: Colors.orange),
              MyItem1(
                  dibujo: "🧔🏻",
                  titulo: "Rogelio Cono",
                  subtitulo: "Nutriologo",
                  color: Colors.blue),
            ]),
          )
        ],
      ),
    ));
  }
}

class MyItem1 extends StatelessWidget {
  final String dibujo;
  final String titulo;
  final String subtitulo;
  final Color color;
  const MyItem1(
      {super.key,
      required this.dibujo,
      required this.titulo,
      required this.subtitulo,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(dibujo),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 3.0,
                ),
                Text(
                  subtitulo,
                  style: const TextStyle(color: Colors.grey),
                )
              ],
            ),
            const SizedBox(
              width: 130.0,
            ),
            const Icon(Icons.more_horiz)
          ],
        ),
      ),
    );
  }
}
