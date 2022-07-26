import 'package:flutter/material.dart';

class MenuOption {
  final String route;
  final String name;
  final Widget screen;

  MenuOption({
    required this.route,
    required this.name,
    required this.screen,
  });
}
