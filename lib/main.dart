import 'package:flutter/material.dart';
import 'package:task_pro/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
            brightness: Brightness.light,
      ),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        primaryColor: Colors.red,
        brightness: Brightness.light,
      ),
      home: HomePage(),
    );
  }
}

