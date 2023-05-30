import 'package:flutter/material.dart';

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