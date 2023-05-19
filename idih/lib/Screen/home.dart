import 'package:flutter/material.dart';

import '../util/text_styles.dart';
import 'chat.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Text(
              "거지촌",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xFFE1DEDE),
        elevation: 0,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(
            Icons.settings,
            color: Colors.black,
          )),
        ],
      ),
      body: Center(

        child: ElevatedButton(
          child: Text('Go to Chat'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChatPage()),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        currentIndex: _selectedIndex,
        onTap: (index) {
          switch (index) {
            case 0:
              //Navigator.pushNamed(context, '/home');
              break;
            case 1:
              //Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
              break;
            case 2:
              //Navigator.push(context, MaterialPageRoute(builder: (context) => Mypage()));
              //Navigator.pushNamed(context, 'Mypage');
              break;
          }
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.savings,
              size: 30,
            ),
            label: '', // 라벨을 빈 문자열로 설정
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: '', // 라벨을 빈 문자열로 설정
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 30,
            ),
            label: '', // 라벨을 빈 문자열로 설정
          ),
        ],
      ),
    );
  }
}
