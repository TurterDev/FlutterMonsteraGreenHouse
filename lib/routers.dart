import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:monstera_green_house/screen/dashboard/dashboard_screen.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/dashboard": (BuildContext context) => DashboardScreen(),
};
