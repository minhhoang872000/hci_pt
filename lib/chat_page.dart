import 'package:flutter/material.dart';

import 'package:my_app/message_page.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPage createState() => _ChatPage();
}

class _ChatPage extends State<ChatPage> {
  List<String> imageUrl = [
    'assets/avarCus.png',
    'assets/avachat2.jpg',
    'assets/avachat3.jpg',
    'assets/avatar-nguyen-thanh-trung.png',
  ];
  Icon actionIcon = new Icon(
    Icons.search,
    color: Colors.white,
  );
  Widget appBarTitle = Text('Advisory Lawyer');
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff14142b),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                color: Color(0xff222242),
                borderRadius: BorderRadius.circular(29.5),
              ),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: "Search",
                  icon: Icon(
                    Icons.search,
                    color: Colors.green,
                  ),
                  border: InputBorder.none,
                ),
              )),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff14142b),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 12.0, right: 12.0, top: 10.0),
                child: ListView(
                  children: [
                    chatTile(imageUrl[0], "Nguyễn Văn An", "Khách hàng",
                        "9am ago", false),
                    chatTile(imageUrl[1], "Trân Văn Đức", "Khách hàng",
                        "8am ago", true),
                    chatTile(imageUrl[2], "Đỗ Thị Hà", "Khách hàng",
                        "6am ago", true),
                    chatTile(imageUrl[3], "Nguyễn Thành Trung", "Khách hàng",
                        "Yesterday", false),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget chatTile(
      String imgUrl, String userName, String msg, String date, bool seen) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ChatDetailPage()));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Container(
          padding: EdgeInsets.all(10),
          height: 80,
          decoration: BoxDecoration(
            color: Color(0xff222242),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(imgUrl),
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
                            userName,
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.green),
                          ),
                        ),
                        Text(
                          date,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          msg,
                          style: TextStyle(color: Colors.white),
                        )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
