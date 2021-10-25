import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    AppBar(
      backgroundColor: Colors.indigo[900],
      title: Text('Ngày 1'),
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
                        image: AssetImage("assets/lay.jpg"), fit: BoxFit.cover),
                  ),
                  padding: EdgeInsets.all(10),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Nâng chân',
                      style: TextStyle(
                          fontSize: 20,
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
          SizedBox(
            width: 200,
            height: 50,
            child: RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
              onPressed: () {
                print("RaisedButton");
              },
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Text(
                "Làm lại",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
