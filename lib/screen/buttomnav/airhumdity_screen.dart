import 'package:flutter/material.dart';

class AirhumdityScreen extends StatefulWidget {
  const AirhumdityScreen({super.key});

  @override
  State<AirhumdityScreen> createState() => _AirhumdityScreenState();
}

class _AirhumdityScreenState extends State<AirhumdityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Air Humdity")),
    );
  }
}
