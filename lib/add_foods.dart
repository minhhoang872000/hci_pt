import 'package:flutter/material.dart';
import 'package:my_app/training.dart';

class AddFood extends StatefulWidget {
  const AddFood({Key? key}) : super(key: key);

  @override
  _AddFoodState createState() => _AddFoodState();
}

class _AddFoodState extends State<AddFood> {
  Object? valueChoose;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thêm bữa ăn"),
      ),
      body: Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: DropdownButton(
                  hint: Text("Bữa trưa 11h - 1h",
                      style: TextStyle(color: Colors.black)),
                  dropdownColor: Colors.grey,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 36,
                  isExpanded: true,
                  underline: SizedBox(),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                  value: valueChoose,
                  onChanged: (newValue) {
                    setState(() {
                      valueChoose = newValue;
                    });
                  },
                  items: [
                    "Bữa Sáng 7h - 9h",
                    "Bữa trưa 11h - 1h",
                    "Bữa xế chiều 2h - 4h",
                    "Bữa chiều 5h - 7h",
                    "Bữa tối 8h - 10h",
                  ].map((valueDay) {
                    return DropdownMenuItem(
                        value: (valueDay),
                        child: Text(
                          valueDay,
                          style: TextStyle(color: Colors.black),
                        ));
                  }).toList(),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {},
                  child: Text("Thêm hình ảnh món ăn"),
                ),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Nhập món ăn cần thêm'),
                maxLines: 4,
              ),
              FlatButton(
                child: Text('Thêm'),
                onPressed: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      content: Container(
                        height: 100,
                        width: 100,
                        child: Center(
                            child: Text(
                          'Thêm thành công',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.blue),
                        )),
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyHomePage()));
                          },
                          child: const Text('Xong'),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
