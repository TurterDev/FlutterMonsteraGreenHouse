import 'package:flutter/material.dart';
import 'package:monstera_green_house/routers.dart';
import 'package:monstera_green_house/themes/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme(),
      initialRoute: '/dashboard',
      routes: routes,
    );
  }
}
