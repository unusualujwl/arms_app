class crew_roster_live {
  GetCrewRosterReportResult? getCrewRosterReportResult;

  crew_roster_live({this.getCrewRosterReportResult});

  crew_roster_live.fromJson(Map<String, dynamic> json) {
    getCrewRosterReportResult = json['GetCrewRosterReportResult'] != null
        ? new GetCrewRosterReportResult.fromJson(
            json['GetCrewRosterReportResult'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.getCrewRosterReportResult != null) {
      data['GetCrewRosterReportResult'] =
          this.getCrewRosterReportResult!.toJson();
    }
    return data;
  }
}

class GetCrewRosterReportResult {
  Null? errorMessage;
  List<LstAirportLoungeMealDetails>? lstAirportLoungeMealDetails;
  List<Null>? lstCrewDetails;
  List<LstCrewRoster>? lstCrewRoster;

  GetCrewRosterReportResult(
      {this.errorMessage,
      this.lstAirportLoungeMealDetails,
      this.lstCrewDetails,
      this.lstCrewRoster});

  GetCrewRosterReportResult.fromJson(Map<String, dynamic> json) {
    errorMessage = json['ErrorMessage'];
    if (json['lstAirportLoungeMealDetails'] != null) {
      lstAirportLoungeMealDetails = <LstAirportLoungeMealDetails>[];
      json['lstAirportLoungeMealDetails'].forEach((v) {
        lstAirportLoungeMealDetails!
            .add(new LstAirportLoungeMealDetails.fromJson(v));
      });
    }
    // if (json['lstCrewDetails'] != null) {
    //   lstCrewDetails = <Null>[];
    //   json['lstCrewDetails'].forEach((v) {
    //     lstCrewDetails!.add(new Null.fromJson(v));
    //   });
    // }
    if (json['lstCrewRoster'] != null) {
      lstCrewRoster = <LstCrewRoster>[];
      json['lstCrewRoster'].forEach((v) {
        lstCrewRoster!.add(new LstCrewRoster.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ErrorMessage'] = this.errorMessage;
    if (this.lstAirportLoungeMealDetails != null) {
      data['lstAirportLoungeMealDetails'] =
          this.lstAirportLoungeMealDetails!.map((v) => v.toJson()).toList();
    }
    // if (this.lstCrewDetails != null) {
    //   data['lstCrewDetails'] =
    //       lstCrewDetails!.map((v) => v!.toJson!()).toList();
    // }
    if (this.lstCrewRoster != null) {
      data['lstCrewRoster'] =
          this.lstCrewRoster!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class LstAirportLoungeMealDetails {
  String? airfieldID;
  String? designation;
  String? email1;
  String? email2;
  String? iATACode;
  String? mob1;
  String? mob2;
  String? name;
  String? tel1;
  String? tel2;

  LstAirportLoungeMealDetails(
      {this.airfieldID,
      this.designation,
      this.email1,
      this.email2,
      this.iATACode,
      this.mob1,
      this.mob2,
      this.name,
      this.tel1,
      this.tel2});

  LstAirportLoungeMealDetails.fromJson(Map<String, dynamic> json) {
    airfieldID = json['AirfieldID'];
    designation = json['Designation'];
    email1 = json['Email1'];
    email2 = json['Email2'];
    iATACode = json['IATACode'];
    mob1 = json['Mob1'];
    mob2 = json['Mob2'];
    name = json['Name'];
    tel1 = json['Tel1'];
    tel2 = json['Tel2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['AirfieldID'] = this.airfieldID;
    data['Designation'] = this.designation;
    data['Email1'] = this.email1;
    data['Email2'] = this.email2;
    data['IATACode'] = this.iATACode;
    data['Mob1'] = this.mob1;
    data['Mob2'] = this.mob2;
    data['Name'] = this.name;
    data['Tel1'] = this.tel1;
    data['Tel2'] = this.tel2;
    return data;
  }
}

class LstCrewRoster {
  String? aCArrivalTerminalID;
  String? aCDepartureTerminalID;
  String? aDate;
  String? aHour;
  String? aMinute;
  String? aMonth;
  String? aYear;
  String? acRegNo;
  String? airCrew;
  String? arrICAO;
  String? arrLATDecimal;
  String? arrLONGDecimal;
  String? arrival;
  String? arrivalBayNo;
  String? arrivalFlag;
  String? arrivalTime;
  String? arrivalTimeUTC;
  String? arrivalUTC;
  String? blockTime;
  String? briefTime;
  String? buttonFlag;
  Null? cC;
  String? cabinCrew;
  String? checkInBufferTimeInHrs;
  String? checkinTimeFlag;
  String? clientName;
  String? crewCheckintime;
  String? crewComplement;
  String? currentData;
  String? dDate;
  String? dHour;
  String? dMinute;
  String? dMonth;
  String? dYear;
  Null? day;
  String? depICAO;
  String? depLATDecimal;
  String? depLONGDecimal;
  String? departure;
  String? departureBayNo;
  String? departureFlag;
  String? departureTime;
  String? departureTimeUTC;
  String? departureUTC;
  Null? deviceTokenId;
  String? duty;
  Null? dutyColor;
  String? dutyID;
  Null? dutyTypeID;
  Null? employeeId;
  String? employeeName;
  Null? errorMessage;
  String? fDT;
  String? fT;
  String? flightDate;
  String? flightId;
  String? flightNo;
  String? flightTime;
  String? fromCity;
  String? fromPlaceName;
  String? geoFenceRadiusInKms;
  String? hotac;
  String? hotacFacilities;
  String? isConfirmed;
  int? isNotified;
  String? isOfficeDuty;
  Null? lS;
  String? mealFlag;
  String? notifyHistoryID;
  String? otherCrew;
  String? previousData;
  Null? rS;
  Null? recordID;
  String? remarks;
  String? reportingTime;
  String? reportingTimeUTC;
  String? sMSText;
  String? slNo;
  String? srNo;
  Null? syncStatus;
  String? toCity;
  String? toPlaceName;
  String? transportFlag;
  Null? uuid;

  LstCrewRoster(
      {this.aCArrivalTerminalID,
      this.aCDepartureTerminalID,
      this.aDate,
      this.aHour,
      this.aMinute,
      this.aMonth,
      this.aYear,
      this.acRegNo,
      this.airCrew,
      this.arrICAO,
      this.arrLATDecimal,
      this.arrLONGDecimal,
      this.arrival,
      this.arrivalBayNo,
      this.arrivalFlag,
      this.arrivalTime,
      this.arrivalTimeUTC,
      this.arrivalUTC,
      this.blockTime,
      this.briefTime,
      this.buttonFlag,
      this.cC,
      this.cabinCrew,
      this.checkInBufferTimeInHrs,
      this.checkinTimeFlag,
      this.clientName,
      this.crewCheckintime,
      this.crewComplement,
      this.currentData,
      this.dDate,
      this.dHour,
      this.dMinute,
      this.dMonth,
      this.dYear,
      this.day,
      this.depICAO,
      this.depLATDecimal,
      this.depLONGDecimal,
      this.departure,
      this.departureBayNo,
      this.departureFlag,
      this.departureTime,
      this.departureTimeUTC,
      this.departureUTC,
      this.deviceTokenId,
      this.duty,
      this.dutyColor,
      this.dutyID,
      this.dutyTypeID,
      this.employeeId,
      this.employeeName,
      this.errorMessage,
      this.fDT,
      this.fT,
      this.flightDate,
      this.flightId,
      this.flightNo,
      this.flightTime,
      this.fromCity,
      this.fromPlaceName,
      this.geoFenceRadiusInKms,
      this.hotac,
      this.hotacFacilities,
      this.isConfirmed,
      this.isNotified,
      this.isOfficeDuty,
      this.lS,
      this.mealFlag,
      this.notifyHistoryID,
      this.otherCrew,
      this.previousData,
      this.rS,
      this.recordID,
      this.remarks,
      this.reportingTime,
      this.reportingTimeUTC,
      this.sMSText,
      this.slNo,
      this.srNo,
      this.syncStatus,
      this.toCity,
      this.toPlaceName,
      this.transportFlag,
      this.uuid});

  LstCrewRoster.fromJson(Map<String, dynamic> json) {
    aCArrivalTerminalID = json['ACArrivalTerminalID'];
    aCDepartureTerminalID = json['ACDepartureTerminalID'];
    aDate = json['ADate'];
    aHour = json['AHour'];
    aMinute = json['AMinute'];
    aMonth = json['AMonth'];
    aYear = json['AYear'];
    acRegNo = json['AcRegNo'];
    airCrew = json['AirCrew'];
    arrICAO = json['ArrICAO'];
    arrLATDecimal = json['ArrLATDecimal'];
    arrLONGDecimal = json['ArrLONGDecimal'];
    arrival = json['Arrival'];
    arrivalBayNo = json['ArrivalBayNo'];
    arrivalFlag = json['ArrivalFlag'];
    arrivalTime = json['ArrivalTime'];
    arrivalTimeUTC = json['ArrivalTimeUTC'];
    arrivalUTC = json['ArrivalUTC'];
    blockTime = json['BlockTime'];
    briefTime = json['BriefTime'];
    buttonFlag = json['ButtonFlag'];
    cC = json['CC'];
    cabinCrew = json['CabinCrew'];
    checkInBufferTimeInHrs = json['CheckInBufferTimeInHrs'];
    checkinTimeFlag = json['CheckinTimeFlag'];
    clientName = json['ClientName'];
    crewCheckintime = json['CrewCheckintime'];
    crewComplement = json['CrewComplement'];
    currentData = json['CurrentData'];
    dDate = json['DDate'];
    dHour = json['DHour'];
    dMinute = json['DMinute'];
    dMonth = json['DMonth'];
    dYear = json['DYear'];
    day = json['Day'];
    depICAO = json['DepICAO'];
    depLATDecimal = json['DepLATDecimal'];
    depLONGDecimal = json['DepLONGDecimal'];
    departure = json['Departure'];
    departureBayNo = json['DepartureBayNo'];
    departureFlag = json['DepartureFlag'];
    departureTime = json['DepartureTime'];
    departureTimeUTC = json['DepartureTimeUTC'];
    departureUTC = json['DepartureUTC'];
    deviceTokenId = json['DeviceTokenId'];
    duty = json['Duty'];
    dutyColor = json['DutyColor'];
    dutyID = json['DutyID'];
    dutyTypeID = json['DutyTypeID'];
    employeeId = json['EmployeeId'];
    employeeName = json['EmployeeName'];
    errorMessage = json['ErrorMessage'];
    fDT = json['FDT'];
    fT = json['FT'];
    flightDate = json['FlightDate'];
    flightId = json['FlightId'];
    flightNo = json['FlightNo'];
    flightTime = json['FlightTime'];
    fromCity = json['FromCity'];
    fromPlaceName = json['FromPlaceName'];
    geoFenceRadiusInKms = json['GeoFenceRadiusInKms'];
    hotac = json['Hotac'];
    hotacFacilities = json['HotacFacilities'];
    isConfirmed = json['IsConfirmed'];
    isNotified = json['IsNotified'];
    isOfficeDuty = json['IsOfficeDuty'];
    lS = json['LS'];
    mealFlag = json['MealFlag'];
    notifyHistoryID = json['NotifyHistoryID'];
    otherCrew = json['OtherCrew'];
    previousData = json['PreviousData'];
    rS = json['RS'];
    recordID = json['RecordID'];
    remarks = json['Remarks'];
    reportingTime = json['ReportingTime'];
    reportingTimeUTC = json['ReportingTimeUTC'];
    sMSText = json['SMSText'];
    slNo = json['SlNo'];
    srNo = json['SrNo'];
    syncStatus = json['SyncStatus'];
    toCity = json['ToCity'];
    toPlaceName = json['ToPlaceName'];
    transportFlag = json['TransportFlag'];
    uuid = json['Uuid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ACArrivalTerminalID'] = this.aCArrivalTerminalID;
    data['ACDepartureTerminalID'] = this.aCDepartureTerminalID;
    data['ADate'] = this.aDate;
    data['AHour'] = this.aHour;
    data['AMinute'] = this.aMinute;
    data['AMonth'] = this.aMonth;
    data['AYear'] = this.aYear;
    data['AcRegNo'] = this.acRegNo;
    data['AirCrew'] = this.airCrew;
    data['ArrICAO'] = this.arrICAO;
    data['ArrLATDecimal'] = this.arrLATDecimal;
    data['ArrLONGDecimal'] = this.arrLONGDecimal;
    data['Arrival'] = this.arrival;
    data['ArrivalBayNo'] = this.arrivalBayNo;
    data['ArrivalFlag'] = this.arrivalFlag;
    data['ArrivalTime'] = this.arrivalTime;
    data['ArrivalTimeUTC'] = this.arrivalTimeUTC;
    data['ArrivalUTC'] = this.arrivalUTC;
    data['BlockTime'] = this.blockTime;
    data['BriefTime'] = this.briefTime;
    data['ButtonFlag'] = this.buttonFlag;
    data['CC'] = this.cC;
    data['CabinCrew'] = this.cabinCrew;
    data['CheckInBufferTimeInHrs'] = this.checkInBufferTimeInHrs;
    data['CheckinTimeFlag'] = this.checkinTimeFlag;
    data['ClientName'] = this.clientName;
    data['CrewCheckintime'] = this.crewCheckintime;
    data['CrewComplement'] = this.crewComplement;
    data['CurrentData'] = this.currentData;
    data['DDate'] = this.dDate;
    data['DHour'] = this.dHour;
    data['DMinute'] = this.dMinute;
    data['DMonth'] = this.dMonth;
    data['DYear'] = this.dYear;
    data['Day'] = this.day;
    data['DepICAO'] = this.depICAO;
    data['DepLATDecimal'] = this.depLATDecimal;
    data['DepLONGDecimal'] = this.depLONGDecimal;
    data['Departure'] = this.departure;
    data['DepartureBayNo'] = this.departureBayNo;
    data['DepartureFlag'] = this.departureFlag;
    data['DepartureTime'] = this.departureTime;
    data['DepartureTimeUTC'] = this.departureTimeUTC;
    data['DepartureUTC'] = this.departureUTC;
    data['DeviceTokenId'] = this.deviceTokenId;
    data['Duty'] = this.duty;
    data['DutyColor'] = this.dutyColor;
    data['DutyID'] = this.dutyID;
    data['DutyTypeID'] = this.dutyTypeID;
    data['EmployeeId'] = this.employeeId;
    data['EmployeeName'] = this.employeeName;
    data['ErrorMessage'] = this.errorMessage;
    data['FDT'] = this.fDT;
    data['FT'] = this.fT;
    data['FlightDate'] = this.flightDate;
    data['FlightId'] = this.flightId;
    data['FlightNo'] = this.flightNo;
    data['FlightTime'] = this.flightTime;
    data['FromCity'] = this.fromCity;
    data['FromPlaceName'] = this.fromPlaceName;
    data['GeoFenceRadiusInKms'] = this.geoFenceRadiusInKms;
    data['Hotac'] = this.hotac;
    data['HotacFacilities'] = this.hotacFacilities;
    data['IsConfirmed'] = this.isConfirmed;
    data['IsNotified'] = this.isNotified;
    data['IsOfficeDuty'] = this.isOfficeDuty;
    data['LS'] = this.lS;
    data['MealFlag'] = this.mealFlag;
    data['NotifyHistoryID'] = this.notifyHistoryID;
    data['OtherCrew'] = this.otherCrew;
    data['PreviousData'] = this.previousData;
    data['RS'] = this.rS;
    data['RecordID'] = this.recordID;
    data['Remarks'] = this.remarks;
    data['ReportingTime'] = this.reportingTime;
    data['ReportingTimeUTC'] = this.reportingTimeUTC;
    data['SMSText'] = this.sMSText;
    data['SlNo'] = this.slNo;
    data['SrNo'] = this.srNo;
    data['SyncStatus'] = this.syncStatus;
    data['ToCity'] = this.toCity;
    data['ToPlaceName'] = this.toPlaceName;
    data['TransportFlag'] = this.transportFlag;
    data['Uuid'] = this.uuid;
    return data;
  }
}
