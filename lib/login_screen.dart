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
      appBar: AppBar(
        title: const Text("ARMS on Mobile"),
        backgroundColor: Color.fromARGB(255, 8, 57, 141),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 80, right: 80, top: 40),
              padding: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                color: Colors.grey,
              ),
              alignment: Alignment.center,
              child: const TextField(
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
              margin: const EdgeInsets.only(left: 80, right: 80, top: 10),
              padding: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                color: Colors.grey,
              ),
              alignment: Alignment.center,
              child: const TextField(
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
                margin: const EdgeInsets.only(left: 40, right: 40, top: 10),
                padding: const EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    (new Color(0xFF01579B)),
                    (new Color(0xFF01579B))
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
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
