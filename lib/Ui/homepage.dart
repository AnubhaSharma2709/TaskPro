import 'package:flutter/material.dart';
import 'package:task_pro/services/notification_services.dart';
import 'package:task_pro/services/theme_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var notifyHelper;

  void initState(){
    super.initState();
  notifyHelper= NotifyHelper();
  notifyHelper.requestIOSPermissions();
  }

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