import 'dart:js';

import 'package:flutter/material.dart';
import 'package:task_pro/services/theme_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: const [
          Text('Theme data',
          style: TextStyle(
            fontSize: 30,
          ),)
        ],
      ),
    );
  }
}

_appBar(){
  return Container(
    child: Row(
    children: [
        GestureDetector(
          onTap: (){
            ThemeServices().switchTheme();
            print("tapped");
          },
          child: Icon(Icons.nightlight_round, size: 20,),
        ),
          CircleAvatar(
            backgroundImage: AssetImage(
                "lib/images/AnubhaSharma.png"
            ),
            radius: 25,
          ),
        ],
    )
  );
}