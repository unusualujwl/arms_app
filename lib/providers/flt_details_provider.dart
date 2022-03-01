import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:arms_app/data_models/flt_info_data_model.dart';

// ignore: camel_case_types
class flt_details_provider extends ChangeNotifier {
  // ignore: non_constant_identifier_names
  flt_info_data_model? get_flt_info_data_model;

  Future getData(context) async {
    var response = await DefaultAssetBundle.of(context)
        .loadString('assets/raw/flt_info.json');
    var mJson = json.decode(response);
    get_flt_info_data_model = flt_info_data_model.fromJson(mJson);
    notifyListeners();
  }
}
