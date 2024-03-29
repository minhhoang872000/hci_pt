import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_app/add_foods.dart';
import 'package:my_app/main.dart';
import 'package:my_app/update_food.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text('Ngày 2 / 10 / 2021'),
      ),
      body: ListView(
        children: <Widget>[
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
          Card(
            color: Colors.white,
            child: InkWell(
              child: Row(children: <Widget>[
                Container(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Chế độ ăn',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                  ],
                )
              ]),
            ),
          ),
          Card(
            color: Colors.white,
            child: InkWell(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 90,
                      height: 100,
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/buasang.jpg"),
                            fit: BoxFit.cover),
                      ),
                      padding: EdgeInsets.all(10),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Bữa sáng (7:00 AM): ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          '- 2 chén cơm',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        Text(
                          '- 200g thịt nạc',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        Text(
                          '- rau củ đầy đủ(cải xanh)',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UpdateFood()));
                          },
                          child: Text("Cập Nhật"),
                        ),
                        RaisedButton(
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => HomePTPage()));
                          },
                          child: Text("Xóa"),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
          SizedBox(height: 10),
          Card(
            color: Colors.white,
            child: InkWell(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 75,
                      height: 100,
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/buatrua.jpg"),
                            fit: BoxFit.cover),
                      ),
                      padding: EdgeInsets.all(10),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Bữa trưa (11:00 AM): ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          '- 200g tôm',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        Text(
                          '- 2 chén cơm',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        Text(
                          '- xà lách, cà rốt',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UpdateFood()));
                          },
                          child: Text("Cập Nhật"),
                        ),
                        RaisedButton(
                          onPressed: () {},
                          child: Text("Xóa"),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
          Card(
            color: Colors.white,
            child: InkWell(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 100,
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/buasang.jpg"),
                            fit: BoxFit.cover),
                      ),
                      padding: EdgeInsets.all(10),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Bữa xế chiều (2:00 PM): ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          '- 1 hộp sữa chua (200ml)',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        Text(
                          '- 1 chiếc bánh ngọt(5g)',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UpdateFood()));
                          },
                          child: Text("Cập Nhật"),
                        ),
                        RaisedButton(
                          onPressed: () {},
                          child: Text("Xóa"),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(height: 10),
          Card(
            color: Colors.white,
            child: InkWell(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 70,
                      height: 100,
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/buatoi.jpg"),
                            fit: BoxFit.cover),
                      ),
                      padding: EdgeInsets.all(10),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Bữa tối(6:00 PM): ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          '- 1 chén cơm',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        Text(
                          '- 200g thịt heo',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        Text(
                          '- 2 quả trứng gà',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: [
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UpdateFood()));
                          },
                          child: Text("Cập Nhật"),
                        ),
                        RaisedButton(
                          onPressed: () {},
                          child: Text("Xóa"),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AddFood()));
            },
            child: Text("Thêm bữa ăn"),
          ),
        ],
      ),
    );
  }
}
