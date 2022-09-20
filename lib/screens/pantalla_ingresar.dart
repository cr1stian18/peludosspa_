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
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/fondo9.png")),
          ),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 90.00),
            children: [
              Padding(padding: EdgeInsets.only(top: 280)),
              Iniciar_Sesion(),
              Padding(padding: EdgeInsets.only(top: 15)),
              Correo(),
              Padding(padding: EdgeInsets.only(top: 9)),
              Contrasena(),
              Padding(padding: EdgeInsets.only(top: 15)),
              TextButton(
                child: const Text(
                  "Ingresar",
                  style: TextStyle(
                    color: Color.fromARGB(237, 0, 0, 0),
                    fontSize: 20.00,
                    fontFamily: 'robotom',
                  ),
                ),
                onPressed: () {
                  Navigator.popAndPushNamed(context, 'service');
                },
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(186, 24, 185, 206),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                      side: BorderSide()),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 16)),
              TextButton(
                child: const Text(
                  "Recuperar Contraseña",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      fontSize: 16.00,
                      color: Color.fromARGB(192, 0, 110, 255)),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Digite Su Correo Electrónico"),
                      content: TextField(
                        enableInteractiveSelection: false,
                        autofocus: true,
                        textCapitalization: TextCapitalization.characters,
                        decoration: InputDecoration(
                            hintText: "Correo Electrónico",
                            labelText: "Correo",
                            suffixIcon: Icon(
                              Icons.contact_mail_rounded,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0))),
                      ),
                      actions: [
                        TextButton(
                          child: const Text(
                            "RESTABLECER CONTRASEÑA",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(221, 19, 18, 18),
                            ),
                          ),
                          style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                  side: BorderSide()),
                              backgroundColor:
                                  Color.fromARGB(255, 72, 216, 238)),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                backgroundColor:
                                    Color.fromARGB(255, 240, 253, 255),
                                title: Center(
                                  child: (Text(
                                      "Hemos recibido la solicitud para recuperar tu contraseña. Si el correo electrónico coincide con el registrado, te eviaremos un mensaje al instante con los pasos para recuperar tu contraseña.")),
                                ),
                                content: Icon(
                                  Icons.verified,
                                  color: Colors.green,
                                  size: 57,
                                ),
                                actions: [
                                  Container(
                                      child: Center(
                                    child: TextButton(
                                        child: const Text(
                                          "CERRAR",
                                          style: TextStyle(
                                            fontSize: 21,
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
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
              Padding(padding: EdgeInsets.only(top: 16)),
              mensaje(),
              Padding(padding: EdgeInsets.only(top: 18)),
              TextButton(
                child: const Text(
                  "Regístrate Ahora",
                  style: TextStyle(
                    fontSize: 20.00,
                    fontFamily: 'robotom',
                    color: Color.fromARGB(255, 0, 167, 189),
                  ),
                ),
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                          color: Color.fromARGB(144, 24, 185, 206),
                          width: 1.5,
                          style: BorderStyle.solid)),
                ),
                onPressed: () {
                  Navigator.popAndPushNamed(context, 'register');
                },
              ),
            ],
          ),
        )),
      ),
    );
  }
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

Widget mensaje() {
  return Center(
      child: Text(
    "¿Aún no tienes cuenta?",
    style: TextStyle(fontSize: 14.00, fontWeight: FontWeight.bold),
  ));
}
