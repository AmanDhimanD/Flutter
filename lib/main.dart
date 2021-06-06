// import 'dart:html';
import 'package:app/pages/home_page.dart';
import 'package:app/pages/utils/rotues.dart';
import 'package:flutter/material.dart';
import 'package:app/pages/login_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //--------------We use Homepage as or in Routes
      //---------------------------------------------
      // home: HomePage(),

      // themeMode: ThemeMode.light,
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
      // themeMode: ThemeMode.dark,
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),

      //Colors works with LIGHT and Brightness mode
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        //we can use Google Font With import
        // primaryTextTheme: GoogleFonts.),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),

      /* ---
      For Remove the DEBEG banner from phone
      ---------- */
      debugShowCheckedModeBanner: false,

      //set Fix home page as first page
//__________________________________
      // initialRoute: "/home",
      routes: {
        "/": (context) =>
            LoginPage(), //this is object of class, new keyword can use
            //1.Method
        // "/home": (context) => HomePage(),
        // "/login": (context) => LoginPage()
        //2.Method 
        MyRoutes.homeRoutes:(context)=>HomePage(),
        MyRoutes.loginRoutes:(context)=>LoginPage()
      },
    );
  }
}
