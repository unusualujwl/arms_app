import 'package:flutter/material.dart';

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
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => PortalLogin()));
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
