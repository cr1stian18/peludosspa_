import 'package:flutter/material.dart';

class Registro extends StatefulWidget {
  const Registro({Key? key}) : super(key: key);

  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
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
              const Color(0xFFE0F7FA),
            ], begin: Alignment.topCenter),
          ),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 90.00),
            children: [
              imagen(),
              Registrarse(),
              Divider(
                height: 20,
              ),
              Nombre(),
              Divider(
                height: 10,
              ),
              Correo_Electronico(),
              Divider(
                height: 10,
              ),
              Contrasena(),
              Divider(
                height: 10,
              ),
              Contrasena_verificacion(),
              Divider(
                height: 25,
              ),
              Register()
            ],
          ),
        )),
      ),
    );
  }
}

Widget imagen() {
  return Container(
    child: Center(
      child: Image(image: AssetImage("assets/logo.png")),
    ),
  );
}

Widget Registrarse() {
  return Text(
    "Registro",
    style: TextStyle(fontSize: 33.00, fontFamily: 'baskerville'),
  );
}

Widget Nombre() {
  return TextField(
    enableInteractiveSelection: false,
    autofocus: true,
    textCapitalization: TextCapitalization.characters,
    decoration: InputDecoration(
        hintText: "Nombre Completo",
        labelText: "Digita tu nombre ",
        suffixIcon: Icon(Icons.badge_rounded),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))),
  );
}

Widget Correo_Electronico() {
  return TextField(
    enableInteractiveSelection: false,
    autofocus: true,
    textCapitalization: TextCapitalization.characters,
    decoration: InputDecoration(
        hintText: "Ingresa tu correo electrónico",
        labelText: "Correo electrónico ",
        suffixIcon: Icon(
          Icons.alternate_email_rounded,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))),
  );
}

Widget Contrasena() {
  return TextField(
    enableIMEPersonalizedLearning: false,
    obscureText: true,
    decoration: InputDecoration(
        hintText: "Crear contraseña",
        labelText: "Contraseña",
        suffixIcon: Icon(
          Icons.password_rounded,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))),
  );
}

Widget Contrasena_verificacion() {
  return TextField(
    enableIMEPersonalizedLearning: false,
    obscureText: true,
    decoration: InputDecoration(
        hintText: "Verifica tu contaseña",
        labelText: "Escribe tu contraseña de nuevo",
        suffixIcon: Icon(
          Icons.lock_rounded,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))),
  );
}

Widget Register() {
  return SizedBox(
    child: FlatButton(
      color: Color.fromARGB(144, 24, 185, 206),
      hoverColor: Colors.blueAccent,
      onPressed: () {},
      child: Text(
        "Registrarse",
        style: TextStyle(
          fontSize: 19.00,
          fontFamily: 'robotom',
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
    ),
  );
}
