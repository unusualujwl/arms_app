// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:arms_app/constants.dart';
import 'package:flutter/material.dart';

class TqdPage extends StatefulWidget {
  const TqdPage({Key? key}) : super(key: key);

  @override
  _TqdPageState createState() => _TqdPageState();
}

class _TqdPageState extends State<TqdPage> {
  @override
  List<String> strArray = [
    'CREW RESOURSE MANAGEMENT',
    'DANGEROUS GOODS',
    'ATPL(Flying Licence)',
    'EMERGENCY EVACUATION',
    'EXPAT MEDICAL',
    'INSTUMENT CHECK',
    'JOINT CRM',
    'PROFICIENCY CHECK',
    'RECURRENT',
    'RHS QUALIFICATION',
    'RHS QUALIFICATION',
    'ROUTE CHECK',
    'ILS CAT-II',
    'ILS CAT-IIIB',
    'ILS CAT-IIIC'
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
            )),
        backgroundColor: AppColors.themeColor,
        title: Text(
          'TQD',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            child: ListView.builder(
                itemCount: strArray.length,
                itemBuilder: (BuildContext Context, int Index) {
                  return Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.start),
                      Container(
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                          child: Text(
                            strArray[Index],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Row(
                        children: List.generate(
                            150 ~/ 2,
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
            color: AppColors.themeColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Powerd by ARMS',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
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
          ),
        ],
      ),
    );
  }
}
