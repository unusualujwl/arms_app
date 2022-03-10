
import 'package:arms_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

class Leaves extends StatefulWidget {
  const Leaves({Key? key}) : super(key: key);

  @override
  State<Leaves> createState() => _LeavesState();
}

class _LeavesState extends State<Leaves> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final ValueNotifier<String> _dropdownValue = ValueNotifier<String>('');
  final ValueNotifier<bool> _tableShow = ValueNotifier<bool>(true);
  final TextEditingController _fromDateController = TextEditingController();
  final TextEditingController _toDateController = TextEditingController();
  final TextEditingController _leavesDaysController = TextEditingController();
  final TextEditingController _leaveReasonController = TextEditingController();

  final List<Map> _leaveData = [
    {
      "leave_type": "Leave Type",
      "entitlement": "Entitlement",
      "leave_balance": "Leave Balance"
    },
    {"leave_type": "VL", "entitlement": "19.0", "leave_balance": "70"},
    {"leave_type": "SL", "entitlement": "43.0", "leave_balance": "50"},
    {"leave_type": "2SL", "entitlement": "45.0", "leave_balance": "35"},
    {"leave_type": "SDF", "entitlement": "23.0", "leave_balance": "56"},
    {"leave_type": "FFSF", "entitlement": "77.0", "leave_balance": "3"},
    {"leave_type": "EER", "entitlement": "19.0", "leave_balance": "5"},
    {"leave_type": "TTRT", "entitlement": "88.0", "leave_balance": "7"},
    {"leave_type": "RT5", "entitlement": "75.0", "leave_balance": "77"},
    {"leave_type": "56DF", "entitlement": "55.0", "leave_balance": "22"},
    {"leave_type": "DF", "entitlement": "5.0", "leave_balance": "2"},
    {"leave_type": "HHF", "entitlement": "53.0", "leave_balance": "11"},
    {"leave_type": "HBF", "entitlement": "3.0", "leave_balance": "2"},
    {"leave_type": "KKK", "entitlement": "7.0", "leave_balance": "33"},
    {"leave_type": "SL", "entitlement": "2.0", "leave_balance": "10"},
    {"leave_type": "CL", "entitlement": "19.0", "leave_balance": "9"},
    {"leave_type": "PL", "entitlement": "8.0", "leave_balance": "8"}
  ];
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: _appBar(),
          backgroundColor: AppColors.colorcement,
        ),
        body: _body(),
      ),
    );
  }

  Widget _body() {
    return Container(child: _tabBar());
  }

  Widget _appBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 100,
          child: Row(
            children: [
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Home',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.white),
                ),
              )
            ],
          ),
        ),
        const Align(
          alignment: Alignment.center,
          child: Text('Leave',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
        const SizedBox(
          width: 100,
        )
      ],
    );
  }

  Widget _tabBar() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 15),
          height: 45,
          color: Colors.grey.shade300,
          child: TabBar(
            controller: _tabController,
            // give the indicator a decoration (color and border radius)
            indicator: BoxDecoration(
              color: Colors.grey.shade500,
            ),
            labelColor: Colors.white,
            labelStyle:
                const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            unselectedLabelColor: Colors.black,
            tabs: const [
              Tab(
                text: 'APPLY',
              ),

              Tab(
                text: 'STATUS',
              ),
            ],
          ),
        ),
        // tab bar view here
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              // first tab bar view widget
              _leaveTabView(),
              // second tab bar view widget
                 Container()
            ],
          ),
        ),
      ],
    );
  }

  Widget _leaveTabView() {
    return ListView(
      children: [
        _leavesFields('Type of leave:', _leaveTypeDropDown()),
        _leavesFields('From:', _fromDateCalender()),
        _leavesFields('To:', _toDateCalender()),
        _leavesFields('Days required:', _requireDaysTextField()),
        _leavesFields('Reason:', _reasonTextField()),
        _applyClearBtn(),
        _dividerLine(),
        _table()
      ],
    );
  }

  Widget _fromDateCalender() {
    return TextField(
      controller: _fromDateController, //editing controller of this TextField
      decoration: const InputDecoration(
        border: InputBorder.none,
      ),
      readOnly: true, //set it true, so that user will not able to edit text
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime
                .now(), //DateTime.now() - not to allow to choose before today.
            lastDate: DateTime(DateTime.now().year + 2, DateTime.now().month,
                DateTime.now().day));

        if (pickedDate != null) {
          print(
              pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
          String formattedDate =
              intl.DateFormat('dd-MMM-yyyy').format(pickedDate);
          print(
              formattedDate); //formatted date output using intl package =>  16-Mar-2021
          //you can implement different kind of Date Format here according to your requirement

          setState(() {
            _fromDateController.text =
                formattedDate; //set output date to TextField value.
          });
        } else {
          print("Date is not selected");
        }
      },
    );
  }

  Widget _toDateCalender() {
    return TextField(
      controller: _toDateController,
      decoration: const InputDecoration(
        border: InputBorder.none,
      ),
      readOnly: true,
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime(DateTime.now().year + 2, DateTime.now().month,
                DateTime.now().day));

        if (pickedDate != null) {
          String formattedDate =
              intl.DateFormat('dd-MMM-yyyy').format(pickedDate);

          setState(() {
            _toDateController.text = formattedDate;
          });
        } else {
          print("Date is not selected");
        }
      },
    );
  }

  _requireDaysTextField() {
    return TextField(
      controller: _leavesDaysController,
      decoration: const InputDecoration(
        border: InputBorder.none,
      ),
    );
  }

  _reasonTextField() {
    return TextField(
      controller: _leaveReasonController,
      maxLines: null,
     
      // expands: true,
      decoration: const InputDecoration(
        hintText: "Reason for leave",
        border: InputBorder.none,
      ),
    );
  }


  Widget _leaveTypeDropDown() {
    return ValueListenableBuilder(
        valueListenable: _dropdownValue,
        builder: (context, value, _) {
          return DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              isExpanded: true,
              value: _dropdownValue.value == '' ? null : _dropdownValue.value,
              hint: const Text("Select",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              items: <String>[
                'Sick Leave',
                'Casual Leave',
                'Marriage Leave',
                'Paternity Leave'
              ].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (text) {
                print("====>>>>$text");
                _dropdownValue.value = text ?? '';
              },
            ),
          );
        });
  }

  Widget _applyClearBtn() {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () => print('APPLY'),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.themeColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Text(
                  'APPLY',
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          InkWell(
            onTap: () {
              _dropdownValue.value ='';
              _fromDateController.clear();
              _toDateController.clear();
              _leavesDaysController.clear();
              _leaveReasonController.clear();
            },
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.themeColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Text(
                  'Cancel',
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _dividerLine() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: List.generate(
            150 ~/ 2,
            (index) => Expanded(
                  child: Container(
                    color: index % 2 == 0 ? Colors.transparent : Colors.grey,
                    height: 2,
                  ),
                )),
      ),
    );
  }

  Widget _table() {
    return ValueListenableBuilder(
        valueListenable: _tableShow,
        builder: (context, value, _) {
          return Column(
            children: [
              IconButton(
                onPressed: () {
                  _tableShow.value = !_tableShow.value;
                },
                icon: Icon(_tableShow.value
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down),
              ),
              Visibility(
                visible: _tableShow.value,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Table(
                      textDirection: TextDirection.rtl,
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.bottom,
                      border: TableBorder.all(
                          width: 2.0, color: Colors.grey.shade100),
                      children: List.generate(
                        _leaveData.length,
                        (index) => TableRow(
                            decoration: BoxDecoration(
                              color: index == 0
                                  ? AppColors.colorcement
                                  : Colors.white,
                            ),
                            children: [
                              _tableText(
                                  _leaveData[index]['leave_type'], index),
                              _tableText(
                                  _leaveData[index]["entitlement"], index),
                              _tableText(
                                  _leaveData[index]["leave_balance"], index),
                            ]),
                      )),
                ),
              ),
            ],
          );
        });
  }

  _tableText(text, index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Text(
        text,
        textScaleFactor: 1.5,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: index == 0 ? FontWeight.bold : FontWeight.normal),
      ),
    );
  }

  Widget _leavesFields(String text, inputBox) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 3.5,
            child: Text(text,
                textAlign: TextAlign.right,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            // height: 40,
            color: AppColors.colorLight,
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                child: inputBox),
          )
        ],
      ),
    );
  }

  //   _statusTabView(){
    
  //    AlertDialog(
  //                                       backgroundColor: Colors.white,
  //                                       shape: RoundedRectangleBorder(
  //                                           borderRadius: BorderRadius.all(
  //                                               Radius.circular(5.0))),
  //                                       content: Text("demo"));
                                  
    
  // }
  }

