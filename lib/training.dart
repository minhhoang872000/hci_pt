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
                      'Bài tập (4)',
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
                        image: AssetImage("assets/stand.jpg"),
                        fit: BoxFit.cover),
                  ),
                  padding: EdgeInsets.all(10),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Nhảy dây không dùng dây',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      '- Bước 1: Làm bước 2',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    Text(
                      '- Bước 2: Làm bước 3',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    Text(
                      '- Bước 3: Làm bước 1',
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
                        image: AssetImage("assets/hand.jpg"),
                        fit: BoxFit.cover),
                  ),
                  padding: EdgeInsets.all(10),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Bật nhảy',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      '- Bước 1: Làm bước 2',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    Text(
                      '- Bước 2: Làm bước 3',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    Text(
                      '- Bước 3: Làm bước 1',
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
                        image: AssetImage("assets/chair.jpg"),
                        fit: BoxFit.cover),
                  ),
                  padding: EdgeInsets.all(10),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Bước lên ghế',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      '- Bước 1: Làm bước 2',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    Text(
                      '- Bước 2: Làm bước 3',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    Text(
                      '- Bước 3: Làm bước 1',
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
                    decoration: InputDecoration(labelText: 'Nhập bài tập'),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Bước 1'),

                    //onChanged: (val) {
                    //titleInput = val;
                    //},
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Bước 2'),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Bước 3'),
                  ),
                  FlatButton(
                    child: Text('Thêm bài tập'),
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
