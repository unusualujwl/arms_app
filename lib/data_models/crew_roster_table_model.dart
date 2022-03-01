class crew_table {
  bool? status;
  Data? data;

  crew_table({this.status, this.data});

  crew_table.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['status'] = this.status;
  //   if (this.data != null) {
  //     data['data'] = this.data!.toJson();
  //   }
  //   return data;
  // }
}

class Data {
  String? ftLimitMonthly;
  String? ftFlownMonthly;
  String? ftBalMonthly;
  String? ftLimitYearly;
  String? ftFlownYearly;
  String? ftBalYearly;
  String? dpBalYearly;
  String? dpLimitMonthly;
  String? dpUtilizedMonthly;
  String? dpBalMonthly;
  String? dpLimitYearly;
  String? dpUtilizedYearly;

  Data(
      {this.ftLimitMonthly,
      this.ftFlownMonthly,
      this.ftBalMonthly,
      this.ftLimitYearly,
      this.ftFlownYearly,
      this.ftBalYearly,
      this.dpBalYearly,
      this.dpLimitMonthly,
      this.dpUtilizedMonthly,
      this.dpBalMonthly,
      this.dpLimitYearly,
      this.dpUtilizedYearly});

  Data.fromJson(Map<String, dynamic> json) {
    ftLimitMonthly = json['ft_limit_monthly'];
    ftFlownMonthly = json['ft_flown_monthly'];
    ftBalMonthly = json['ft_bal_monthly'];
    ftLimitYearly = json['ft_limit_yearly'];
    ftFlownYearly = json['ft_flown_yearly'];
    ftBalYearly = json['ft_bal_yearly'];
    dpBalYearly = json['dp_bal_yearly'];
    dpLimitMonthly = json['dp_limit_monthly'];
    dpUtilizedMonthly = json['dp_utilized_monthly'];
    dpBalMonthly = json['dp_bal_monthly'];
    dpLimitYearly = json['dp_limit_yearly'];
    dpUtilizedYearly = json['dp_utilized_yearly'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['ft_limit_monthly'] = this.ftLimitMonthly;
  //   data['ft_flown_monthly'] = this.ftFlownMonthly;
  //   data['ft_bal_monthly'] = this.ftBalMonthly;
  //   data['ft_limit_yearly'] = this.ftLimitYearly;
  //   data['ft_flown_yearly'] = this.ftFlownYearly;
  //   data['ft_bal_yearly'] = this.ftBalYearly;
  //   data['dp_bal_yearly'] = this.dpBalYearly;
  //   data['dp_limit_monthly'] = this.dpLimitMonthly;
  //   data['dp_utilized_monthly'] = this.dpUtilizedMonthly;
  //   data['dp_bal_monthly'] = this.dpBalMonthly;
  //   data['dp_limit_yearly'] = this.dpLimitYearly;
  //   data['dp_utilized_yearly'] = this.dpUtilizedYearly;
  //   return data;
  // }
}
