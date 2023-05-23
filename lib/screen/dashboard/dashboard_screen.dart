import 'package:flutter/material.dart';
import 'package:monstera_green_house/screen/buttomnav/home_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Monstera Green House'),
      ),
      body: HomeScreen(),
    );
  }
}
