import 'package:flutter/material.dart';

import '../../constants.dart';
import 'package:arms_app/crew_roster/group_list_child_screen/flt_top_part.dart';
import 'package:arms_app/crew_roster/group_list_child_screen/flt_mid_part.dart';
import 'package:arms_app/crew_roster/group_list_child_screen/flt_bottom_part.dart';

class group_list_description_page extends StatefulWidget {
  const group_list_description_page({Key? key}) : super(key: key);

  @override
  _group_list_description_pageState createState() =>
      _group_list_description_pageState();
}

// ignore: camel_case_types
class _group_list_description_pageState
    extends State<group_list_description_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.themeColor,
        elevation: 0.0,
        titleSpacing: 10.0,
        centerTitle: true,
        title: const Text("FLT Info"),
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
                const Flexible(
                  flex: 6,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: flt_top_part(),
                  ),
                  // Container(
                  //   color: Colors.red,
                  // ),
                ),
                Row(children: <Widget>[
                  //Expanded(child: Divider()),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: const Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Text(
                        " AIR CREW",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    color: AppColors.colorLight,
                  ),
                  // Expanded(child: Divider()),
                ]),
                const Flexible(
                  flex: 2,
                  child: flt_mid_part(),
                  // Container(
                  //   color: Colors.white,
                  // ),
                ),
                Row(children: <Widget>[
                  //Expanded(child: Divider()),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: const Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Text(
                        " REMARKS",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    color: AppColors.colorLight,
                  ),
                  // Expanded(child: Divider()),
                ]),

                Flexible(
                  flex: 2,
                  child: Stack(children: [
                    flt_bottom_part(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.19,
                            height: MediaQuery.of(context).size.height * 0.04,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size.zero,
                                  padding: EdgeInsets.zero,
                                  primary: AppColors.themeColor),
                              child: const Text(
                                'More Info',
                                textScaleFactor: 0.8,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),

                  // Container(
                  //   color: Colors.white,
                  // ),
                ),
                // Expanded(
                //   child: Container(
                //     color: Colors.yellow,
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
