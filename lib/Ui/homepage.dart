import 'package:flutter/material.dart';
import 'package:task_pro/services/theme_services.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
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
  return AppBar(
    leading: GestureDetector(
      onTap: (){
        ThemeServices().switchTheme();
        print("tapped");
      },
      child: Icon(Icons.nightlight_round,
      size: 20,),
    ),
    actions: [
      Icon(Icons.person,
      size: 20,),
      SizedBox(width: 20,),
    ],
  );
}