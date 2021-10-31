import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExercisesOfMuscle extends StatefulWidget {
  const ExercisesOfMuscle({Key? key}) : super(key: key);

  @override
  _ExercisesDetailPTState createState() => _ExercisesDetailPTState();
}

class _ExercisesDetailPTState extends State<ExercisesOfMuscle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bài tập'),
      ),
      body: Container(
        child: ListView(
          children: [
            muscleOfExercisesPT('assets/avata.jpg','Plank'),
            Divider(height: 1, color: Colors.black,),
            muscleOfExercisesPT('assets/avata.jpg','Đá chân lên xuống'),
            Divider(height: 1, color: Colors.black,),
            muscleOfExercisesPT('assets/avata.jpg','Treo người nâng cao đùi'),
            Divider(height: 1, color: Colors.black,),
            muscleOfExercisesPT('assets/avata.jpg','Gập bụng chữ V'),
            Divider(height: 1, color: Colors.black,),
            muscleOfExercisesPT('assets/avata.jpg','Đu xà nâng gối'),
          ],
        ),
      ),
    );
  }

  Widget titleOfExercises(String img, String title){
    return ListTile(
      
      
      focusColor: Colors.red,
              /*leading: CircleAvatar(
                backgroundImage: AssetImage(img),
                radius: 45.0,
              ),*/
              leading: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFe0f2f1),
                        image: DecorationImage(
                            image: AssetImage(img), fit: BoxFit.cover)
                        ),
                  ),
              title: Text(
                title,
                style: TextStyle(color: Colors.black),
              ),
              onTap: () => {},
              tileColor: Colors.grey,
              contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 
               16.0),
    );
  }
  Widget muscleOfExercisesPT(String img, String title){
    return Container(
        padding: EdgeInsets.all(5),
        height: 100,
              color: Colors.grey[300],
              child: InkWell(
                onTap: (){

                  showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Thêm bài tập'),
                          content: Container(
                            height: 180,
                            width: 100,
                            child: Column(
                              children: [
                                TextField(
                                  
                                    autofocus: true ,
                                    maxLines: 1,
                                    decoration:  InputDecoration(labelText: "Số hiệp"),
                                    keyboardType: TextInputType.number,
                                    maxLength: 3,
                                   // maxLengthEnforced: true,
                                    
                                  ),
                                  SizedBox(height: 5,),
                                  TextField(
                                
                                      maxLines: 1,
                                      decoration: new InputDecoration(labelText: "Số lần trong 1 hiệp"),
                                      keyboardType: TextInputType.number,
                                      maxLength: 3,
                                    ),
                              
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);

                              },
                              child: const Text('Thêm'),
                            ),
                          ],
                        ),
                      );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFe0f2f1),
                          image: DecorationImage(
                              image: AssetImage(img), fit: BoxFit.cover)
                          ),
                    ),
                    Container(
                      width: 120,
                      margin: EdgeInsets.only( right: 100),
                      child: Text(
                        title,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only( right: 20),
                      child: InkWell(
                        child: Icon(Icons.add_circle_outline,color: Colors.green,),
                       
                      ),
                    )

                  ],

                ),
              ),
    );
  }
}
