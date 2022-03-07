import 'package:arms_app/data_models/tqd_data_model_live.dart';
import 'package:arms_app/providers/tqd_data_provider_live.dart';
import 'package:flutter/material.dart';
import 'package:arms_app/constants.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:provider/provider.dart';
import 'package:arms_app/providers/tqd_data_provider_live.dart';
import 'package:arms_app/crew_roster/group_list_child_screen/group_list_description_page.dart';
import 'package:auto_size_text/auto_size_text.dart';

class tqd_page extends StatefulWidget {
  const tqd_page({Key? key}) : super(key: key);

  @override
  _tqd_pageState createState() => _tqd_pageState();
}

class _tqd_pageState extends State<tqd_page> {
  bool expand = false;
  int? tapped;

  String print_color() {
    //
    String test_color = "207,0,21";
    var result = test_color.substring(0, 3); // 'artlang'
    //String ready_to_use_rgbo = "${test_color},1";
    print(result);
    return test_color;
  }

  @override
  Widget build(BuildContext context) {
    print_color();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.themeColor,
        elevation: 0.0,
        titleSpacing: 10.0,
        centerTitle: true,
        title: const Text("TQD"),
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
      body: ChangeNotifierProvider(
        create: (context) => tqd_data_provider_live(),
        child: Consumer<tqd_data_provider_live>(
            builder: (context, provider, child) {
          if (provider.tqd_data_live == null) {
            provider.getData(context);
            return const Center(child: const CircularProgressIndicator());
          }
          return
              // ignore: dead_code
              ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        // debugPrint('List item $index tapped $expand');
                        setState(() {
                          /// XOR operand returns when either or both conditions are true
                          /// `tapped == null` on initial app start, [tapped] is null
                          /// `index == tapped` initiate action only on tapped item
                          /// `!expand` should check previous expand action
                          expand = ((tapped == null) ||
                                  ((index == tapped) || !expand))
                              ? !expand
                              : expand;

                          /// This tracks which index was tapped
                          tapped = index;
                          // debugPrint('current expand state: $expand');
                        });
                      },

                      /// We set ExpandableListView to be a Widget
                      /// for Home StatefulWidget to be able to manage
                      /// ExpandableListView expand/retract actions
                      child: expandableListView(
                        index,
                        provider.tqd_data_live!
                            .getDocValidityDetailsResult![index].licenceName!,
                        provider
                                    .tqd_data_live!
                                    .getDocValidityDetailsResult![index]
                                    .validUpto!
                                    .length >
                                0
                            ? provider.tqd_data_live!
                                .getDocValidityDetailsResult![index].validUpto!
                                .substring(
                                    0,
                                    provider
                                            .tqd_data_live!
                                            .getDocValidityDetailsResult![index]
                                            .validUpto!
                                            .length -
                                        8)
                            : "NA",
                        provider
                                    .tqd_data_live!
                                    .getDocValidityDetailsResult![index]
                                    .validUpto!
                                    .length >
                                0
                            ? provider.tqd_data_live!
                                .getDocValidityDetailsResult![index].validUpto!
                                .substring(
                                    0,
                                    provider
                                            .tqd_data_live!
                                            .getDocValidityDetailsResult![index]
                                            .dateLastFlown!
                                            .length -
                                        8)
                            : "NA",
                        provider.tqd_data_live!
                            .getDocValidityDetailsResult![index].percentage!,
                        provider.tqd_data_live!
                            .getDocValidityDetailsResult![index].noofDays!,
                        provider.tqd_data_live!
                            .getDocValidityDetailsResult![index].color!,
                        provider.tqd_data_live!
                            .getDocValidityDetailsResult![index].percentage!,
                        provider.tqd_data_live!
                            .getDocValidityDetailsResult![index].noofDays!,
                        //print_color(),
                        index == tapped ? expand : false,
                      ),
                      // child: ExpandableListView(
                      //   title: "Title $index",
                      //   isExpanded: expand,
                      // ),
                    );
                  },
                  itemCount: provider
                      .tqd_data_live!.getDocValidityDetailsResult!.length);
        }),
      ),
    );
  }

  Widget expandableListView(
    /////
    int index,
    String title,
    String valid_from,
    String valid_upto,
    String validity,
    String days_remaining,
    String color_code_for_bar,
    String percentage_for_bar,
    String title_for_bar,
    //String color_code,
    bool isExpanded,
  ) {
    debugPrint('List item build $index $isExpanded');
    String str1;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0.0),
      child: Column(
        children: <Widget>[
          Column(
            children: [
              Row(
                children: List.generate(
                    150 ~/ 2,
                    (index) => Expanded(
                          child: Container(
                            color: index % 2 == 0
                                ? Colors.transparent
                                : Colors.lightBlue,
                            height: 0.5,
                          ),
                        )),
              ),
              Row(
                children: [
                  Container(
                    // master container with screen with
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blue.shade50,
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Row(
                      /// master row covering whole container with max width
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        // Text(
                        //   title,
                        //   style: const TextStyle(
                        //       fontWeight: FontWeight.bold, color: Colors.black),
                        // ),
                        ConstrainedBox(
                          constraints: const BoxConstraints(
                            minWidth: 150.0,
                            maxWidth: 150.0,
                            minHeight: 30.0,
                            maxHeight: 100.0,
                          ),
                          child: AutoSizeText(
                            title,
                            style: TextStyle(fontSize: 8.0),
                          ),
                        ),
                        // AutoSizeText(
                        //   title,
                        //   // style: TextStyle(fontSize: 2),
                        //   maxLines: 4,
                        // ),
                        // Container(
                        //   width: MediaQuery.of(context).size.width * 0.5,
                        //   child: FittedBox(
                        //       // fit: BoxFit.fitWidth,
                        //       child: Text(
                        //     title,
                        //     style: const TextStyle(
                        //         fontWeight: FontWeight.bold, color: Colors.red),
                        //   )),
                        // ),

                        Row(
                          //row for progress bar + left side drop down icon
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  ///progress bar
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  height: 20,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 10, right: 0),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                      child: LinearProgressIndicator(
                                        value: int.parse(percentage_for_bar)
                                                .abs()
                                                .toDouble() /
                                            100,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                color_code_for_bar == "207,0,21"
                                                    ? Color.fromRGBO(
                                                        207, 0, 21, 1)
                                                    : Color.fromRGBO(
                                                        107, 171, 77, 1)

                                                // Color(0xff00ff00)
                                                ),
                                        backgroundColor: Color(0xffD6D6D6),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 12.0, left: 50),
                                  child: Text(
                                    title_for_bar,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            IconButton(

                                //arrow icon
                                icon: Center(
                                  child: Icon(
                                    isExpanded
                                        ? Icons.keyboard_arrow_up
                                        : Icons.keyboard_arrow_down,
                                    color: AppColors.themeColor,
                                    size: 30.0,
                                  ),
                                ),
                                onPressed: () {
                                  // debugPrint('List item $index tapped $expand');
                                  setState(() {
                                    /// XOR operand returns when either or both conditions are true
                                    /// `tapped == null` on initial app start, [tapped] is null
                                    /// `index == tapped` initiate action only on tapped item
                                    /// `!expand` should check previous expand action
                                    expand = ((tapped == null) ||
                                            ((index == tapped) || !expand))
                                        ? !expand
                                        : expand;

                                    /// This tracks which index was tapped
                                    tapped = index;
                                    // debugPrint('current expand state: $expand');
                                  });
                                })
                          ],
                        ),
                      ],
                    ),
                  ),
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
                            height: 0.5,
                          ),
                        )),
              ),
            ],
          ),
          //https://stackoverflow.com/questions/56816739/how-to-customize-expandablelistview-to-show-only-one-item-expanded-at-the-mome
          ExpandableContainer(
              expanded: isExpanded,
              child: Container(
                width: MediaQuery.of(context).size.width,
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
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 5, bottom: 5),
                                    child: Center(
                                      child: Text(
                                        "Valid from :$valid_from",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  //color: AppColors.themeColor,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 1.0, right: 1.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 5, bottom: 5),
                                    child: Center(
                                      child: Text("Valid upto :$valid_upto",
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                  //   color: AppColors.themeColor,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const VerticalDivider(
                      //height: 20,
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
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
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 5, bottom: 5),
                                    child: Center(
                                        child: Text(
                                            "Validity :$percentage_for_bar",
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold))),
                                  ),
                                  // color: AppColors.themeColor,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 1.0, right: 1.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 5, bottom: 5),
                                    child: Center(
                                      child: Text(
                                          "Days remaining : $days_remaining",
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                  //color: AppColors.themeColor,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //  height: 97.5,
              ))
        ],
      ),
    );
  }
}

class ExpandableContainer extends StatelessWidget {
  final bool expanded;
  final double collapsedHeight;
  final double expandedHeight;
  final Widget child;
  final String test_text;

  ExpandableContainer(
      {required this.child,
      this.collapsedHeight = 0.0,
      this.expandedHeight = 100.0,
      this.expanded = true,
      this.test_text = "sdsd"});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      width: screenWidth,
      height: expanded ? expandedHeight : collapsedHeight,
      child: Container(
        child: child,
        // decoration: BoxDecoration(
        //     border: Border.all(width: 1.0, color: Colors.blueAccent)),
      ),
    );
  }
}


 // Color.fromRGBO(
                                    //     int.parse(
                                    //         color_code.substring(0, 3)),
                                    //     int.parse("0"),
                                    //     int.parse("21"),
                                    //     double.parse('1.0'))),
                                    // Color.fromRGBO(
                                    //     color_code_for_bar!, 1.0)),