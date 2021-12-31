import 'package:flutter/material.dart';
import 'package:wolfflashlight/wolfflashlight.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  var isON = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text("Flashlight App"),
        centerTitle: true,
        backgroundColor: Color(0x213963FF),
      ),

      body: Center(
        child: Switch(value: isON,
          onChanged: (value) {
           setState(() {
             isON = !isON;
             isON ? Wolfflashlight.lightOn() : Wolfflashlight.lightOff();
           });
        },),
      ),
    );
  }
}
