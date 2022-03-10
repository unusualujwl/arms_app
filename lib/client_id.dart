import 'dart:convert';
import 'portal_login.dart';
import 'package:arms_app/constants.dart';
import 'package:arms_app/toast_service/toast_service.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'crew_roster/models/get_client_base_model.dart';
import 'constants.dart';
import 'package:http/http.dart' as http;

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
    // getclientIdApi();
    // Navigator.of(context).pushReplacement(
    //  MaterialPageRoute(builder: (BuildContext) => PortalLogin()));
  }

  getclientIdApi() async {
    return await fetchDetailAppointmentSchedules(
        clientID: clientIdController.text);
  }

  //Calling API for fetching Appointment schdules.
  Future<GetClientBaseUrlResponse> fetchDetailAppointmentSchedules(
      {@required String? clientID}) async {
    ToastService().showLoadingIndicator();
    Map<String, dynamic> requestBody = {"UserName": "t2", "ClientId": clientID};
    String url = ApiConstants.GET_CLIENT_BASE_URL;
    print('URL: $url');
    var response = await http.post(
      Uri.parse(url),
      body: jsonEncode(requestBody),
    );
    print('Status Code: ${response.statusCode}');
    print('Response: ${response.body}');
    BotToast.closeAllLoading();
    if (response.statusCode != 200) {
      throw new Exception('Error fetching staff');
    }

    final jsonResponse = json.decode(response.body);
    return GetClientBaseUrlResponse.fromJson(jsonResponse);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(backgroundColor: AppColors.themeColor, body: _body()),
    );
  }

  Widget _body() {
    return Column(
      children: [
        Expanded(
          child: Column(
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
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: const Text(
                        'ATC STAFF MANAGEMENT SYSTEM',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.lightBlue),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: const Text(
                      '(ASMS)',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.lightBlue, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 30,
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
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(
                    //   color: Colors.red,
                    // ),
                    borderRadius: BorderRadius.all(Radius.circular(0))),
                width: MediaQuery.of(context).size.width * 0.6,
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
                         isDense: true, 
                      contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        suffixIcon: IconButton(
                            onPressed: () async {
                              // await fetchDetailAppointmentSchedules(
                              //     clientID: clientIdController.text);
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const PortalLogin()));
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
        ),
        const Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              'Powered by ARMS',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
