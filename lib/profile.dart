import 'package:flutter/material.dart';
import 'package:my_app/training.dart';

class profileTrainee extends StatefulWidget {
  const profileTrainee({Key? key}) : super(key: key);

  @override
  _profileTraineeState createState() => _profileTraineeState();
}

class _profileTraineeState extends State<profileTrainee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "data:image/jpeg;base64,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"),
                fit: BoxFit.cover)),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/ptpic1.png"),
                    fit: BoxFit.cover,
                  )),
                  child: Container(
                    width: 386,
                    height: 310.0,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 140.0,
                            height: 140.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "data:image/jpeg;base64,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"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(80.0),
                                border: (Border.all(
                                    color: Colors.white, width: 10.0))),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Text(
                  "Ngô Hoàng Khang",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "@khangngo.gmail.com",
                  style: TextStyle(fontSize: 20, color: Colors.black87),
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

                        // Ngôn ngữ
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Thông tin bệnh nền",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600)),
                    SizedBox(height: 10),
                    Text("Tim mạch : Không"),
                    SizedBox(height: 10),
                    Text("Dị ứng các loại thực phẩm : Không"),
                    SizedBox(height: 10),
                    Text("Dị ứng thời tiết : Không"),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  child: Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.account_circle_outlined,
                          color: Colors.greenAccent,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Hình ảnh người tập",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.greenAccent,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                            'https://kenh14cdn.com/thumb_w/660/203336854389633024/2021/6/12/19822442418283673806783344583383407625198315n-16234810068161508176071.jpg',
                            height: 265,
                            width: 200),
                        SizedBox(
                          width: 10,
                        ),
                        Image.network(
                            'data:image/jpeg;base64,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',
                            height: 330,
                            width: 220),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                            'https://kenh14cdn.com/thumb_w/660/203336854389633024/2021/6/12/19822442418283673806783344583383407625198315n-16234810068161508176071.jpg',
                            height: 265,
                            width: 200),
                        SizedBox(
                          width: 10,
                        ),
                        Image.network(
                            'data:image/jpeg;base64,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',
                            height: 330,
                            width: 220),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: new SizedBox(
                          width: 150.0,
                          height: 50.0,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyHomePage()));
                            },
                            child: Text("Các bài tập hôm nay"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
