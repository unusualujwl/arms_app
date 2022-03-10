import 'dart:ui';

import 'package:arms_app/constants.dart';
import 'package:arms_app/crew_roster/crew_roaster.dart';
import 'package:arms_app/leaves/leaves.dart';
import 'package:arms_app/providers/crew_roster_provider.dart';
import 'package:arms_app/tqd_page.dart';
import 'package:flutter/material.dart';
import 'package:arms_app/crew_roster/crew_roaster.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> strArray = [
    'Staff Roaster',
    'TQD',
    'DTL/Recency',
    'Leave',
    'Swap Board',
    'Notifications',
    'Manning Dashboard',
    'Settings',
    'About Us',
    'Report Issue/ Feedback',
    'Terms & conditions',
  ];
  List<String> imgArray = [
    AppImages.image1,
    AppImages.image2,
    AppImages.image3,
    AppImages.image4,
    AppImages.image5,
    AppImages.image6,
    AppImages.image7,
    AppImages.image8,
    AppImages.image9,
    AppImages.image10,
    AppImages.image11,
    // AppImages.image12,
    // AppImages.image13,
    // AppImages.image14,
    // AppImages.image15,
    // AppImages.image16,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/logo.png',
          ),
        ),
        // leading: IconButton(
        //   onPressed: () {},
        //   // icon: Icon(Icons.home),
        // ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.sync),
          ),
        ],
        title: const Text(
          'ARMS on Mobile',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: AppColors.colorcement,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: strArray.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              print(strArray[index]);
                              if (index == 0) {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const Crew_roaster()));
                              } else if (index == 1) {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const tqd_page()));
                              }else if (index == 3) {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>  const Leaves()));
                              }
                            },
                            child: Container(
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                      child: Image.asset(
                                        imgArray[index],
                                      ),
                                      height: 20,
                                      width: 20),
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 10),
                                      child: Text(
                                        strArray[index],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: List.generate(
                          MediaQuery.of(context).size.width  ~/ 2,
                            (index) => Expanded(
                                  child: Container(
                                    color: index % 2 == 0
                                        ? Colors.transparent
                                        : Colors.grey,
                                    height: 2,
                                  ),
                                )),
                      ),
                    ],
                  );
                }),
          ),
          Container(
            color: AppColors.colorcement,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Powered by ARMS',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Last Sync:14-jun-2021',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            height: 30,
          )
        ],
      ),
    );
  }
}
