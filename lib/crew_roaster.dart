// import 'package:arms_app/crew_roster/crew_roster_table_part.dart';
// import 'package:arms_app/crew_roster/list_view_groped.dart';
// import 'package:arms_app/crew_roster/progress_bar_part.dart';
// import 'package:flutter/material.dart';
// import 'package:arms_app/constants.dart';
// import 'package:grouped_list/grouped_list.dart';
// import 'package:provider/provider.dart';
// import 'package:arms_app/providers/crew_roster_provider.dart';
// import 'package:arms_app/homepage.dart';
// // import 'package:arms_app/crew_roster/grouped_list_part.dart';

// //https://stackoverflow.com/questions/66740735/how-to-create-table-in-flutter-with-dynamic-content
// // ignore: camel_case_types
// class Crew_roaster extends StatefulWidget {
//   const Crew_roaster({Key? key}) : super(key: key);

//   @override
//   _Crew_roasterState createState() => _Crew_roasterState();
// }

// // ignore: camel_case_types
// class _Crew_roasterState extends State<Crew_roaster> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//             colors: [
//               AppColors.themeColor,
//               Color(0xFF00CCFF),
//             ],
//             begin: FractionalOffset(1.0, 0.0),
//             end: FractionalOffset(0.0, 0.0),
//             stops: [1.0, 0.0],
//             tileMode: TileMode.clamp),
//       ),
//       child: SafeArea(
//         child: Scaffold(

//             ////////////////////PROVIDER///////////////////////////
//             body: Column(
//           children: [
//             Expanded(
//               child: Column(
//                 children: [
//                   Container(
//                       height: 50,
//                       width: MediaQuery.of(context).size.width,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Row(
//                             children: const [
//                               SizedBox(
//                                 width: 5,
//                               ),
//                               Icon(
//                                 Icons.arrow_back_ios,
//                                 color: Colors.white,
//                               ),
//                               Text(
//                                 'Home',
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.white),
//                               )
//                             ],
//                           ),
//                           Text('Crew Roaster',
//                               style: TextStyle(
//                                   fontSize: 15,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white)),
//                           Container(
//                             width: 50,
//                           )
//                         ],
//                       ),
//                       color: AppColors.themeColor),
//                   Expanded(
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: <Widget>[
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.stretch,
//                             // ignore: prefer_const_literals_to_create_immutables
//                             children: <Widget>[
//                               const Flexible(flex: 2, child: progree_bar_part()
//                                   // Container(
//                                   //   color: Colors.red,
//                                   // ),
//                                   ),
//                               const Flexible(
//                                   flex: 4, child: crew_roster_table_part()
//                                   //  Container(
//                                   //   color: Colors.yellow,
//                                   // ),
//                                   ),
//                               const Flexible(
//                                 flex: 5,
//                                 child: list_view_groped(),
//                               ),
//                               // Expanded(
//                               //   child: Container(
//                               //     color: Colors.yellow,
//                               //   ),
//                               // ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               color: AppColors.themeColor,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: const [
//                   Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: Text(
//                       'Powered by ARMS',
//                       style: TextStyle(
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: Text(
//                       'Last Sync:14-jun-2021',
//                       style: TextStyle(
//                         color: Colors.white,
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//               height: 30,
//             )
//           ],
//         )),
//       ),
//     );
//   }
// }
