import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:intl/intl.dart';
import 'package:my_app/exercises_pt.dart';
import 'package:my_app/livestream_page.dart';
import 'package:my_app/profile.dart';
import 'package:my_app/schedule_of_customer.dart';

class ExercisesOfCustomer extends StatefulWidget {
  const ExercisesOfCustomer({Key? key}) : super(key: key);

  @override
  _ExercisesDetailPTState createState() => _ExercisesDetailPTState();
}

class _ExercisesDetailPTState extends State<ExercisesOfCustomer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chi tiết bài tập'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: Container(
                padding: EdgeInsets.all(10),
                height: 230,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/avarCus.png'),
                              radius: 70.0,
                            ),
                            ElevatedButton(
                              style: (ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.green),
                              )),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            profileTrainee()));
                              },
                              child: Text(
                                'Hồ sơ',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
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
                                      'Nguyễn Văn An',
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
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Chiều cao: 180 cm',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                  Text(
                                    'Cân nặng: 100 kg',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Thời gian đăng ký',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                  Text(
                                    '26/10/2021 - 1/11/2021',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('31/10/2021',
                      style: TextStyle(color: Colors.black, fontSize: 30)),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "8:00 - 10:00",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LiveStreamPage()));
                    },
                    child: Container(
                      width: 150,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green),
                      child: Center(
                          child: Text(
                        "Tham gia phòng tập",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ExercisesPT()));
                    },
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green),
                      child: Center(
                          child: Text(
                        "+ Thêm bài tập",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  muscleOfExercisesPT(
                      'assets/plank.jpg', 'Plank', '2 hiệp 30s', '2 hiệp 45s '),
                  Divider(
                    height: 1,
                    color: Colors.black,
                  ),
                  muscleOfExercisesPT('assets/dachanlenxuong.jpg',
                      'Đá chân lên xuống', '3 hiệp 10 lần ', '2 hiệp 15 lần'),
                  Divider(
                    height: 1,
                    color: Colors.black,
                  ),
                  muscleOfExercisesPT('assets/gapv.jpg', 'Gập bụng chữ V',
                      '2 hiệp 15 lần', '3 hiệp 20 lần'),
                  Divider(
                    height: 1,
                    color: Colors.black,
                  ),
                  muscleOfExercisesPT(
                      'assets/chaybo.jpg', 'Chạy bộ', '30 phút', ''),
                  Divider(
                    height: 1,
                    color: Colors.black,
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
                                      ScheduleExerciseOfCustomerPage()));
                        },
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green),
                          child: Center(
                              child: Text(
                            "Xem lịch tập",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget titleOfExercises(String img, String title) {
    return ListTile(
      focusColor: Colors.red,
      /*leading: CircleAvatar(
                backgroundImage: AssetImage(img),
                radius: 45.0,
              ),*/
      leading: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFe0f2f1),
            image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
      onTap: () => {},
      tileColor: Colors.grey,
      contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
    );
  }

  Widget muscleOfExercisesPT(
      String img, String title, String set1, String set2) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 100,
      color: Colors.grey[300],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFe0f2f1),
                image:
                    DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
          ),
          Container(
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  set1,
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                Text(
                  set2,
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 5),
            child: Row(
              children: [
                InkWell(
                  child: Icon(
                    Icons.edit,
                    color: Colors.green,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                InkWell(
                  child: Icon(
                    Icons.delete,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
