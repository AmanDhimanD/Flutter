import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      //pic shadow change
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/1.png",
            fit: BoxFit.cover,
          ),

          Text(
            "Welcome, Text Me !!!!!",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          //For padding SizedBox
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter username",
                    labelText: "Username",
                  ),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton( 
                  child: Text("Login"),
                  style: TextButton.styleFrom(),
                  onPressed: (){
                    print("Hi Rayne");
                  },
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
