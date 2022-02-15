import 'package:arms_app/constants.dart';
import 'package:flutter/material.dart';
import 'portal_login.dart';

class ClientId extends StatefulWidget {
  const ClientId({Key? key}) : super(key: key);

  @override
  _ClientIdState createState() => _ClientIdState();
}

class _ClientIdState extends State<ClientId> {
  TextEditingController clientIdController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Navigator.of(context).pushReplacement(
    //  MaterialPageRoute(builder: (BuildContext) => PortalLogin()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themeColor,
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
                  'Enter client ID',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              //
            ],
          ),
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                // border: Border.all(
                //   color: Colors.red,
                // ),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            width: MediaQuery.of(context).size.width * 0.5,
            height: 35,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: 'Client Id',
                    suffixIcon: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => PortalLogin()));
                        },
                        icon: const Icon(Icons.cancel, color: Colors.blue))),
                validator: (text) {
                  // if (!(text.length > 5) && text.isNotEmpty) {
                  //   return "Enter valid name of more then 5 characters!";
                  // }
                  return null;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.6,
              child: const Text(
                'Client Id Should be IATA/ICAO code',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
