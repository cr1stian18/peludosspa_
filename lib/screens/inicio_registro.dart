import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: (Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: <Color>[
              const Color(0xFF00BCD4),
              const Color(0xFFE0F7FA),
              const Color(0xFF00BCD4),
              const Color(0xFFE0F7FA),
              const Color(0xFF00BCD4),
              const Color(0xFF00BCD4),
              const Color(0xFFE0F7FA),
              const Color(0xFFE0F7FA),
            ], begin: Alignment.topCenter),
          ),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 150),
            children: [
              Bienvenidos(),
              Divider(
                height: 20,
              ),
              imagen(),
              Divider(
                height: 10,
              ),
              botonIngreso(),
              Divider(
                height: 10.0,
              ),
              botonRegistro(),
            ],
          ),
        )),
      ),
    );
  }
}

Widget Bienvenidos() {
  return Container(
      child: Center(
          child: Text(
    "Bienvenidos ",
    style: TextStyle(
      fontFamily: 'rukik',
      fontSize: 53.00,
    ),
  )));
}

Widget imagen() {
  return Container(
    child: Center(
      child: Image(image: AssetImage("assets/perro__.png")),
    ),
  );
}

Widget botonIngreso() {
  return FlatButton(
    height: 50,
    color: const Color(0xFF00B8D4),
    onPressed: () {},
    child: Text(
      "Ingresar",
      style: TextStyle(
        fontSize: 24.00,
        fontFamily: 'robotom',
      ),
    ),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(color: Color.fromRGBO(194, 18, 18, 0.565))),
  );
}

Widget botonRegistro() {
  return FlatButton(
    height: 50,
    color: const Color(0xFF00B8D4),
    onPressed: () {},
    child: Text(
      "Registrarse",
      style: TextStyle(
        fontSize: 24.00,
        fontFamily: 'robotom',
      ),
    ),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(color: Color.fromRGBO(194, 18, 18, 0.565))),
  );
}
