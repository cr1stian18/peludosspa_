import 'package:flutter/material.dart';
import 'package:peludosspa/router/app_routes.dart';
import 'package:peludosspa/screens/inicio_registro.dart';
import 'package:peludosspa/screens/pantalla_ingresar.dart';
import 'package:peludosspa/screens/pantalla_registro.dart';

void main() => runApp(PeludosSpa());

class PeludosSpa extends StatefulWidget {
  const PeludosSpa({Key? key}) : super(key: key);

  @override
  State<PeludosSpa> createState() => _PeludosSpaState();
}

class _PeludosSpaState extends State<PeludosSpa> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Peludos Spa",
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
