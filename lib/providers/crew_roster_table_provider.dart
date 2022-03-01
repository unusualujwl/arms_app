import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:arms_app/data_models/group_list.dart';
import 'package:arms_app/data_models/crew_roster_table_model.dart';

// ignore: camel_case_types
class crew_roster_table_provider extends ChangeNotifier {
  // ignore: non_constant_identifier_names
  crew_table? crew_table_p;

  Future getData(context) async {
    // You can call an API to get data, once we've the data from API or any other flow... Following part would always be the same.
    // We forgot about one more important part .. lets do that first

    // We need access to BuildContext for loading this string and it's not recommended to store this context in any variable here
    // in change notifier..
    var response = await DefaultAssetBundle.of(context)
        .loadString('assets/raw/crew_roster_table_data.json');
    // now we have response as String from local json or and API request...
    var mJson = json.decode(response);
    // now we have a json...
    crew_table_p = crew_table.fromJson(mJson);
    notifyListeners(); // for callback to view
  }
}


// // ignore_for_file: camel_case_types
// import 'package:flutter/widgets.dart';
// import 'package:provider/provider.dart';
// import 'dart:convert';

// import 'package:flutter/foundation.dart';

// class crew_roaster_provider with ChangeNotifier {
//   // ignore: non_constant_identifier_names
//   // late crew_roaster_group_list get_crew_roaster_group_list;
//   Map<String, dynamic> _map =
//       {}; //here an object for that json file has been initialised
//   bool _error = false;
//   String _errormessage = '';
// // above lieted things will be private to this class so bellow getters are being created so they can be accessed from any where
//   Map<String, dynamic> get get_the_map => _map;
//   bool get get_the_error => _error;
//   String get get_the_error_message => _errormessage;

//   // ignore: non_constant_identifier_names
//   Future fire_get_groupd_data(context) async {
//     var response = await DefaultAssetBundle.of(context)
//         .loadString('assets/raw/crew_roaster_group_list.json');
//     _map = json.decode(
//         response); // initielised object has been assigned values i.e response of the get request

//     // get_crew_roaster_group_list =
//     //     crew_roaster_group_list.fromJson(recievedJson);
//     notifyListeners();
//   }

//   //////////generating getter for above map:
//   ///

// }
