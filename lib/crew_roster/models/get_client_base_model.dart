// To parse this JSON data, do
//
//     final getClientBaseUrlResponse = getClientBaseUrlResponseFromJson(jsonString);

import 'dart:convert';

GetClientBaseUrlResponse getClientBaseUrlResponseFromJson(String str) =>
    GetClientBaseUrlResponse.fromJson(json.decode(str));

String getClientBaseUrlResponseToJson(GetClientBaseUrlResponse data) =>
    json.encode(data.toJson());

class GetClientBaseUrlResponse {
  GetClientBaseUrlResponse({
    this.getClientBaseUrlResult,
  });

  GetClientBaseUrlResult? getClientBaseUrlResult;

  factory GetClientBaseUrlResponse.fromJson(Map<String, dynamic> json) =>
      GetClientBaseUrlResponse(
        getClientBaseUrlResult:
            GetClientBaseUrlResult.fromJson(json["GetClientBaseURLResult"]),
      );

  Map<String, dynamic> toJson() => {
        "GetClientBaseURLResult": getClientBaseUrlResult?.toJson(),
      };
}

class GetClientBaseUrlResult {
  GetClientBaseUrlResult({
    this.aomFeedbackEmailId,
    this.aomFeedbackFromEmailId,
    this.aotBaseUrl1,
    this.aotBaseUrl2,
    this.baseUrl1,
    this.baseUrl2,
    this.buttoncolor,
    this.clientId,
    this.clientLogo,
    this.clientName,
    this.docsChartsPath,
    this.dottedLineColour,
    this.errorNumber,
    this.fontFamily,
    this.fontFilesName,
    this.fontPath,
    this.headerColour,
    this.headerTextcolour,
    this.iconColour,
    this.imagesPath,
    this.isDownloadAndroid,
    this.isDownloadIos,
    this.isDownloadWindows,
    this.resendInterval,
    this.securityModel,
    this.subHeadercolour,
    this.subHeadercolourdark,
    this.subHeadercolourlight,
    this.subscriberSessionGuid,
    this.termsOfUseContent,
    this.termsOfUseFileName,
  });

  String? aomFeedbackEmailId;
  String? aomFeedbackFromEmailId;
  String? aotBaseUrl1;
  String? aotBaseUrl2;
  String? baseUrl1;
  String? baseUrl2;
  String? buttoncolor;
  String? clientId;
  String? clientLogo;
  String? clientName;
  String? docsChartsPath;
  String? dottedLineColour;
  String? errorNumber;
  String? fontFamily;
  String? fontFilesName;
  String? fontPath;
  String? headerColour;
  String? headerTextcolour;
  String? iconColour;
  String? imagesPath;
  bool? isDownloadAndroid;
  bool? isDownloadIos;
  bool? isDownloadWindows;
  String? resendInterval;
  String? securityModel;
  String? subHeadercolour;
  String? subHeadercolourdark;
  String? subHeadercolourlight;
  String? subscriberSessionGuid;
  String? termsOfUseContent;
  String? termsOfUseFileName;

  factory GetClientBaseUrlResult.fromJson(Map<String, dynamic> json) =>
      GetClientBaseUrlResult(
        aomFeedbackEmailId: json["AOMFeedbackEmailId"],
        aomFeedbackFromEmailId: json["AOMFeedbackFromEmailId"],
        aotBaseUrl1: json["AOTBaseURL1"],
        aotBaseUrl2: json["AOTBaseURL2"],
        baseUrl1: json["BaseURL1"],
        baseUrl2: json["BaseURL2"],
        buttoncolor: json["Buttoncolor"],
        clientId: json["ClientID"],
        clientLogo: json["ClientLogo"],
        clientName: json["ClientName"],
        docsChartsPath: json["DocsChartsPath"],
        dottedLineColour: json["DottedLineColour"],
        errorNumber: json["ErrorNumber"],
        fontFamily: json["FontFamily"],
        fontFilesName: json["FontFilesName"],
        fontPath: json["FontPath"],
        headerColour: json["HeaderColour"],
        headerTextcolour: json["HeaderTextcolour"],
        iconColour: json["IconColour"],
        imagesPath: json["ImagesPath"],
        isDownloadAndroid: json["IsDownloadAndroid"],
        isDownloadIos: json["IsDownloadIOS"],
        isDownloadWindows: json["IsDownloadWindows"],
        resendInterval: json["ResendInterval"],
        securityModel: json["SecurityModel"],
        subHeadercolour: json["SubHeadercolour"],
        subHeadercolourdark: json["SubHeadercolourdark"],
        subHeadercolourlight: json["SubHeadercolourlight"],
        subscriberSessionGuid: json["SubscriberSessionGUID"],
        termsOfUseContent: json["TermsOfUseContent"],
        termsOfUseFileName: json["TermsOfUseFileName"],
      );

  Map<String, dynamic> toJson() => {
        "AOMFeedbackEmailId": aomFeedbackEmailId,
        "AOMFeedbackFromEmailId": aomFeedbackFromEmailId,
        "AOTBaseURL1": aotBaseUrl1,
        "AOTBaseURL2": aotBaseUrl2,
        "BaseURL1": baseUrl1,
        "BaseURL2": baseUrl2,
        "Buttoncolor": buttoncolor,
        "ClientID": clientId,
        "ClientLogo": clientLogo,
        "ClientName": clientName,
        "DocsChartsPath": docsChartsPath,
        "DottedLineColour": dottedLineColour,
        "ErrorNumber": errorNumber,
        "FontFamily": fontFamily,
        "FontFilesName": fontFilesName,
        "FontPath": fontPath,
        "HeaderColour": headerColour,
        "HeaderTextcolour": headerTextcolour,
        "IconColour": iconColour,
        "ImagesPath": imagesPath,
        "IsDownloadAndroid": isDownloadAndroid,
        "IsDownloadIOS": isDownloadIos,
        "IsDownloadWindows": isDownloadWindows,
        "ResendInterval": resendInterval,
        "SecurityModel": securityModel,
        "SubHeadercolour": subHeadercolour,
        "SubHeadercolourdark": subHeadercolourdark,
        "SubHeadercolourlight": subHeadercolourlight,
        "SubscriberSessionGUID": subscriberSessionGuid,
        "TermsOfUseContent": termsOfUseContent,
        "TermsOfUseFileName": termsOfUseFileName,
      };
}
