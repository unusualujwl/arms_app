import 'dart:ui';

import 'package:arms_app/constants.dart';
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
        title: const Center(child: Text("ARMS on Mobile")),
        backgroundColor: const Color(0xFF204F84),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 40),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Container(
                  child: Image.asset('assets/images/logo.png'),
                  color: (const Color(0xFF204F84)),
                  height: MediaQuery.of(context).size.height * 0.12,
                  width: MediaQuery.of(context).size.width * 0.6,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Enter crew portal login credentials',
                  style: TextStyle(
                      color: AppColors.themeColor,
                      fontSize: 16,
                      wordSpacing: 5),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        height: 30,
                        width: 30,
                        child: Image.asset('assets/images/logo.png'),
                      ),
                    ),
                    Container(
                      height: 35,
                      width: MediaQuery.of(context).size.width * 0.5,
                      // margin: const EdgeInsets.only(left: 80, right: 80, top: 30),
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        color: Colors.grey,
                      ),
                      alignment: Alignment.center,
                      child: const TextField(
                        cursorColor: Color(0xFF01579B),
                        decoration: InputDecoration(
                          // icon: Icon(
                          //   Icons.account_circle,
                          //   color: Color(0xFF01579B),
                          // ),
                          hintText: "Enter Client ID",
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/images/logo.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      height: 35,
                      width: MediaQuery.of(context).size.width * 0.5,
                      // margin: const EdgeInsets.only(left: 80, right: 80, top: 30),
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        color: Colors.grey,
                      ),
                      alignment: Alignment.center,
                      child: const TextField(
                        cursorColor: Color(0xFF01579B),
                        decoration: InputDecoration(
                          // icon: Icon(
                          //   Icons.account_circle,
                          //   color: Color(0xFF01579B),
                          // ),
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.black54),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.themeColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
