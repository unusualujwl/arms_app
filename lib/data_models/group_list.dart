// ignore: camel_case_types
import 'package:flutter/src/material/data_table.dart';

class group_list {
  bool? status;
  List<ListData>? listData;

  group_list({this.status, this.listData});

  group_list.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['list_data'] != null) {
      listData = <ListData>[];
      json['list_data'].forEach((v) {
        listData!.add(ListData.fromJson(v));
      });
    }
  }

  map(DataRow Function(dynamic data) param0) {}

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['status'] = this.status;
  //   if (this.listData != null) {
  //     data['list_data'] = this.listData!.map((v) => v.toJson()).toList();
  //   }
  //   return data;
  // }
}

class ListData {
  int? id;
  String? date;
  String? icon;
  String? flightId;
  String? sourceCode;
  String? destinationCode;
  String? takeOffTiming;
  String? landingTiming;

  ListData(
      {this.id,
      this.date,
      this.icon,
      this.flightId,
      this.sourceCode,
      this.destinationCode,
      this.takeOffTiming,
      this.landingTiming});

  ListData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    icon = json['icon'];
    flightId = json['flight_id'];
    sourceCode = json['source_code'];
    destinationCode = json['destination_code'];
    takeOffTiming = json['take_off_timing'];
    landingTiming = json['landing_timing'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['id'] = this.id;
  //   data['date'] = this.date;
  //   data['icon'] = this.icon;
  //   data['flight_id'] = this.flightId;
  //   data['source_code'] = this.sourceCode;
  //   data['destination_code'] = this.destinationCode;
  //   data['take_off_timing'] = this.takeOffTiming;
  //   data['landing_timing'] = this.landingTiming;
  //   return data;
  // }
}
