import 'package:arms_app/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'constants.dart';
import 'login_screen.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  TextEditingController textEditingController = TextEditingController();
  final _pinPutController = TextEditingController();
  final _pinPutFocusNode = FocusNode();

  bool hasError = false;
  String currentText = "";

  @override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorcement, // AppColors.themeColor
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text('Verification',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Text('Please type the verification code sent',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  )),
            ),
            pincodeFields(),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                '( OTP expires in 5 minutes )',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: const Text(
                'Resend',
                style: TextStyle(
                  color: AppColors.themeColor,
                  fontSize: 15,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget pincodeFields() {
    const BoxDecoration pinPutDecoration = BoxDecoration(
      color: Colors.white,
      // borderRadius: BorderRadius.circular(5.0),
    );

    return Container(
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(3.0),
      //   border: Border.all(color: Colors.red),
      // ),
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.25),
      child: PinPut(
        // eachFieldMargin: EdgeInsets.zero,
        withCursor: true,
        fieldsCount: 4,
        // preFilledWidget: const FlutterLogo(),
        textStyle: const TextStyle(fontSize: 20.0, color: Colors.black),
        eachFieldWidth: 40.0,
        eachFieldHeight: 40.0,
        onSubmit: (String pin) {
          print('pin verfication : $pin');
        },
        focusNode: _pinPutFocusNode,
        controller: _pinPutController,
        submittedFieldDecoration: pinPutDecoration,
        selectedFieldDecoration: pinPutDecoration.copyWith(color: Colors.white),
        followingFieldDecoration: pinPutDecoration,
      ),
    );
    // Align(
    //   alignment: Alignment.bottomCenter,
    //   child: Text('Powered by ARMS'),
    // ); // ignore: prefer_const_constructors
  }

  pinPut(
      {EdgeInsets? eachFieldMargin,
      bool? withCursor,
      int? fieldsCount,
      TextStyle? textStyle,
      double? eachFieldWidth,
      double? eachFieldHeight,
      FocusNode? focusNode,
      TextEditingController? controller,
      BoxDecoration? submittedFieldDecoration,
      BoxDecoration? selectedFieldDecoration,
      BoxDecoration? followingFieldDecoration}) {}
}
