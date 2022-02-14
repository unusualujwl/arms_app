import 'dart:ui';

import 'package:arms_app/splash_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return initwidget();
  }

  Widget initwidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(90)),
                  color: Color(0xffF5591F),
                  gradient: LinearGradient(
                    colors: [(new Color(0xFF01579B)), (new Color(0xFF01579B))],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      // child: Image.asset(),
                      height: 90,
                      width: 90,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20, top: 20),
                      child: Text(
                        "login",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 40),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey,
              ),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: Color(0xFF01579B),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.account_circle,
                    color: Color(0xFF01579B),
                  ),
                  hintText: "Enter Client ID",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey,
              ),
              alignment: Alignment.center,
              child: TextField(
                obscureText: true,
                cursorColor: Color(0xFF01579B),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.lock,
                    color: Color(0xFF01579B),
                  ),
                  hintText: "Password",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            GestureDetector(
              onTap: () => {},
              child: Container(
                margin: EdgeInsets.only(left: 40, right: 40, top: 10),
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    (new Color(0xFF01579B)),
                    (new Color(0xFF01579B))
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
