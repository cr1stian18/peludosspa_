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
          gradient: LinearGradient(colors: <Color>[
            Color(0xFF00BCD4),
            Color(0xFFE0F7FA),
            Color(0xFF00BCD4),
            Color(0xFFE0F7FA),
            Color(0xFF00BCD4),
            Color(0xFF00BCD4),
            Color(0xFFE0F7FA),
            Color(0xFFE0F7FA),
          ], begin: Alignment.topCenter),
        ),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 150),
          children: [
            Bienvenidos(),
            const Divider(
              height: 20,
            ),
            imagen(),
            const Divider(
              height: 10,
            ),
            //botonIngreso(),
            TextButton(
              child: const Text(
                "Iniciar Sesión",
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              onPressed: () {
                // Navigator.pushNamed(context, 'login');
                Navigator.pushReplacementNamed(context, 'login');
              },
            ),
            const Divider(
              height: 10.0,
            ),
            //botonRegistro(),
            TextButton(
              child: const Text(
                "Registrarme",
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              onPressed: () {
                // Navigator.pushNamed(context, 'login');
                Navigator.pushReplacementNamed(context, 'Register');
              },
            ),
            const Divider(
              height: 10.0,
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
      fontSize: 40,
    ),
  ));
}

Widget imagen() {
  return const Center(
    child: Image(image: AssetImage("assets/perro__.png")),
  );
}

// Widget botonIngreso() {
//   return RoundedButton(
//     height: 50,
//     color: const Color(0xFF00B8D4),
//     onPressed: () {
//       //Navigator.pushReplacementNamed(context, 'register'),
//       Navigator.pushNamed(context, 'registro_usuario');
//     },
//     child: Text(
//       "Ingresar",
//       style: TextStyle(
//         fontSize: 24.00,
//         fontFamily: 'robotom',
//       ),
//     ),
//     shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(18.0),
//         side: BorderSide(color: Color.fromRGBO(194, 18, 18, 0.565))),
//   );
// }

// Widget botonRegistro() {
//   return FlatButton(
//     height: 50,
//     color: const Color(0xFF00B8D4),
//     onPressed: () {
//       Navigator.of(context)
//                         .push(MaterialPageRoute(builder: (context) => Inicio()));
//     },
//     child: Text(
//       "Registrarse",
//       style: TextStyle(
//         fontSize: 24.00,
//         fontFamily: 'robotom',
//       ),
//     ),
//     shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(18.0),
//         side: BorderSide(color: Color.fromRGBO(194, 18, 18, 0.565))),
//   );
// }
