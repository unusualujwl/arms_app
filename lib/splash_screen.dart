import 'dart:async';
import 'package:arms_app/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Color(0xFF01579B),
                gradient: LinearGradient(
                  colors: [(Color(0xFF01579B)), (Color(0xFF01579B))],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
          ),
          Center(
            child: Container(),
          )
        ],
      ),
    );
  }
}
