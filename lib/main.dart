import 'package:flutter/material.dart';
import 'package:testing_purpose/src/configuration/dio_config.dart';
import 'package:testing_purpose/src/ui/home-screen/home_screen.dart';





void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioConfig().initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SchoolProfilePage(),
    );
  }
}


