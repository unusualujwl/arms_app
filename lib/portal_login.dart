import 'package:arms_app/login_screen.dart';
import 'package:arms_app/verification_page.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class PortalLogin extends StatefulWidget {
  const PortalLogin({Key? key}) : super(key: key);

  @override
  _PortalLoginState createState() => _PortalLoginState();
}

class _PortalLoginState extends State<PortalLogin> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Image.asset(
                'assets/images/logo.png',
                height: 100,
                width: 100,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Enter Login ID',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              //
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.white,
                width: 50,
                height: 35,
                child: const Center(
                  child: Text(
                    'CAAST',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(
                    //   color: Colors.red,
                    // ),
                    borderRadius: BorderRadius.all(Radius.circular(0))),
                width: MediaQuery.of(context).size.width * 0.7,
                height: 35,
                child: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        isDense: true, 
                      contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        hintText: ' Login ID',
                        suffixIcon: IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Verification()));
                            },
                            icon: const Icon(Icons.arrow_circle_right,
                                color: Colors.blue))),
                    validator: (text) {
                      // if (!(text.length > 5) && text.isNotEmpty) {
                      //   return "Enter valid name of more then 5 characters!";
                      // }
                      return null;
                    },
                  ),
                ),
              ),
            ],
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(vertical: 10),
          //   child: Container(
          //     width: MediaQuery.of(context).size.width * 0.7,
          //     child: const Text(
          //       'Client Id Should be 2 or 3 digit IATA code',
          //       style: TextStyle(color: Colors.white),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
