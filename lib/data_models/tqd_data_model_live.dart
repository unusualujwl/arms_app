import 'package:flutter/src/widgets/framework.dart';

class tqd_data_model_live {
  List<GetDocValidityDetailsResult>? getDocValidityDetailsResult;

  tqd_data_model_live({this.getDocValidityDetailsResult});

  tqd_data_model_live.fromJson(Map<String, dynamic> json) {
    if (json['GetDocValidityDetailsResult'] != null) {
      getDocValidityDetailsResult = <GetDocValidityDetailsResult>[];
      json['GetDocValidityDetailsResult'].forEach((v) {
        getDocValidityDetailsResult!
            .add(new GetDocValidityDetailsResult.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.getDocValidityDetailsResult != null) {
      data['GetDocValidityDetailsResult'] =
          this.getDocValidityDetailsResult!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class GetDocValidityDetailsResult {
  String? airfieldFlag;
  String? color;
  String? dateLastFlown;
  String? documentId;
  String? doneDate;
  String? iATACode;
  String? licenceName;
  String? noofDays;
  String? percentage;
  String? planDate;
  String? remarks;
  Null? responseMessage;
  String? status;
  String? validUpto;
  String? validity;

  GetDocValidityDetailsResult(
      {this.airfieldFlag,
      this.color,
      this.dateLastFlown,
      this.documentId,
      this.doneDate,
      this.iATACode,
      this.licenceName,
      this.noofDays,
      this.percentage,
      this.planDate,
      this.remarks,
      this.responseMessage,
      this.status,
      this.validUpto,
      this.validity});

  GetDocValidityDetailsResult.fromJson(Map<String, dynamic> json) {
    airfieldFlag = json['AirfieldFlag'];
    color = json['Color'];
    dateLastFlown = json['DateLastFlown'];
    documentId = json['DocumentId'];
    doneDate = json['DoneDate'];
    iATACode = json['IATACode'];
    licenceName = json['LicenceName'];
    noofDays = json['NoofDays'];
    percentage = json['Percentage'];
    planDate = json['PlanDate'];
    remarks = json['Remarks'];
    responseMessage = json['ResponseMessage'];
    status = json['Status'];
    validUpto = json['ValidUpto'];
    validity = json['Validity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['AirfieldFlag'] = this.airfieldFlag;
    data['Color'] = this.color;
    data['DateLastFlown'] = this.dateLastFlown;
    data['DocumentId'] = this.documentId;
    data['DoneDate'] = this.doneDate;
    data['IATACode'] = this.iATACode;
    data['LicenceName'] = this.licenceName;
    data['NoofDays'] = this.noofDays;
    data['Percentage'] = this.percentage;
    data['PlanDate'] = this.planDate;
    data['Remarks'] = this.remarks;
    data['ResponseMessage'] = this.responseMessage;
    data['Status'] = this.status;
    data['ValidUpto'] = this.validUpto;
    data['Validity'] = this.validity;
    return data;
  }
}
