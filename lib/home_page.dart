import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  // double days = 30;
  String name = "By Rayne";
  // bool isMale = true;
  // num temp = 30.5;
  //-----NUM data type contian both double and int

  // var day = "Monday";
  // var day = 5;

  // const pi = 3.14;
  //in const we cann't change the value of pi
  // final pi = 3.14;
  //in final we change the value of pi ( ADD ,MULTIPLE etc.)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rayne Coder"),
      ),
      body: Center(
        child: Container(
          // child: Text(" App in $days $name."),
          child: Text(" App in $days " + name),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
