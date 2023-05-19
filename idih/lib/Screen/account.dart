import 'package:flutter/material.dart';
import 'package:idih/util/text_styles.dart';

import 'home.dart';
import 'myProfile.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  int _selectedIndex = 0;
  late String _name, _emo;
  late int _price, priceResult;

  @override
  void initState() {
    priceResult = sumPrice(productList);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(30, 96, 0, 0),
            child: Text(
              '이번 주의 SAVE',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'SeoulHangang',
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              '₩${priceResult + 5000}',
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                fontFamily: 'SeoulHangang',
              ),
            ),
          ),
          Center(child: Text('TODAY ₩$priceResult')),
          const SizedBox(
            height: 121,
          ),
          Expanded(child: makeList(productList)),
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AccountPage()));
              break;
            case 1:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
              break;
            case 2:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const myProfile()));
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

  ListView makeList(List<Product> productList) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: productList.length + 1,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      itemBuilder: (context, index) {
        if (index == productList.length) {
          return InkWell(
            onTap: () async {
              List<dynamic> productInfo = await openDialog(context);
              setState(() {
                _name = productInfo[0];
                _price = productInfo[1];
                _emo = productInfo[2];
                addProduct(_name, _price, _emo);
                priceResult = sumPrice(productList);
              });
            },
            child: Container(
              width: 32,
              height: 32,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(242, 216, 183, 100),
              ),
              child: const Icon(
                Icons.add,
                size: 24,
              ),
            ),
          );
        } else {
          var product = productList[index];
          return product;
        }
      },
      separatorBuilder: (context, index) => const SizedBox(
        width: 40,
      ),
    );
  }

  void addProduct(String name, int price, String emo) {
    Product product = Product(name: name, price: price, emo: emo);
    productList.add(product);
  }

  int sumPrice(List<Product> productList) {
    int sum = 0;
    for (int i = 0; i < productList.length; i++) {
      sum = sum + productList[i].price;
    }
    return sum;
  }
}

class Product extends StatelessWidget {
  String name, emo;
  int price;

  Product(
      {super.key, required this.name, required this.price, required this.emo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 259,
          height: 267,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(242, 216, 183, 100),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 30, 0, 5),
                child: Text(
                  name,
                  style: const TextStyle(
                    fontSize: 24,
                    fontFamily: 'AppleSDGothicNeo',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 11),
                child: Text(
                  '₩$price',
                  style: const TextStyle(
                    fontSize: 24,
                    fontFamily: 'AppleSDGothicNeo',
                  ),
                ),
              ),
              Center(
                child: Text(
                  emo,
                  style: const TextStyle(fontSize: 96),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

List<Product> productList = [
  Product(name: '담배', price: 2500, emo: '🚬'),
  Product(name: '택시', price: 1200, emo: '🚖'),
  Product(name: '커피', price: 500, emo: '☕'),
];

Future<List> openDialog(BuildContext context) async {
  List<dynamic>? result = await showDialog(
      context: context,
      builder: (BuildContext context) {
        String name = '', emo = '';
        int price = 0;

        return AlertDialog(
          backgroundColor: const Color(0xFFD2D2D2),
          title: Text(
            '상품 추가',
            style: title(),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '상품명',
                style: body2(),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10),
                          hintText: '커피',
                          filled: true,
                          fillColor: Colors.grey[400],
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none)),
                      onChanged: (value) {
                        name = value;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Text(
                '가격',
                style: body2(),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10),
                          hintText: '2500',
                          filled: true,
                          fillColor: Colors.grey[400],
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none)),
                      onChanged: (value) {
                        price = int.tryParse(value) ?? 0;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Text(
                '이모지',
                style: body2(),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10),
                          hintText: '☕',
                          filled: true,
                          fillColor: Colors.grey[400],
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none)),
                      onChanged: (value) {
                        emo = value;
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            TextButton(
              child: Text(
                '취소',
                style: caption(
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop(null);
              },
            ),
            TextButton(
              child: Text(
                '확인',
                style: caption(color: Colors.black),
              ),
              onPressed: () {
                Navigator.of(context).pop([name, price, emo]);
              },
            ),
          ],
        );
      });
  if (result != null) {
    return result;
  } else {
    print('Dialog dismissed');
    return [];
  }
}
