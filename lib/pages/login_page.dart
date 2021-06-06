// import 'dart:html';

import 'package:app/pages/utils/rotues.dart';
import 'package:flutter/material.dart';
// import 'package:validate/validate.dart';

/* _____________________________________
this is converted to state less widget to StateFull widget BY CTRL + . 
_____________________________ */

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    // if (_formKey.currentState.validate())
    setState(() {
      changeButton = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoutes);
    setState(() {
      changeButton = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      //pic shadow change
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/1.png",
                fit: BoxFit.cover,
                //to check for scrll and it help with small phones
                // height: 500,
              ),

              Text(
                "Welcome, $name \nText Me !!!!!",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //For padding SizedBox
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter username",
                        labelText: "Username",
                      ),
                      // validator: (value) {
                      //   if (value.isEmpty) {
                      //     return "Username cann't be Empty";
                      //   }
                      //   return null;
                      // },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      // validator :(value)
                      // {
                      //   if(value.isEmpty)
                      //   {
                      //     return "Password cann't be Empty";
                      //   }
                      //   return null;
                      // },
                    ),
                    //For the LOgin button
                    SizedBox(
                      height: 30.0,
                    ),

                    Material(
                      color: Colors.deepPurpleAccent,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 0),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changeButton ? 50 : 150,
                          //condition experssion
                          height: 50,
                          // color: Colors.red,
                          alignment: Alignment.center,
                          child: changeButton
                              ? Icon(Icons.done, color: Colors.white)
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23),
                                ),
                          //-------------//
                          //for Hover effect Wrap the INKWELL widgets with material widgets and give some property on it
                          //----------------//
                          // decoration: BoxDecoration(
                          //   color: Colors.deepPurple,
                          //   shape:
                          //       changeButton ? BoxShape.circle : BoxShape.rectangle,
                          //   //  BorderRadius.circular(30)),
                          // ),
                        ),
                        // ElevatedButton(
                        //   child: Text("Login"),
                        //   style: TextButton.styleFrom(minimumSize: Size(250, 40)),
                        //   onPressed: () {
                        //     // print("Hi Rayne");

                        //     //import by ctrl+ dot(.)
                        //     Navigator.pushNamed(context, MyRoutes.homeRoutes);
                        //   },
                        // ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
