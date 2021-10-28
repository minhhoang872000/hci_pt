import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    home:
    SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo[900],
          title: Text('Ngày 1'),
        ),
      ),
    );

    return Container(
      child: Column(
        children: <Widget>[
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
              child: Row(children: <Widget>[
                Container(
                  width: 100,
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
                      'Bữa sáng: ',
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
                )
              ]),
            ),
          ),
          SizedBox(height: 10),
          Card(
            color: Colors.white,
            child: InkWell(
              child: Row(children: <Widget>[
                Container(
                  width: 100,
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
                  children: <Widget>[
                    Text(
                      'Bữa trưa: ',
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
                )
              ]),
            ),
          ),
          SizedBox(height: 10),
          Card(
            color: Colors.white,
            child: InkWell(
              child: Row(children: <Widget>[
                Container(
                  width: 100,
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
                      'Bữa tối: ',
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
                )
              ]),
            ),
          ),
          Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: 'Nhập bữa ăn'),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Nhập món ăn'),

                    //onChanged: (val) {
                    //titleInput = val;
                    //},
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Nhập món ăn'),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Nhập món ăn'),
                  ),
                  FlatButton(
                    child: Text('Thêm'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
