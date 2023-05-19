import 'package:flutter/material.dart';

import 'account.dart';


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
      appBar: null, // AppBar를 없애기 위해 null로 설정
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                SizedBox(height: 135),
                Text(
                  '거지촌',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 120),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/house.png',
                      width: 203,
                    ),
                    SizedBox(width: 100),
                    Icon(
                      Icons.search,
                      size: 27,
                    ),
                    SizedBox(width: 15),
                    Icon(
                      Icons.add,
                      size: 28,
                    ),
                  ],
                ),
              ],

            ),

          ),
          Expanded(
            child: ListView.separated(
              itemCount: 6, // 리스트 아이템 개수에 맞게 수정해주세요.
              separatorBuilder: (context, index) => Divider(
                color: Colors.black, // 세로 구분선의 색상을 원하는 대로 설정할 수 있습니다.
              ),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
            ),
          ),

        ],
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => AccountPage()));
              break;
            case 1:
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
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