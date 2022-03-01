// import 'dart:convert';

// import 'package:arms_app/data_models/tqd_data_model.dart';
import 'package:arms_app/data_models/tqd_data_model_live.dart';
// import 'package:flutter/widgets.dart';
// import 'package:http/http.dart';
// // import 'package:arms_app/data_models/tqd_data_model.dart';

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

// // ignore: camel_case_types
// ignore: camel_case_types
class tqd_data_provider_live extends ChangeNotifier {
  // ignore: non_constant_identifier_names
  tqd_data_model_live? tqd_data_live;

  Future getData(context) async {
    ////////////////////////////////////////////
    var url =
        'https://aot.arms.aero/ARMSAMSAOMService/AOMService.svc/GetDocValidityDetails';

    //Map data = {"UserName": "t2", "ClientId": "ARMS"};
    //encode Map to JSON
    //var body = json.encode(data);
    String body = json.encode({
      'UserName': 't2',
      // 'complex_foo' : {
      //     'name' : 'test'
      // }
    });

    var response = await http.post(Uri.parse(url), body: body);
    print(" hey12 ${response..statusCode}");
    print("hello ${response.body}");
    var mJson = json.decode(response.body);
    tqd_data_live = tqd_data_model_live.fromJson(mJson);
    notifyListeners();
    //return response;
  }
}
