import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_app/excercises_customer.dart';
import 'package:my_app/profile.dart';
import 'package:my_app/training.dart';

class ExercisePtPage extends StatefulWidget {
  const ExercisePtPage({Key? key}) : super(key: key);

  @override
  _ExercisePtPageState createState() => _ExercisePtPageState();
}

class _ExercisePtPageState extends State<ExercisePtPage> {
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
              margin: EdgeInsets.only(top: 60),
              padding: EdgeInsets.all(10),
              height: 80,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0xff0f17ad),
                Color(0xFF6985e8),
              ])),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/pt1.jpg'),
                    radius: 28.0,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Chào Đức Đặng",
                                style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.green),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 30),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 5),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(DateFormat.yMMMMd().format(DateTime.now()),
                          style: TextStyle(color: Colors.grey, fontSize: 15)),
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
                    'Lịch trình hôm nay:',
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
                          height: 240,
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
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/pt1.jpg'),
                                    radius: 20,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Lê Bảo Nam",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text("Ngày đăng ký lịch tập : 25/10/2021 - 25/11/2021"),
                              SizedBox(height: 10),
                              
                              Text("Tiến trình buổi tập : 2 / 15 buổi tập"),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Các bài tập chính hôm nay : ",style: TextStyle(fontWeight: FontWeight.bold),),
                              SizedBox(height: 10),
                              Text(
                                "     + Cardio",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "     + Tập tay trước và lưng xô ",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: SizedBox(
                                    width: 100,
                                    height: 30,
                                    child: ElevatedButton(
                                      style: (ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.green),
                                      )),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ExercisesOfCustomer()));
                                      },
                                      child: Text(
                                        'Chi tiết ',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Bữa Trưa -------------------------------------------------------
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
                                            text: "13:00 ",
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
                                            text: "15:00",
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
                          height: 175,
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
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/pt1.jpg'),
                                    radius: 20,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Khang",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "     + Tập bụng và lưng xô (1 giờ)",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "     + Tập cardio (10 phút)",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: SizedBox(
                                    width: 100,
                                    height: 30,
                                    child: ElevatedButton(
                                      style: (ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.green),
                                      )),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    profileTrainee()));
                                      },
                                      child: Text(
                                        'Chi tiết ',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
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
                          height: 175,
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
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/pt1.jpg'),
                                    radius: 20,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Hoàng",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "     + Tập cardio (1 giờ)",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "     + Tập đùi trước và cẳng tay(30 phút)",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: SizedBox(
                                    width: 100,
                                    height: 30,
                                    child: ElevatedButton(
                                      style: (ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.green),
                                      )),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    profileTrainee()));
                                      },
                                      child: Text(
                                        'Chi tiết ',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
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
