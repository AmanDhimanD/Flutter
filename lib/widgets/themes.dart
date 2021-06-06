import 'dart:js';

import 'package:flutter/material.dart';

class MyThemes {
  static ThemeData LightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: Theme.of(context).textTheme,
      ));

  static darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );
}
