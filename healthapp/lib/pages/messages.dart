import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 113, 177),
      body: Column(children: [
        const Titulo(),
        const Expanded(child: Area3()),
        Container(
            decoration: const BoxDecoration(color: Colors.white),
            child: const Padding(
              padding: EdgeInsets.only(bottom: 8.0, top: 8.0),
              child: BarraEnviar(),
            ))
      ]),
    );
  }
}

class MensajesEnviados extends StatelessWidget {
  final String mensaje;
  final String tipo;
  const MensajesEnviados(
      {super.key, required this.mensaje, required this.tipo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: tipo == "Enviado" ? Colors.blueAccent[700] : Colors.green,
            borderRadius: tipo == "Enviado"
                ? BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20))
                : BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
          ),
          child: Text(
            mensaje,
            style: TextStyle(color: Colors.white),
            textAlign: tipo == "Enviado" ? TextAlign.start : TextAlign.end,
          ),
        ),
      ),
    );
  }
}

class BarraEnviar extends StatelessWidget {
  const BarraEnviar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20.0)),
          child: Row(
            children: const [
              Text("🙂"),
              SizedBox(
                width: 5,
              ),
              Text("Mensaje"),
              SizedBox(
                width: 170,
              ),
              Icon(Icons.attach_file),
              Icon(Icons.camera_alt),
            ],
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(20.0)),
          child: const Icon(
            Icons.mic_none_rounded,
            color: Colors.white,
          ),
        )
      ],
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
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: ListView(children: const [
          MensajesEnviados(
            mensaje: "Hola como estas",
            tipo: "Enviado",
          ),
          MensajesEnviados(
            mensaje: "Bien y Tu?",
            tipo: "",
          ),
          MensajesEnviados(
            mensaje: "Muy Bien Gracias",
            tipo: "Enviado",
          ),
          MensajesEnviados(
            mensaje: "Aqui saludando y tu haces 🤔",
            tipo: "Enviado",
          ),
          MensajesEnviados(
            mensaje: "No te interrumpo",
            tipo: "Enviado",
          ),
          MensajesEnviados(
            mensaje: "No para nada todo bien",
            tipo: "",
          ),
          MensajesEnviados(
            mensaje: "aaaaaaaaaaaaaaa",
            tipo: "Enviado",
          ),
          MensajesEnviados(
            mensaje: "🙄🙄🙄🙄🙄🙄🙄🙄🙄🙄🙄",
            tipo: "Enviado",
          ),
          MensajesEnviados(
            mensaje: "Sale Te dejo Gracias por platicar",
            tipo: "",
          ),
          MensajesEnviados(
            mensaje: "🙂",
            tipo: "",
          )
        ]),
      ),
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
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 79, 149, 207),
                borderRadius: BorderRadius.circular(20)),
            child: const Icon(
              Icons.replay,
              color: Colors.white,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                "Bobby singer",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Online",
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
              Icons.call,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
