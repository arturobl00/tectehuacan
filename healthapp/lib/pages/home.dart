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
      body: Column(children: [
        Titulo(),
        Barra(),
        Titulo2(),
        Emoticos(),
      ]),
    );
  }
}

class Emoticos extends StatelessWidget {
  const Emoticos({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
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
      padding: const EdgeInsets.all(20.0),
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
