
import 'package:flutter/material.dart';
import 'package:idih/Screen/chat.dart';
import 'package:idih/util/text_styles.dart';

import 'account.dart';

import 'myProfile.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;
  List<Map<String,dynamic>> datas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(317.0),
        child: AppBar(
          backgroundColor: Color(0xFFFFFFFF),

          flexibleSpace: Column(
            children: [
              Container(
                padding: EdgeInsets.all(30),
                color: Color(0xFFFFFFFF),
                child: Column(
                    children: [
                    SizedBox(height: 100),
                Text('거지촌',
                    style: title()),
                SizedBox(height: 60),
                Row(children: [
                  Image.asset('assets/images/house.png', width: 203),
                  SizedBox(width: 90),
                  Column(children: [
                    SizedBox(height: 45),
                    Row(children: [
                      Icon(Icons.search, size: 27),
                      SizedBox(width: 15),
                      Icon(Icons.add, size: 28)
                    ],),
                  ],)
                ],),])
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            padding: EdgeInsets.all(30),
            color: Color(0xFFFFFFFF),
            child: Column(
              children: [
                // Divider(
                //   thickness: 1,
                //   color: Colors.black.withOpacity(0.1),
                // ),
                Row(children: [
                  Column(children: [
                    SizedBox(height:6),
                    Row(children: [
                      Image.asset('assets/images/fly.png'),
                      SizedBox(width: 28,),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage()));
                        },
                        child: Text('커피 좀 마시려 하는데...', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black)),),
                      SizedBox(width: 95),
                      Text('8/15', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400))
                    ],),
                    SizedBox(height: 6),
                  ],)
                ],),
                Divider(
                  thickness: 1,
                  color: Colors.black.withOpacity(0.1),
                ),
                Row(children: [
                  Column(children: [
                    SizedBox(height:6),
                    Row(children: [
                      Image.asset('assets/images/fly.png'),
                      SizedBox(width: 28,),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage()));
                        },
                        child: Text('오후에 비 온다는데 좀 더 기다리...', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black)),),
                      SizedBox(width: 30),
                      Text('7/15', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400))
                    ],),
                    SizedBox(height: 6),
                  ],)
                ],),
                Divider(
                  thickness: 1,
                  color: Colors.black.withOpacity(0.1),
                ),
                Row(children: [
                  Column(children: [
                    SizedBox(height:6),
                    Row(children: [
                      Image.asset('assets/images/fly.png'),
                      SizedBox(width: 28,),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage()));
                        },
                        child: Text('저를 운반해준 어르신께 감사의 의미...', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black)),),
                      SizedBox(width: 5),
                      Text('8/15', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400))
                    ],),
                    SizedBox(height: 6),
                  ],)
                ],),
                Divider(
                  thickness: 1,
                  color: Colors.black.withOpacity(0.1),
                ),
                Row(children: [
                  Column(children: [
                    SizedBox(height:6),
                    Row(children: [
                      Image.asset('assets/images/fly.png'),
                      SizedBox(width: 28,),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage()));
                        },
                        child: Text('바쁘다바빠 현대사회 속 단비같은...', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black)),),
                      SizedBox(width: 25),
                      Text('5/15', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400))
                    ],),
                    SizedBox(height: 6),
                  ],)
                ],),
                Divider(
                  thickness: 1,
                  color: Colors.black.withOpacity(0.1),
                ),
                Row(children: [
                  Column(children: [
                    SizedBox(height:6),
                    Row(children: [
                      Image.asset('assets/images/fly.png'),
                      SizedBox(width: 28,),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage()));
                        },
                        child: Text('틴트사도 됩니까? 입술 꾹 물어서 빨...', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black)),),
                      SizedBox(width: 3),
                      Text('14/15', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400))
                    ],),
                    SizedBox(height: 6),
                  ],)
                ],),
                Divider(
                  thickness: 1,
                  color: Colors.black.withOpacity(0.1),
                ),
                Row(children: [
                  Column(children: [
                    SizedBox(height:6),
                    Row(children: [
                      Image.asset('assets/images/fly.png'),
                      SizedBox(width: 28,),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage()));
                        },
                        child: Text('우리에겐 여행 유튜브가 있습니다...', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black)),),
                      SizedBox(width: 20),
                      Text('8/15', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400))
                    ],),
                    SizedBox(height: 6),
                  ],)
                ],),
                Divider(
                  thickness: 1,
                  color: Colors.black.withOpacity(0.1),
                ),
                Row(children: [
                  Column(children: [
                    SizedBox(height:6),
                    Row(children: [
                      Image.asset('assets/images/fly.png'),
                      SizedBox(width: 28,),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage()));
                        },
                        child: Text('우리에겐 여행 유튜브가 있습니다...', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black)),),
                      SizedBox(width: 20),
                      Text('2/15', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400))
                    ],),
                    SizedBox(height: 6),
                  ],)
                ],),
                Divider(
                  thickness: 1,
                  color: Colors.black.withOpacity(0.1),
                ),
                Row(children: [
                  Column(children: [
                    SizedBox(height:6),
                    Row(children: [
                      Image.asset('assets/images/fly.png'),
                      SizedBox(width: 28,),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage()));
                        },
                        child: Text('우리에겐 여행 유튜브가 있습니다...', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black)),),
                      SizedBox(width: 20),
                      Text('9/15', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400))
                    ],),
                    SizedBox(height: 6),
                  ],)
                ],),

              ],
            ),
          ),
        ],),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFFAFAFA),
        selectedItemColor: Colors.black,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        currentIndex: _selectedIndex,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AccountPage()));
              break;
            case 1:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
              break;
            case 2:
              Navigator.push(context, MaterialPageRoute(builder: (context) => myProfile()));
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
