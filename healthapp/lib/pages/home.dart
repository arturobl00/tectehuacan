import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 113, 177),
      body: Column(children: const [
        Titulo(),
        Barra(),
        Titulo2(),
        Emoticos(),
        Area2(),
      ]),
    );
  }
}

class Area2 extends StatefulWidget {
  const Area2({super.key});

  @override
  State<Area2> createState() => _Area2State();
}

class _Area2State extends State<Area2> {
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
          //Texto Excercises
          Padding(
            padding: const EdgeInsets.all(20.0),
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
          ListView(
            children: const [
              MyContent(
                  emotico: "❤️",
                  titulo: "Speaking skills",
                  subtitulo: "16 Excercises"),
              MyContent(
                  emotico: "👨🏻",
                  titulo: "Reading speed",
                  subtitulo: "8 Excercises"),
              MyContent(
                  emotico: "❤️",
                  titulo: "Star jumps",
                  subtitulo: "40 Excercises"),
            ],
          )
        ],
      ),
    ));
  }
}

class MyContent extends StatelessWidget {
  final String emotico;
  final String titulo;
  final String subtitulo;
  const MyContent(
      {super.key,
      required this.emotico,
      required this.titulo,
      required this.subtitulo});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        children: [
          Container(
            child: Text(emotico),
          ),
          Column(
            children: [Text(titulo), Text(subtitulo)],
          ),
          Icon(Icons.more_horiz)
        ],
      ),
    );
  }
}

class Emoticos extends StatelessWidget {
  const Emoticos({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 79, 149, 207),
                    borderRadius: BorderRadius.circular(20.0)),
                child: const Text(
                  "😔",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Badly",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 79, 149, 207),
                    borderRadius: BorderRadius.circular(20.0)),
                child: const Text(
                  "🙂",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Fine",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 79, 149, 207),
                    borderRadius: BorderRadius.circular(20.0)),
                child: const Text(
                  "😄",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Well",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 79, 149, 207),
                    borderRadius: BorderRadius.circular(20.0)),
                child: const Text(
                  "🥰",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Excellent",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Titulo2 extends StatelessWidget {
  const Titulo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "How do you Feel?",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25.0),
          ),
          Icon(
            Icons.more_horiz,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class Barra extends StatelessWidget {
  const Barra({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
          height: 50.0,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 79, 149, 207),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: const [
              SizedBox(
                width: 10.0,
              ),
              Icon(
                Icons.search,
                color: Colors.white,
              ),
              SizedBox(
                width: 5.0,
              ),
              Text(
                "Search",
                style: TextStyle(color: Colors.white),
              )
            ],
          )),
    );
  }
}

class Titulo extends StatelessWidget {
  const Titulo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Hi, Jared!",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "23 Jan, 2021",
                style: TextStyle(
                    color: Color.fromARGB(255, 189, 183, 183), fontSize: 20),
              )
            ],
          ),
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 79, 149, 207),
                borderRadius: BorderRadius.circular(20)),
            child: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
