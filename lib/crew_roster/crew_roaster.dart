import 'package:arms_app/crew_roster/crew_roster_table_part.dart';
import 'package:arms_app/crew_roster/list_view_groped.dart';
import 'package:arms_app/crew_roster/progress_bar_part.dart';
import 'package:flutter/material.dart';
import 'package:arms_app/constants.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:provider/provider.dart';
import 'package:arms_app/providers/crew_roster_provider.dart';
import 'package:arms_app/providers/live_crew_roster_provider.dart';

// import 'package:arms_app/crew_roster/grouped_list_part.dart';

//https://stackoverflow.com/questions/66740735/how-to-create-table-in-flutter-with-dynamic-content
// ignore: camel_case_types
class Crew_roaster extends StatefulWidget {
  const Crew_roaster({Key? key}) : super(key: key);

  @override
  _Crew_roasterState createState() => _Crew_roasterState();
}

// ignore: camel_case_types
class _Crew_roasterState extends State<Crew_roaster> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.themeColor,
          elevation: 0.0,
          titleSpacing: 10.0,
          centerTitle: true,
          title: const Text("Crew Roster"),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),

        ////////////////////PROVIDER///////////////////////////
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  const Flexible(flex: 2, child: progree_bar_part()
                      // Container(
                      //   color: Colors.red,
                      // ),
                      ),
                  const Flexible(flex: 3, child: crew_roster_table_part()
                      //  Container(
                      //   color: Colors.yellow,
                      // ),
                      ),
                  Flexible(
                    flex: 5,
                    child: Stack(
                      children: [
                        list_view_groped(),
                        Padding(
                          padding: const EdgeInsets.only(left: 9.5, right: 9.5),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.035,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      const Text(
                                        "  ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 10),
                                      ),
                                      // const Padding(
                                      //   padding: EdgeInsets.only(bottom: 10.0),
                                      //   child: Text(
                                      //     " ",
                                      //     style: TextStyle(
                                      //         fontWeight: FontWeight.bold,
                                      //         color: Colors.white,
                                      //         fontSize: 8),
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                  Row(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      const Text(
                                        "  ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            color: AppColors.themeColor.withOpacity(0.7),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Expanded(
                  //   child: Container(
                  //     color: Colors.yellow,
                  //   ),
                  // ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Text(
                                " Powerd by ARMS",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 10),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  "Ⓡ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 8),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Text(
                                " Last Sync 14-Jun-2021 18:00",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    color: AppColors.themeColor,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
