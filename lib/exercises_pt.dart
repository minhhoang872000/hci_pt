import 'package:flutter/material.dart';
import 'package:my_app/excercises_muscle_group.dart';


class ExercisesPT extends StatefulWidget {
  const ExercisesPT({Key? key}) : super(key: key);

  @override
  _ExercisesPTState createState() => _ExercisesPTState();
}

class _ExercisesPTState extends State<ExercisesPT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Các nhóm cơ'),
      ),
      body: Container(
        child: ListView(
          children: [
            titleOfExercisesPT('assets/cobung.png','Nhóm cơ bụng'),
            Divider(height: 1, color: Colors.black,),
            titleOfExercisesPT('assets/conguc.png','Nhóm cơ ngực'),
            Divider(height: 1, color: Colors.black,),
            titleOfExercisesPT('assets/chan.png','Nhóm cơ chân'),
            Divider(height: 1, color: Colors.black,),
            titleOfExercisesPT('assets/cotay.png','Nhóm cơ tay'),
            Divider(height: 1, color: Colors.black,),
            titleOfExercisesPT('assets/cardio.png','Tim mạch'),
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
  Widget titleOfExercisesPT(String img, String title){
    return Container(
        padding: EdgeInsets.all(5),
        height: 100,
              color: Colors.grey[300],
              /*leading: CircleAvatar(
                backgroundImage: AssetImage(img),
                radius: 45.0,
              ),*/
              child: InkWell(
                onTap: (){
                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ExercisesOfMuscle()));
                },
                child: Row(
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
                    SizedBox(width: 10,),
                    Text(
                      title,
                      style: TextStyle(color: Colors.black),
                    ),
                  ],

                ),
              ),
    );
  }
}
