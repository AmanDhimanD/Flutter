

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text("Login Page",
        style: TextStyle(
          // background: 
          fontSize: 20,
          color: Colors.red,
          fontWeight: FontWeight.bold,
          ),
          // textAlign: Center,
          textScaleFactor: 3.0,
        ),
      ),
    );
  }
}