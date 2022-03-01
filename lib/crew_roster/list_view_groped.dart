import 'package:flutter/material.dart';
import 'package:arms_app/constants.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:provider/provider.dart';
// import 'package:arms_app/providers/live_crew_roaster_provider.dart';
import 'package:arms_app/providers/live_crew_roster_provider.dart';
import 'package:arms_app/crew_roster/group_list_child_screen/group_list_description_page.dart';

class list_view_groped extends StatefulWidget {
  const list_view_groped({Key? key}) : super(key: key);

  @override
  _list_view_gropedState createState() => _list_view_gropedState();
}

class _list_view_gropedState extends State<list_view_groped> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ChangeNotifierProvider<live_crew_roster_provider>(
            create: (context) => live_crew_roster_provider(),
            child: Consumer<live_crew_roster_provider>(
                builder: (context, provider, child) {
              if (provider.crew_roster_live_data == null) {
                provider.getData(context);
                return const Center(child: CircularProgressIndicator());
              }
              return GroupedListView<dynamic, String>(
                elements: provider.crew_roster_live_data!
                    .getCrewRosterReportResult!.lstCrewRoster!,
                //['list_data'],

                groupBy: (element) => element.flightDate,

                //////////////////////////GROUP SEPAEARATOR////////////////////////////////////////////////
                groupSeparatorBuilder: (String groupByValue) => Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      color: Colors.blue[50],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                              child: Row(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 8, right: 8),
                                child: Text(
                                    groupByValue, //this will be taking date
                                    textAlign: TextAlign.start,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                              ),
                              // Container(
                              //   // that circuler dot
                              //   width: 8,
                              //   height: 8,
                              //   decoration: const BoxDecoration(
                              //       shape: BoxShape.circle,
                              //       color: Colors.blueGrey),
                              // ),
                              // const Expanded(
                              //     child: Divider(
                              //   color: Colors.blueGrey,
                              // ))
                            ],
                          ))
                        ],
                      ),
                    )),
                ///////////////////////////////////////SINGLE ITEM OF THE LIST/////////////////////////////////////////////////////
                itemBuilder: (context, dynamic element) {
                  return GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => group_list_description_page())),

                    //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    //   content: Text(element.flightId),
                    // )
                    // ),
                    // onTap: ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Sending Message"))),
                    child: Card(
                      elevation: 8,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 0),
                      child: Column(
                        //column for dashed lines
                        children: [
                          Row(
                            //child 1 the main row
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween, //master_row
                            children: [
                              Row(
                                //starting edge
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, bottom: 10),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.flight_takeoff,
                                            color: AppColors.themeColor),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5),
                                          child: Text(element.flightNo),
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
                                  Column(
                                    //ending edge //first element
                                    children: [
                                      Row(
                                        //upper_row ending edge

                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 2, bottom: 2),
                                            child: Row(
                                              children: [
                                                Text(element.fromCity),
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 8.0),
                                                  child: Text('-'),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0),
                                                  child: Text(element.toCity),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        //ending edge lower row
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 2, bottom: 2),
                                            child: Row(
                                              children: [
                                                Text(element.flightTime),
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 8.0),
                                                  child: Text('-'),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0),
                                                  child:
                                                      Text(element.arrivalTime),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    // to provide gap between last two columns
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      //ending edge //second element calender icon + arrow
                                      children: [
                                        Row(
                                          //upper_row ending edge
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              onTap: () => ScaffoldMessenger.of(
                                                      context)
                                                  .showSnackBar(SnackBar(
                                                content: Text(element.flightId),
                                              )

                                                      //  Navigator.of(context).push(MaterialPageRoute(
                                                      //   builder: (context) => group_list_description_page())
                                                      ),
                                              child: Icon(
                                                Icons.calendar_month_outlined,
                                                color: AppColors.themeColor,
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          //upper_row ending edge
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: const [
                                            Icon(Icons.arrow_forward_ios,
                                                color: AppColors.themeColor)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: List.generate(
                                150 ~/ 2,
                                (index) => Expanded(
                                      child: Container(
                                        color: index % 2 == 0
                                            ? Colors.transparent
                                            : Colors.lightBlue,
                                        height: 1,
                                      ),
                                    )),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                ////////////////////////////////////////////////////////////////////////////////////////////

                itemComparator: (item1, item2) =>
                    item1.flightDate.compareTo(item2.flightDate), // optional
                useStickyGroupSeparators: true, // optional
                floatingHeader: false, // optional
                order: GroupedListOrder.ASC, // optional
              );
            })));
  }
}
