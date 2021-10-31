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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Lê Bảo Nam",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 70,
                decoration: BoxDecoration(color: Colors.grey.shade300),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Kinh nghiệm
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Cân nặng",
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            "80kg",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    //Theo dõi
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Chiều cao",
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            "170cm",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Số tuổi",
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            "35",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Chỉ số BMI",
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            "4.5",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
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
            Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text("Buổi Sáng")),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                maxLines: 6,
                decoration: InputDecoration.collapsed(
                    hintText: "Chỉnh sửa nội dung bữa ăn"),
                controller: _controller1,
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              child: Text("Cập Nhật"),
            ),
          ],
        ),
      ),
    );
  }
}
