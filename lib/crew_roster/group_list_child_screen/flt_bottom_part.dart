import 'package:flutter/material.dart';
import 'package:arms_app/providers/flt_details_provider.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';

class flt_bottom_part extends StatefulWidget {
  const flt_bottom_part({Key? key}) : super(key: key);

  @override
  _flt_bottom_partState createState() => _flt_bottom_partState();
}

class _flt_bottom_partState extends State<flt_bottom_part> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<flt_details_provider>(
      create: (context) => flt_details_provider(),
      child: Consumer<flt_details_provider>(
        builder: (context, provider, child) {
          if (provider.get_flt_info_data_model == null) {
            provider.getData(context);
            return const Center(child: CircularProgressIndicator());
          }

          return ListView(
              //itemCount: provider.get_flt_info_data_model!.airCrewData!.length,
              // itemBuilder: (context, i) {
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        border: Border(
                      bottom: BorderSide(width: 1.0, color: Colors.white),
                    )),
                    padding: const EdgeInsets.only(top: 2, bottom: 2),
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween, //master_row
                      children: [
                        Row(
                          //starting edge
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 1),
                                    child: Text(
                                        '${provider.get_flt_info_data_model!.remarks!.hotac!}'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                ////////////////////////////////////////////////////////////////////////////////////////////////////
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        border: Border(
                      bottom: BorderSide(width: 1.0, color: Colors.white),
                    )),
                    padding: const EdgeInsets.only(top: 0, bottom: 0),
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween, //master_row
                      children: [
                        Row(
                          //starting edge
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text(
                                    '${provider.get_flt_info_data_model!.remarks!.refNo}'),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                ////////////////////////////////////////////////////////////////////////////////////////////////////
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        border: Border(
                      bottom: BorderSide(width: 1.0, color: Colors.white),
                    )),
                    padding: const EdgeInsets.only(top: 2, bottom: 2),
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween, //master_row
                      children: [
                        Row(
                          //starting edge
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: Row(
                                children: [
                                  Text(
                                      '${provider.get_flt_info_data_model!.remarks!.status}'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                ////////////////////////////////////////////////////////////////////////////////////////////////////
                Container(
                  decoration: const BoxDecoration(
                      border: Border(
                    bottom: BorderSide(width: 1.0, color: Colors.white),
                  )),
                  // padding: const EdgeInsets.only(top: 2, bottom: 2),
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween, //master_row
                    children: [
                      Row(
                        //starting edge
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                    '${provider.get_flt_info_data_model!.remarks!.from}'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                ////////////////////////////////////////////////////////////////////////////////////////////////////
                Container(
                  decoration: const BoxDecoration(
                      border: Border(
                    bottom: BorderSide(width: 1.0, color: Colors.white),
                  )),
                  // padding: const EdgeInsets.only(top: 2, bottom: 2),
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween, //master_row
                    children: [
                      Row(
                        //starting edge
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 2),
                                child: Text(
                                    '${provider.get_flt_info_data_model!.remarks!.to}'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )

                ////////////////////////////////////////////////////////////////////////////////////////////////////
              ]
              //},
              );
        },
      ),
    );
  }

  //
}
