import 'package:flutter/material.dart';
import 'package:arms_app/providers/crew_roster_table_provider.dart';
import 'package:provider/provider.dart';

class crew_roster_table_part extends StatefulWidget {
  const crew_roster_table_part({Key? key}) : super(key: key);

  @override
  _crew_roster_table_partState createState() => _crew_roster_table_partState();
}

class _crew_roster_table_partState extends State<crew_roster_table_part> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<crew_roster_table_provider>(
      create: (context) => crew_roster_table_provider(),
      child: Consumer<crew_roster_table_provider>(
        builder: (context, provider, child) {
          if (provider.crew_table_p == null) {
            provider.getData(context);
            return const Center(child: CircularProgressIndicator());
          }

          return Column(
            children: [
              DataTable(
                border: TableBorder.all(
                  width: 1,
                ),
                columnSpacing: 79,
                horizontalMargin: 53,
                headingRowHeight: 30,
                columns: const <DataColumn>[
                  DataColumn(
                      label: Padding(
                    padding: EdgeInsets.only(left: 0.0),
                    child: Text(
                      '',
                      style: TextStyle(fontSize: 10),
                    ),
                  )),
                  DataColumn(
                      label: Center(
                    child: Text(
                      '        FT      ',
                      style: TextStyle(fontSize: 13),
                    ),
                  )),
                  DataColumn(
                      label: Center(
                    child: Text(
                      '        DP      ',
                      style: TextStyle(fontSize: 13),
                    ),
                  )),
                  // DataColumn(
                  //     label: Text(
                  //   "Bal",
                  //   style: TextStyle(fontSize: 10),
                  // )),
                  // DataColumn(
                  //     label: Text(
                  //   "Limit",
                  //   style: TextStyle(fontSize: 10),
                  // )),
                  // DataColumn(
                  //     label: Text(
                  //   "Utilized",
                  //   style: TextStyle(fontSize: 10),
                  // )),
                  // DataColumn(
                  //     label: Text(
                  //   "Bal",
                  //   style: TextStyle(fontSize: 10),
                  // ))
                ],
                rows: [],
              ),
              DataTable(
                  columnSpacing: 20,
                  headingRowHeight: 67,
                  border: TableBorder.all(
                    width: 1,
                  ),
                  columns: const <DataColumn>[
                    DataColumn(
                        label: Text(
                      "Description",
                      style: TextStyle(fontSize: 10),
                    )),
                    DataColumn(
                        label: Text(
                      "Limit",
                      style: TextStyle(fontSize: 10),
                    )),
                    DataColumn(
                        label: Text(
                      "Flown",
                      style: TextStyle(fontSize: 10),
                    )),
                    DataColumn(
                        label: Text(
                      "Bal",
                      style: TextStyle(fontSize: 10),
                    )),
                    DataColumn(
                        label: Text(
                      "Limit",
                      style: TextStyle(fontSize: 10),
                    )),
                    DataColumn(
                        label: Text(
                      "Utilized",
                      style: TextStyle(fontSize: 10),
                    )),
                    DataColumn(
                        label: Text(
                      "Bal",
                      style: TextStyle(fontSize: 10),
                    ))
                  ],
                  rows: const <DataRow>[
                    DataRow(
                      cells: <DataCell>[
                        DataCell(
                          Text(
                            "30 days",
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        DataCell(Text(
                          "100:00",
                          style: TextStyle(fontSize: 10),
                        )),
                        DataCell(Text(
                          "01:00",
                          style: TextStyle(fontSize: 10),
                        )),
                        DataCell(Text(
                          "99:00",
                          style: TextStyle(fontSize: 10),
                        )),
                        DataCell(Text(
                          "99:00",
                          style: TextStyle(fontSize: 10),
                        )),
                        DataCell(Text(
                          "99:00",
                          style: TextStyle(fontSize: 10),
                        )),
                        DataCell(Text(
                          "99:00",
                          style: TextStyle(fontSize: 10),
                        )),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text(
                          "30 days",
                          style: TextStyle(fontSize: 10),
                        )),
                        DataCell(Text(
                          "100:00",
                          style: TextStyle(fontSize: 10),
                        )),
                        DataCell(Text(
                          "01:00",
                          style: TextStyle(fontSize: 10),
                        )),
                        DataCell(Text(
                          "99:00",
                          style: TextStyle(fontSize: 10),
                        )),
                        DataCell(Text(
                          "99:00",
                          style: TextStyle(fontSize: 10),
                        )),
                        DataCell(Text(
                          "99:00",
                          style: TextStyle(fontSize: 10),
                        )),
                        DataCell(Text(
                          "99:00",
                          style: TextStyle(fontSize: 10),
                        )),
                      ],
                    )
                  ]),
            ],
          );
        },
      ),
    );
  }
}
