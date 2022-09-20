import 'dart:async';

import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/fondo6.png")),
        ),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 180),
          children: [
            Bienvenidos(),
            Padding(padding: EdgeInsets.only(top: 380)),
            TextButton(
              child: const Text(
                "Iniciar Sesión",
                style: TextStyle(
                    fontSize: 24, color: Colors.black87, fontFamily: 'robotom'),
              ),
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(
                          color: Color.fromARGB(237, 101, 14, 240),
                          width: 1.5,
                          style: BorderStyle.solid)),
                  backgroundColor: Color(0xFF00B8D4)),
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'login');
              },
            ),
            Padding(padding: EdgeInsets.only(top: 9)),
            TextButton(
              child: const Text(
                "Registrarme",
                style: TextStyle(
                    fontSize: 24, color: Colors.black87, fontFamily: 'robotom'),
              ),
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(
                          color: Color.fromARGB(237, 101, 14, 240),
                          width: 1.5,
                          style: BorderStyle.solid)),
                  backgroundColor: Color(0xFF00B8D4)),
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'register');
              },
            ),
          ],
        ),
      )),
    );
  }
}

Widget Bienvenidos() {
  return const Center(
      child: Text(
    "Bienvenidos",
    style: TextStyle(
        fontFamily: 'rukik',
        fontSize: 53.00,
        color: Color.fromARGB(255, 234, 236, 238)),
  ));
}
