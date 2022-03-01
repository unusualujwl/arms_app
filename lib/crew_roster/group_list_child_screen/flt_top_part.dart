import 'package:flutter/material.dart';
import 'package:arms_app/providers/flt_details_provider.dart';
import 'package:provider/provider.dart';
import 'package:arms_app/constants.dart';

DateTime now = new DateTime.now();
DateTime year = new DateTime(now.year);

class flt_top_part extends StatefulWidget {
  const flt_top_part({Key? key}) : super(key: key);

  @override
  _flt_top_partState createState() => _flt_top_partState();
}

class _flt_top_partState extends State<flt_top_part> {
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

          return Column(
            children: [
              Row(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          '${provider.get_flt_info_data_model!.fltInfoData!.date!.toString()} ${now.year}'
                              .toString(),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      color: AppColors.colorLight),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 4.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Row(
                      children: [
                        Image.asset(AppImages.image17),
                        // const Icon(
                        //   Icons.flight_takeoff,
                        //   color: AppColors.themeColor,
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3),
                          child: Text(
                              '${provider.get_flt_info_data_model!.fltInfoData!.flightId!.toString()}'
                              // provider.get_flt_info_data_model!.fltInfoData!.flightId!.toString()
                              ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () => ScaffoldMessenger.of(context)
                          .showSnackBar(const SnackBar(
                        content: Text("clicked"),
                      )),
                      child: const Icon(Icons.calendar_month,
                          color: AppColors.themeColor),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 4, bottom: 4),
                child: Row(
                  children: [
                    Text(
                      "Reporting Time:  ${provider.get_flt_info_data_model!.fltInfoData!.date!.toString()} ${provider.get_flt_info_data_model!.fltInfoData!.reportingTime}",
                      textScaleFactor: 0.9,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                ),
                child: Row(
                  children: [
                    Text(
                      "A/C Reg: ${provider.get_flt_info_data_model!.fltInfoData!.aCRedg}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  // child:

                  // color: Colors.purple.shade200,

                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      // this contains two colums divided by on divider widget
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Column(
                            //first column
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 1.0, right: 1.0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      child: const Padding(
                                        padding:
                                            EdgeInsets.only(top: 5, bottom: 5),
                                        child: Center(
                                          child: Text(
                                            "Departure",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      color: AppColors.themeColor,
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "${provider.get_flt_info_data_model!.fltInfoData!.departureStation}",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "${provider.get_flt_info_data_model!.fltInfoData!.departureStationCode}",
                                    style: TextStyle(color: Colors.blue[300]),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Terminal : ${provider.get_flt_info_data_model!.fltInfoData!.departureTerminal}",
                                    style: TextStyle(color: Colors.blue[300]),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Bay No :${provider.get_flt_info_data_model!.fltInfoData!.departureBayNumber}",
                                    style: TextStyle(color: Colors.blue[300]),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "(STD) ${provider.get_flt_info_data_model!.fltInfoData!.date} ${provider.get_flt_info_data_model!.fltInfoData!.departureTime}",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    " ${provider.get_flt_info_data_model!.fltInfoData!.date} "
                                    " ${provider.get_flt_info_data_model!.fltInfoData!.departureTimeWithTimeZone} ",
                                    style: const TextStyle(
                                        fontSize: 12, color: Colors.blueGrey),
                                  )
                                ],
                              ),
                              Column(
                                // column for buttons
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              minimumSize: Size.zero,
                                              padding: EdgeInsets.zero,
                                              primary: AppColors.themeColor),
                                          child: const Text(
                                            'NOTAM',
                                            textScaleFactor: 0.8,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              minimumSize: Size.zero,
                                              padding: EdgeInsets.zero,
                                              primary: AppColors.themeColor),
                                          child: const Text(
                                            'WX',
                                            textScaleFactor: 0.8,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              minimumSize: Size.zero,
                                              padding: EdgeInsets.zero,
                                              primary: AppColors.themeColor),
                                          child: const Text(
                                            'MAP',
                                            textScaleFactor: 0.8,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const VerticalDivider(
                          //height: 20,
                          thickness: 1,
                          indent: 40,
                          endIndent: 40,
                          color: Colors.lightBlue,
                        ),
                        Expanded(
                          child: Column(
                            //second(right) column
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 1.0, right: 1.0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      child: const Padding(
                                        padding:
                                            EdgeInsets.only(top: 5, bottom: 5),
                                        child: Center(
                                          child: Text(
                                            "Arrival",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      color: AppColors.themeColor,
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    provider.get_flt_info_data_model!
                                        .fltInfoData!.arrivalStation!,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    provider.get_flt_info_data_model!
                                        .fltInfoData!.arrivalStationCode!,
                                    style: TextStyle(color: Colors.blue[300]),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Terminal : ${provider.get_flt_info_data_model!.fltInfoData!.arrivalStationCode} ",
                                    style: TextStyle(color: Colors.blue[300]),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Bay No :  ${provider.get_flt_info_data_model!.fltInfoData!.arrivalBayNumber} ",
                                    style: TextStyle(color: Colors.blue[300]),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "(STD) ${provider.get_flt_info_data_model!.fltInfoData!.date} ${provider.get_flt_info_data_model!.fltInfoData!.arrivalTime}",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "${provider.get_flt_info_data_model!.fltInfoData!.date}  ${provider.get_flt_info_data_model!.fltInfoData!.departureTimeWithTimeZone} ",
                                    style: const TextStyle(
                                        fontSize: 12, color: Colors.blueGrey),
                                  )
                                ],
                              ),
                              Column(
                                // column for buttons
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              minimumSize: Size.zero,
                                              padding: EdgeInsets.zero,
                                              primary: AppColors.themeColor),
                                          child: const Text(
                                            'NOTAM',
                                            textScaleFactor: 0.8,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              minimumSize: Size.zero,
                                              padding: EdgeInsets.zero,
                                              primary: AppColors.themeColor),
                                          child: const Text(
                                            'WX',
                                            textScaleFactor: 0.8,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              minimumSize: Size.zero,
                                              padding: EdgeInsets.zero,
                                              primary: AppColors.themeColor),
                                          child: const Text(
                                            'MAP',
                                            textScaleFactor: 0.8,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  ////////
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.04,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(2)),
                    color: AppColors.themeColor,
                  ),
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: Center(
                      child: Text(
                        "Block Time :${provider.get_flt_info_data_model!.fltInfoData!.blockTime} ",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  // color: AppColors.themeColor,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
