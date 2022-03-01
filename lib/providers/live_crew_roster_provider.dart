// import 'dart:convert';

// import 'package:arms_app/data_models/tqd_data_model.dart';
import 'package:arms_app/data_models/live_crew_roster_data_model.dart';
import 'package:arms_app/data_models/tqd_data_model_live.dart';

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

// // ignore: camel_case_types
// ignore: camel_case_types
class live_crew_roster_provider extends ChangeNotifier {
  // ignore: non_constant_identifier_names
  crew_roster_live? crew_roster_live_data;

  Future getData(context) async {
    ////////////////////////////////////////////
    var url =
        'https://aot.arms.aero/ARMSAMSAOMService/AOMService.svc/GetCrewRosterReport';
    String body = json.encode({'UserName': 't2', 'ClientId': 'ARMS'});

    var response = await http.post(Uri.parse(url), body: body);
    var mJson = json.decode(response.body);
    crew_roster_live_data = crew_roster_live.fromJson(mJson);
    notifyListeners();
    //return response;
  }
}
