import 'package:flutter/material.dart';
import 'package:arms_app/providers/flt_details_provider.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';

class flt_mid_part extends StatefulWidget {
  const flt_mid_part({Key? key}) : super(key: key);

  @override
  _crew_roster_table_partState createState() => _crew_roster_table_partState();
}

class _crew_roster_table_partState extends State<flt_mid_part> {
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

          return ListView.builder(
            itemCount: provider.get_flt_info_data_model!.airCrewData!.length,
            itemBuilder: (context, i) {
              return Container(
                decoration: const BoxDecoration(
                    border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.white),
                )),
                padding: const EdgeInsets.all(8),
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
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Row(
                            children: [
                              // Icon(Icons.flight_takeoff,
                              //     color: AppColors.themeColor),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(provider.get_flt_info_data_model!
                                    .airCrewData![i].memberPosition!),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(provider.get_flt_info_data_model!
                                    .airCrewData![i].memberName!),
                              )
                            ],
                          ),
                        ),
                        // Row()
                      ],
                    ),
                    /////////////////////////////////////////////////
                    Row(
                      // row covering two elements of ending edge
                      children: [
                        Padding(
                          // to provide gap between last two columns
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            //ending edge //second element calender icon + arrow
                            children: [
                              Row(
                                //upper_row ending edge
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () => ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                      content: Text("test"),
                                    )

                                            //  Navigator.of(context).push(MaterialPageRoute(
                                            //   builder: (context) => group_list_description_page())
                                            ),
                                    child: const Icon(
                                      Icons.close,
                                      color: Colors.red,
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                //upper_row ending edge
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.0, right: 10.0),
                                    child:
                                        Icon(Icons.call, color: Colors.green),
                                  )
                                ],
                              ),
                              Row(
                                //upper_row ending edge
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Icon(Icons.message_rounded,
                                      color: Colors.green)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  //
}
