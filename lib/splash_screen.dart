import 'dart:async';

import 'package:arms_app/constants.dart';
import 'package:arms_app/logs/logs.dart';
import 'package:flutter/material.dart';
import 'client_id.dart';

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
    LogsGenrate().initmethod();
    Timer(const Duration(seconds: 3), () {
      print("this is first log");

      LogsGenrate.logger.d("Debug log");
      LogsGenrate.logger.i("Info log");
      LogsGenrate.logger.w("Warning log");
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (BuildContext context) => const ClientId()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: AppColors.themeColor,
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Container(
                child: Image.asset('assets/images/logo.png',
                    fit: BoxFit.fitHeight),
                color: AppColors.themeColor,
                height: MediaQuery.of(context).size.height * 0.2,
                // width: MediaQuery.of(context).size.width * 0.7,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
