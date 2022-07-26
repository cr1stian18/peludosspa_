import 'package:flutter/material.dart';

class Ingresar extends StatefulWidget {
  const Ingresar({Key? key}) : super(key: key);

  @override
  State<Ingresar> createState() => _IngresarState();
}

class _IngresarState extends State<Ingresar> {
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
              const Color(0xFFE0F7FA),
            ], begin: Alignment.topCenter),
          ),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 90.00),
            children: [
              imagen(),
              Iniciar_Sesion(),
              Divider(
                height: 20,
              ),
              Correo(),
              Divider(
                height: 10,
              ),
              Contrasena(),
              Divider(
                height: 20,
              ),
              Login(),
              Divider(
                height: 30,
              ),
              Olvidaste_contrasena(),
              Divider(
                height: 50,
              ),
              mensaje(),
              Divider(
                height: 20,
              ),
              Registrate_ahora(),
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

Widget Iniciar_Sesion() {
  return Text(
    "Iniciar Sesión",
    style: TextStyle(fontSize: 33.00, fontFamily: 'baskerville'),
  );
}

Widget Correo() {
  return TextField(
    enableInteractiveSelection: false,
    autofocus: true,
    textCapitalization: TextCapitalization.characters,
    decoration: InputDecoration(
        hintText: "Correo Electrónico",
        labelText: "Correo",
        suffixIcon: Icon(
          Icons.contact_mail_rounded,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))),
  );
}

Widget Contrasena() {
  return TextField(
    enableIMEPersonalizedLearning: false,
    obscureText: true,
    decoration: InputDecoration(
        hintText: "Contraseña",
        labelText: "Contraseña",
        suffixIcon: Icon(
          Icons.phonelink_lock,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))),
  );
}

Widget Login() {
  return SizedBox(
    child: FlatButton(
      color: Color.fromARGB(144, 24, 185, 206),
      hoverColor: Colors.blueAccent,
      onPressed: () {},
      child: Text(
        "Ingresar",
        style: TextStyle(fontSize: 18.00, fontFamily: 'robotom'),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
    ),
  );
}

Widget Olvidaste_contrasena() {
  return Center(
      child: Text(
    "Recuperar Contraseña",
    style: TextStyle(fontSize: 14.00),
  ));
}

Widget mensaje() {
  return Center(
      child: Text(
    "¿Aún no tienes cuenta?",
    style: TextStyle(fontSize: 14.00),
  ));
}

Widget Registrate_ahora() {
  return SizedBox(
    child: FlatButton(
      hoverColor: Colors.blueAccent,
      onPressed: () {},
      child: Text(
        "Regístrate Ahora",
        style: TextStyle(
          fontSize: 20.00,
          fontFamily: 'robotom',
          color: Color.fromARGB(144, 0, 217, 255),
        ),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(color: Color.fromARGB(144, 24, 185, 206))),
    ),
  );
}
