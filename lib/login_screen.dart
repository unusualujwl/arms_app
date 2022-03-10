import 'dart:ui';

import 'package:arms_app/constants.dart';
import 'package:arms_app/homepage.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

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
        centerTitle: true,
        backgroundColor: AppColors.colorcement,
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
                padding: EdgeInsets.symmetric(vertical: 7),
                child: Text(
                  'Enter crew portal login credentials',
                  style: TextStyle(
                      color: AppColors.themeColor,
                      fontSize: 16,
                      wordSpacing: 5),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: Container(
                        height: 35,
                        width: 35,
                        child: Image.asset('assets/images/user.png'),
                      ),
                    ),
                    Container(
                      height: 35,
                      width: MediaQuery.of(context).size.width * 0.5,
                      // margin: const EdgeInsets.only(left: 80, right: 80, top: 30),
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        color: Colors.grey[300],
                      ),
                      alignment: Alignment.center,
                      child: const TextField(
                        textAlign: TextAlign.center,
                        cursorColor: Color(0xFF01579B),
                        decoration: InputDecoration(
                          // icon: Icon(
                          //   Icons.account_circle,
                          //   color: Color(0xFF01579B),
                          // ),
                           isDense: true, 
                      contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
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
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Container(
                      height: 35,
                      width: 35,
                      child: Image.asset('assets/images/lock.png'),
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
                        color: Colors.grey[300],
                      ),
                      alignment: Alignment.center,
                      child: const TextField(
                        cursorColor: Color(0xFF01579B),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          // icon: Icon(
                          //   Icons.account_circle,
                          //   color: Color(0xFF01579B),
                          // ),
                            isDense: true, 
                      contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
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
                onTap: () => {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const HomePage()))
                },
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
