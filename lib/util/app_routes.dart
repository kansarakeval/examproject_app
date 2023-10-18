import 'package:examproject_app/screen/edit_screen.dart';
import 'package:examproject_app/screen/home_screen.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> screenRoutes={
  '/':(context) => HomeScreen(),
  'edit':(context) => EditScreen(),
};