import 'package:flutter/material.dart';
import 'package:my_app/chat_page.dart';
import 'package:my_app/homept_page.dart';
import 'package:my_app/settings.dart';

void main() {
  runApp(PtApp());
}

class PtApp extends StatelessWidget {
  const PtApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePTPage(),
    );
  }
}

class HomePTPage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePTPage> {
  int _currentIndex = 0;
  final List pages = [
    ExercisePtPage(),
    null,
    ChatPage(),
    Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white30,
          fixedColor: Colors.blue,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Trang chủ',
              backgroundColor: Color(0xFF40D876),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today,
              ),
              label: 'Khách hàng',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Trò chuyện',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: 'Hồ Sơ',
              backgroundColor: Colors.blue,
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ));
  }
}
