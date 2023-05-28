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
        primaryColor: Colors.blue,
            brightness: Brightness.light,
            //brighness compares the text color with text color
            //primary color is responsible for chnaging the default color
      ),
      darkTheme: ThemeData(
      ),
      //Theme data tells how your app should look like
      // Chnage the default settings.
      //using theme data you can change how your app should
      //look like
      home: HomePage(),
    );
  }
}

