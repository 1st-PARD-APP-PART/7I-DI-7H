import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'account.dart';
import 'home.dart';

class myProfile extends StatefulWidget {
  const myProfile({Key? key}) : super(key: key);

  @override
  State<myProfile> createState() => _myProfileState();
}

class _myProfileState extends State<myProfile> {
  int _selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(300.0),
        child: AppBar(
          backgroundColor: Color(0xFFE0C6A5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
          flexibleSpace: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 130),
              Center(
                child: Image.asset(
                  'assets/images/zip.png',
                  width: 100,
                  height: 100,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Level 1 : 지푸라기 ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                '₩ 13,800',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 30),
          Row(children: [
            SizedBox(width: 30),
            Align(alignment: Alignment.centerLeft,
                child: Text('절약내역', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400,),)),
          ],),
          SizedBox(height: 12),
          Divider(color: Color(0xFFECECEC), thickness: 1,),
          Column(children: [
            SizedBox(height: 12),
            Row(children: [
              SizedBox(width: 30),
              Text('5.19', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
              SizedBox(width: 8),
              Image.asset('assets/images/smoke.png', width: 62),
              SizedBox(width: 8),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('담배', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,)),
                  SizedBox(height: 6),
                  Text('편의점', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF949494))),
                ],),
              SizedBox(width: 149),
              Text('₩4,500', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400))
            ],),
            SizedBox(height: 12),
            Divider(color: Color(0xFFECECEC), thickness: 1,),
            Column(children: [
              SizedBox(height: 15),
              Row(children: [
                SizedBox(width: 30),
                Text('5.18', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                SizedBox(width: 8),
                Image.asset('assets/images/coffee.png', width: 62),
                SizedBox(width: 8),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('아메리카노', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,)),
                    SizedBox(height: 6),
                    Text('파드커피', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF949494))),
                  ],),
                SizedBox(width: 100),
                Text('₩2,500', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400))
              ],),
            ],),
            SizedBox(height: 12),
            Divider(color: Color(0xFFECECEC), thickness: 1,),
            Column(children: [
              SizedBox(height: 18),
              Row(children: [
                SizedBox(width: 30),
                Text('5.17', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                SizedBox(width: 8),
                Image.asset('assets/images/taxi.png', width: 62),
                SizedBox(width: 8),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('택시비', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,)),
                    SizedBox(height: 6),
                    Text('파드택시', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF949494))),
                  ],),
                SizedBox(width: 133),
                Text('₩6,800', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400))
              ],),
            ],),
            SizedBox(height: 12),
            Divider(color: Color(0xFFECECEC), thickness: 1,),
            Column(children: [
              SizedBox(height: 18),
              Row(children: [
                SizedBox(width: 30),
                Text('5.15', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                SizedBox(width: 8),
                Image.asset('assets/images/coffee.png', width: 62),
                SizedBox(width: 8),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('아메리카노', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,)),
                    SizedBox(height: 6),
                    Text('파드커피', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF949494))),
                  ],),
                SizedBox(width: 100),
                Text('₩2,500', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400))
              ],),
            ],),

            SizedBox(height: 12),
            Divider(color: Color(0xFFECECEC), thickness: 1,),
            Column(children: [
              SizedBox(height: 18),
              Row(children: [
                SizedBox(width: 30),
                Text('5.15', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                SizedBox(width: 8),
                Image.asset('assets/images/coffee.png', width: 62),
                SizedBox(width: 8),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('아메리카노', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,)),
                    SizedBox(height: 6),
                    Text('파드커피', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF949494))),
                  ],),
                SizedBox(width: 100),
                Text('₩2,500', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400))
              ],),
            ],)
          ],)
        ],),
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => myProfile()));
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
