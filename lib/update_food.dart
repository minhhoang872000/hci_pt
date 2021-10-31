import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_app/training.dart';

class UpdateFood extends StatefulWidget {
  const UpdateFood({Key? key}) : super(key: key);

  @override
  _UpdateFoodState createState() => _UpdateFoodState();
}

class _UpdateFoodState extends State<UpdateFood> {
  final _controller1 = TextEditingController(
      text: "- 2 chén cơm\n- 200g thịt nạc\n- rau củ đầy đủ(cải xanh)");

  Object? valueChoose;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cập nhật chế độ ăn uống"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
            Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  "Bữa Sáng (7h - 10h) ",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  maxLines: 6,
                  decoration: InputDecoration.collapsed(
                      hintText: "Chỉnh sửa nội dung bữa ăn"),
                  controller: _controller1,
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              child: Text("Cập nhật chế độ ăn"),
            ),
          ],
        ),
      ),
    );
  }
}
