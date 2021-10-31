import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_app/main.dart';

class ScheduleExerciseOfCustomerPage extends StatefulWidget {
  const ScheduleExerciseOfCustomerPage({Key? key}) : super(key: key);

  @override
  _ScheduleExerciseOfCustomerPage createState() => _ScheduleExerciseOfCustomerPage();
}

class _ScheduleExerciseOfCustomerPage extends State<ScheduleExerciseOfCustomerPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        /*decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
              Color(0xff0f17ad),
              Color(0xFF6985e8),
               ])
            ),*/
        child: Column(
          children: [
 
            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.only(top: 30, bottom: 30),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('31/10/2021',
                          style: TextStyle(color: Colors.black, fontSize: 30)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 5, right: 5),
                    child: DatePicker(
                      DateTime.now(),
                      height: 80,
                      initialSelectedDate: DateTime.now(),
                      selectedTextColor: Colors.white,
                      selectionColor: Colors.blue,
                      dateTextStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey),
                    ),
                  ),
                  /*Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildDateColumn("M", 2, true),
                      buildDateColumn("T", 3, false),
                      buildDateColumn("W", 4, false),
                      buildDateColumn("T", 5, false),
                      buildDateColumn("F", 6, false),
                      buildDateColumn("S", 7, false),
                      buildDateColumn("S", 8, false),
                    ],
                  ),*/
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0, bottom: 20, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lịch tập của Nguyễn Văn An:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              // Bữa Sáng -------------------------------------------------------
                              Container(
                                width: 15,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.horizontal(
                                      right: Radius.circular(5),
                                    )),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width - 60,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    RichText(
                                        text: TextSpan(
                                            text: "07:00 ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                            children: [
                                          TextSpan(
                                            text: " - ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey),
                                          ),
                                          TextSpan(
                                            text: "9:00",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          ),
                                        ])),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(20)),
                          margin: EdgeInsets.only(right: 10, left: 30),
                          padding: EdgeInsets.only(top: 20, left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "     + Plank",
                                style: TextStyle(
                                  fontSize: 18,fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                "           2 hiệp 30s",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "           2 hiệp 40s",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "     + Đá chân lên xuống",
                                style: TextStyle(
                                  fontSize: 18,fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                "           3 hiệp 10 lần",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "           2 hiệp 15 lần",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "     + Chạy bộ",
                                style: TextStyle(
                                  fontSize: 18,fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                "           30 phút",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                        // Bữa Trưa -------------------------------------------------------
                        SizedBox(
                          height: 20,
                        ),


                        SizedBox(
                          height: 10,
                        ),

                        // Bữa nhẹ chiều -------------------------------------------------------
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 15,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.horizontal(
                                      right: Radius.circular(5),
                                    )),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width - 60,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    RichText(
                                        text: TextSpan(
                                            text: "15:00 ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                            children: [
                                          TextSpan(
                                            text: " - ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey),
                                          ),
                                          TextSpan(
                                            text: "17:00",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          ),
                                        ])),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(20)),
                          margin: EdgeInsets.only(right: 10, left: 30),
                          padding: EdgeInsets.only(top: 20, left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "     + Tập cardio ",
                                style: TextStyle(
                                  fontSize: 18,fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                "           15 phút",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "     + Tập cẳng tay nâng tạ đôi",
                                style: TextStyle(
                                  fontSize: 18,fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                "           2 hiệp 15kg",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "           2 hiệp 20kg",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
                    padding: EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PtApp()));
                        },
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green),
                          child: Center(
                              child: Text(
                            "Trang chủ",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  Container buildDateColumn(String weekDay, int date, bool isActive) {
    return Container(
      decoration: isActive
          ? BoxDecoration(
              color: Color(0xff402fcc), borderRadius: BorderRadius.circular(10))
          : BoxDecoration(),
      height: 55,
      width: 35,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            weekDay,
            style: TextStyle(color: Colors.grey, fontSize: 11),
          ),
          Text(date.toString(),
              style: TextStyle(
                  color: isActive ? Colors.white : Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}