import 'package:flutter/material.dart';

class SoilmoistureScreen extends StatefulWidget {
  const SoilmoistureScreen({super.key});

  @override
  State<SoilmoistureScreen> createState() => _SoilmoistureScreenState();
}

class _SoilmoistureScreenState extends State<SoilmoistureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Soil Moisture")),
    );
  }
}
