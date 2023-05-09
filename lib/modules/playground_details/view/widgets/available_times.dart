import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kick_ball/helpers/constant_helper.dart';

Map<String, List<String>> availableTimes = {
  "Sat.": [
    "1-2",
    "2-3",
    "5-6",
    "13-14",
    "17-18",
    "19-20",
  ],
  "Sun.": [
    "1-2",
    "3-4",
    "11-12",
    "13-14",
    "15-16",
    "20-22",
  ],
  "Mon.": [
    "1-2",
    "2-3",
    "5-6",
    "13-14",
    "17-18",
    "20-22",
  ],
  "Tues.": [
    "1-2",
    "2-3",
    "5-6",
    "7-8",
    "17-18",
    "20-22",
  ],
  "Wed.": ["1-2", "2-3", "5-6", "13-14", "17-18", "20-22", "22-23"],
  "Thurs.": [
    "1-2",
    "2-3",
    "5-6",
    "13-14",
    "15-16",
    "20-22",
  ],
  "Fri.": [
    "1-2",
    "2-3",
    "5-6",
    "13-14",
    "17-18",
    "19-20",
  ],
};

class AvailableTimes extends StatefulWidget {
  const AvailableTimes({Key? key}) : super(key: key);

  @override
  State<AvailableTimes> createState() => _AvailableTimesState();
}

class _AvailableTimesState extends State<AvailableTimes> {
  var selectedDay = availableTimes.keys.elementAt(0);
  var selectedTime =
      availableTimes[availableTimes.keys.elementAt(0)]?.elementAt(0);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 700.w,
          height: 100.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: availableTimes.keys.length,
              itemBuilder: (ctx, i) {
                final day = (availableTimes.keys).elementAt(i);
                return Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedDay = day;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              (selectedDay == availableTimes.keys.elementAt(i))
                                  ? AppColors.primary
                                  : Colors.grey),
                      child: Text(day),
                    ),
                    10.horizontalSpace,
                  ],
                );
              }),
        ),
        SizedBox(
          width: 700.w,
          height: 100.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: availableTimes[selectedDay]?.length,
              itemBuilder: (ctx, i) {
                final time = availableTimes[selectedDay]?.elementAt(i);
                return Row(
                  children: <Widget>[
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selectedTime = time!;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: (selectedTime ==
                                    availableTimes[selectedDay]?.elementAt(i))
                                ? AppColors.primary
                                : Colors.grey),
                        child: Text(time.toString())),
                    10.horizontalSpace
                  ],
                );
              }),
        )
      ],
    );
  }
}
