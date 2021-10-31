import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

class LiveStreamPage extends StatefulWidget {
  const LiveStreamPage({Key? key}) : super(key: key);

  @override
  _LiveStreamPageState createState() => _LiveStreamPageState();
}

class _LiveStreamPageState extends State<LiveStreamPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Phòng tập : Đức Đặng ( PT-001)  ",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff222242),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/trainer_livestream.jpg'),
          fit: BoxFit.cover,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 200,
                  height: 230,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 4),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    image: DecorationImage(
                        image: AssetImage('assets/trainee_livestream.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipOval(
                      child: Material(
                        color: Colors.black,
                        child: InkWell(
                          splashColor: Colors.red,
                          child: SizedBox(
                              width: 56,
                              height: 56,
                              child: Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.white,
                              )),
                          onTap: () {},
                        ),
                      ),
                    ),
                    ClipOval(
                      child: Material(
                        color: Colors.black,
                        child: InkWell(
                          splashColor: Colors.red,
                          child: SizedBox(
                              width: 56,
                              height: 56,
                              child: Icon(
                                Icons.mic_outlined,
                                color: Colors.white,
                              )),
                          onTap: () {},
                        ),
                      ),
                    ),
                    ClipOval(
                      child: Material(
                        color: Colors.red,
                        child: InkWell(
                          splashColor: Colors.red,
                          child: SizedBox(
                              width: 56,
                              height: 56,
                              child: Icon(
                                Icons.call_end,
                                color: Colors.white,
                              )),
                          onTap: () {
                            showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: Text('Kết thúc tập'),
                                content: Container(
                                  height: 70,
                                  width: 100,
                                  child: Column(
                                    children: [
                                      Text(
                                        'Ngày tập: 31/10/2019',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.blue),
                                      ),
                                      Text(
                                        'Thời gian tập: 1:30:00',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => PtApp()));
                                    },
                                    child: const Text('Xong'),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
