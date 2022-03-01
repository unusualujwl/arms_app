import 'package:flutter/material.dart';

import '../constants.dart';

class progree_bar_part extends StatefulWidget {
  const progree_bar_part({Key? key}) : super(key: key);

  @override
  _progree_bar_partState createState() => _progree_bar_partState();
}

class _progree_bar_partState extends State<progree_bar_part> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            "Flight Time (04:00)",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Month',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: 230,
              height: 15,
              child: const Padding(
                padding: EdgeInsets.only(left: 8, right: 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: LinearProgressIndicator(
                    value: 0.08,
                    valueColor:
                        AlwaysStoppedAnimation<Color>(Color(0xff00ff00)),
                    backgroundColor: Color(0xffD6D6D6),
                  ),
                ),
              ),
            ),
            const Icon(Icons.keyboard_arrow_up, color: AppColors.themeColor)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Year',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: 258,
              height: 15,
              child: const Padding(
                padding: EdgeInsets.only(left: 15, right: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: LinearProgressIndicator(
                    value: 0.02,
                    valueColor:
                        AlwaysStoppedAnimation<Color>(Color(0xff00ff00)),
                    backgroundColor: Color(0xffD6D6D6),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
