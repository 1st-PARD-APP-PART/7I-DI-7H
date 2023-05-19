import 'package:flutter/material.dart';
import 'package:idih/util/text_styles.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPage();
}

class _ChatPage extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECECEC),
      appBar: AppBar(
        backgroundColor: const Color(0xFFECECEC),
        foregroundColor: Colors.black,
        title: const Text('퍼컬진단이 왜 필요한가'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Column(
                        children: [
                          SizedBox(height: 50),
                          Text("오후 5:01"),
                        ],
                      ),
                      const SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 12,
                        ),
                        decoration: BoxDecoration(
                            color: const Color(0xFFE0C6A5),
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          "사치입니다.",
                          style: body2(),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CircleAvatar(backgroundColor: Color(0xFFD2D2D2)),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("김파드"),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 12,
                            ),
                            decoration: BoxDecoration(
                                color: const Color(0xFFE0C6A5),
                                borderRadius: BorderRadius.circular(15)),
                            child: Text(
                              "커피 2500원 안되겠죠?",
                              style: body2(),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        children: [
                          SizedBox(height: 50),
                          Text("오후 5:03"),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Column(
                        children: [
                          SizedBox(height: 50),
                          Text("오후 5:05"),
                        ],
                      ),
                      const SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 12,
                        ),
                        decoration: BoxDecoration(
                            color: const Color(0xFFE0C6A5),
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          "근처 카페 들어가서 숨 들이키시고\n거기에 있는 냉수 들이키세요..",
                          style: body2(),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Column(
                        children: [
                          CircleAvatar(backgroundColor: Color(0xFFD2D2D2)),
                          SizedBox(height: 50),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("김파드"),
                          const SizedBox(height: 5),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 12,
                            ),
                            decoration: BoxDecoration(
                                color: const Color(0xFFE0C6A5),
                                borderRadius: BorderRadius.circular(15)),
                            child: Text(
                              "에라이",
                              style: body2(),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 12,
                            ),
                            decoration: BoxDecoration(
                                color: const Color(0xFFE0C6A5),
                                borderRadius: BorderRadius.circular(15)),
                            child: Text(
                              "버블티 -4700",
                              style: body2(),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        children: [
                          SizedBox(height: 100),
                          Text("오후 5:05"),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Column(
                        children: [
                          SizedBox(height: 180),
                          Text("오후 5:01"),
                        ],
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 12,
                            ),
                            decoration: BoxDecoration(
                                color: const Color(0xFFE0C6A5),
                                borderRadius: BorderRadius.circular(15)),
                            child: Text(
                              "버블티 사먹고싶은데 돈이 없을때 꿀팁",
                              style: body2(),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Image.asset("assets/images/image64.png"),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CircleAvatar(backgroundColor: Color(0xFFD2D2D2)),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("김파드"),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 12,
                            ),
                            decoration: BoxDecoration(
                                color: const Color(0xFFE0C6A5),
                                borderRadius: BorderRadius.circular(15)),
                            child: Text(
                              "염색하고 싶은데 어쩌죠?",
                              style: body2(),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        children: [
                          SizedBox(height: 50),
                          Text("오후 5:03"),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Column(
                        children: [
                          SizedBox(height: 40),
                          Text("오후 5:08"),
                        ],
                      ),
                      const SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 12,
                        ),
                        decoration: BoxDecoration(
                            color: const Color(0xFFE0C6A5),
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          "과산화수소로 머리 감으세요",
                          style: body2(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(18),
            color: Colors.white,
            child: Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                Expanded(
                  child: TextField(
                    cursorColor: const Color(0xFFE0C6A5),
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      filled: true,
                      fillColor: const Color(0xFFD2D2D2),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
