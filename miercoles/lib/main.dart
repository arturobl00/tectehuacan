import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyContent(),
    );
  }
}

class MyContent extends StatelessWidget {
  const MyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          //Imagen
          Image.asset("assets/parque.jpg"),
          //titulo
          const MyTitulo(),
          //Botones
          const MyBotones(),
          //Informacion
          const MyInformacion()
        ],
      )),
    );
  }
}

class MyInformacion extends StatelessWidget {
  const MyInformacion({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(22.0),
      child: Text(
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
        textAlign: TextAlign.justify,
      ),
    );
  }
}

class MyBotones extends StatelessWidget {
  const MyBotones({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: const [
              Icon(
                Icons.call,
                color: Colors.blue,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "CALL",
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
          Column(
            children: const [
              Icon(
                Icons.near_me,
                color: Colors.blue,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "ROUTE",
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
          Column(
            children: const [
              Icon(
                Icons.share,
                color: Colors.blue,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "SHARE",
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class MyTitulo extends StatelessWidget {
  const MyTitulo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Oeschinen Lake Campground",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Kandersteg, Switzerland",
                style: TextStyle(
                  color: Colors.grey,
                ),
              )
            ],
          ),
          Row(
            children: const [
              Icon(
                Icons.star,
                color: Colors.red,
              ),
              Text("41")
            ],
          )
        ],
      ),
    );
  }
}
