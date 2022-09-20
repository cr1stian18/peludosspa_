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
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/fondo13.png")),
          ),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 90.00),
            children: [
              Padding(padding: EdgeInsets.only(top: 280)),
              Registrarse(),
              Padding(padding: EdgeInsets.only(top: 15)),
              Nombre(),
              Padding(padding: EdgeInsets.only(top: 9)),
              Correo_Electronico(),
              Padding(padding: EdgeInsets.only(top: 9)),
              Contrasena(),
              Padding(padding: EdgeInsets.only(top: 9)),
              Contrasena_verificacion(),
              Padding(padding: EdgeInsets.only(top: 15)),
              TextButton(
                child: const Text(
                  "Crear cuenta",
                  style: TextStyle(
                    color: Color.fromARGB(237, 0, 0, 0),
                    fontSize: 20.00,
                    fontFamily: 'robotom',
                  ),
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                              title: Text("¡REGISTRO EXITOSO!               "
                                  "Ahora podras disfrutar de todos nuestros servicios."),
                              alignment: Alignment.center,
                              content: Image(
                                  image: AssetImage("assets/perro___.png")),
                              actions: [
                                Container(
                                    child: Center(
                                  child: TextButton(
                                      child: const Text(
                                        "CONTINUAR",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromARGB(221, 19, 18, 18),
                                        ),
                                      ),
                                      style: TextButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                            side: BorderSide()),
                                        backgroundColor:
                                            Color.fromARGB(255, 72, 216, 238),
                                      ),
                                      onPressed: () {
                                        Navigator.popAndPushNamed(
                                            context, 'login');
                                      }),
                                ))
                              ]));
                },
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(186, 24, 185, 206),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                      side: BorderSide()),
                ),
              ),
              TextButton(
                child: const Text(
                  "Si ya tienes cuenta entra AQUÍ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      fontSize: 15.00,
                      color: Color.fromARGB(192, 0, 110, 255)),
                ),
                onPressed: () {
                  Navigator.popAndPushNamed(context, 'login');
                },
              ),
            ],
          ),
        )),
      ),
    );
  }
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
