import 'package:examproject_app/util/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.blue.shade100,
    systemNavigationBarColor: Colors.blue.shade100,
  ));
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      routes: screenRoutes,
    ),
  );
}