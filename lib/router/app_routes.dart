import 'package:flutter/material.dart';
import 'package:peludosspa/models/menu_options.dart';
import 'package:peludosspa/screens/inicio_registro.dart';
import 'package:peludosspa/screens/pantalla_ingresar.dart';
import 'package:peludosspa/screens/pantalla_registro.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>{
    MenuOption(route: 'home', name: 'Inicio_Registro', screen: Inicio()),
    MenuOption(route: 'login', name: 'Inicio_sesion', screen: Ingresar()),
    MenuOption(route: 'Register', name: 'Registrarse', screen: Registro())
  };

  static Map<String, Widget Function(BuildContext context)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const Inicio()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const Inicio());
  }
}
