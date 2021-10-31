import 'package:flutter/material.dart';
import 'package:my_app/profile.dart';
import 'package:my_app/training.dart';

class listClientsFood extends StatefulWidget {
  const listClientsFood({Key? key}) : super(key: key);

  @override
  _listClientsFoodState createState() => _listClientsFoodState();
}

class _listClientsFoodState extends State<listClientsFood> {
  List names = [
    "Nguyễn Hoàng Khang",
    "Ngô Hoàng Phát",
    "Nguyễn Thị Mơ",
    "Đào Hồng Phúc",
    "Lê Hoàng Xuân Thái",
    "Nguyễn Tiến Đạt",
    "Nguyễn Minh Hoàng",
    "Đỗ Tuấn Dương",
    "Khưu văn duy phát",
    "Lê Anh Nguyên"
  ];

  List jobs = [
    "Kỹ sư",
    "Nhân viên văn phòng",
    "Bác sĩ",
    "Lập trình viên",
    "Thợ gỗ",
    "Buôn bán",
    "Buôn bán",
    "Buôn bán",
    "Buôn bán",
    "Buôn bán"
  ];

  List image = [
    "https://media.istockphoto.com/photos/put-more-in-get-more-out-picture-id1291318636?b=1&k=20&m=1291318636&s=170667a&w=0&h=UvVIk7wwkN3X9OFm8gBlWWviV5vAjfrq2ejYP30JmnA=",
    "https://media.istockphoto.com/photos/young-man-using-smart-phone-at-home-picture-id1278009593?b=1&k=20&m=1278009593&s=170667a&w=0&h=uCTPNkqE--LHcrjm14dtmg_NeOjLqi3_9hQfeM9xrVg=",
    "https://media.istockphoto.com/photos/learn-to-love-yourself-first-picture-id1291208214?b=1&k=20&m=1291208214&s=170667a&w=0&h=sAq9SonSuefj3d4WKy4KzJvUiLERXge9VgZO-oqKUOo=",
    "https://media.istockphoto.com/photos/father-helps-young-daughter-ride-skateboard-picture-id1266364224?b=1&k=20&m=1266364224&s=170667a&w=0&h=tFN1UTN5_MGnO671yr4_GT03ycc_AV0K7uwHn0l-E5c=",
    "https://media.istockphoto.com/photos/young-woman-using-smart-phone-on-a-city-street-picture-id1301953709?b=1&k=20&m=1301953709&s=170667a&w=0&h=sMr7J0Pv3kBCELxjhl4P8DD3BSCVrmIWUXF37r23GGU=",
    "https://media.istockphoto.com/photos/portrait-of-happy-casual-bearded-man-holding-trophy-and-celebrating-picture-id1327485360?b=1&k=20&m=1327485360&s=170667a&w=0&h=eM0C9n3RLuoK8B3yx2MDdvI8jNcicP4KyGeg3z7qA84=",
    "https://media.istockphoto.com/photos/self-management-is-a-freelancers-greatest-tool-picture-id1294442411?b=1&k=20&m=1294442411&s=170667a&w=0&h=DzebibUiw8fb056LdMdG5oKURp9LJHfohv_nSG1d764=",
    "https://media.istockphoto.com/photos/just-got-that-confirmation-text-picture-id1299631590?b=1&k=20&m=1299631590&s=170667a&w=0&h=3Dm0kcx9j_q3zxJie54KT1KDqvtwLnUt3G6UuVa4wj8=",
    "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Danh sách người tập"),
        ),
        body: Container(
            color: Colors.green[100],
            child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) => Container(
                      width: MediaQuery.of(context).size.width,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 55,
                                      height: 55,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.green,
                                        foregroundColor: Colors.green,
                                        backgroundImage:
                                            NetworkImage(image[index]),
                                      ),
                                    ),
                                    SizedBox(width: 6),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          names[index],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          jobs[index],
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                            "Ngày đăng ký : 25/10/2021 - 25/11/2021",
                                            style:
                                                TextStyle(color: Colors.grey)),
                                        SizedBox(height: 5),
                                        Text(
                                            "Số lương buổi tập đã đăng ký : 15 buổi tập",
                                            style:
                                                TextStyle(color: Colors.grey)),
                                        Container(
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 10),
                                            child: FlatButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              MyHomePage()));
                                                },
                                                color: Colors.red[200],
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: Text(
                                                  "Chi tiết",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                )))
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      ),
                    ))));
  }
}
