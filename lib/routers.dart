import 'package:flutter/material.dart';
import 'package:monstera_green_house/screen/buttomnav/airhumdity_screen.dart';
import 'package:monstera_green_house/screen/buttomnav/soilmoisture_screen.dart';
import 'package:monstera_green_house/screen/buttomnav/temperature_screen.dart';
import 'package:monstera_green_house/screen/buttomnav/watervalve_screen.dart';
import 'package:monstera_green_house/screen/dashboard/dashboard_screen.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/dashboard": (BuildContext context) => DashboardScreen(),
  "/watervalve": (BuildContext context) => WatervalveScreen(),
  "/soilmoisture": (BuildContext context) => SoilmoistureScreen(),
  "/airhumdity": (BuildContext context) => AirhumdityScreen(),
  "/temperature": (BuildContext context) => TemperatureScreen(),
};
