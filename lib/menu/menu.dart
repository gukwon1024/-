import 'package:flutter/material.dart';
import 'announcement.dart';
import 'package:gwproject/menu/qna.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.70, // 화면의 85%를 차지하도록 설정
      child: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              height: 230, // 원하는 높이 설정
              color: Colors.blue[300],
              child: Theme(
                data: Theme.of(context).copyWith(
                  dividerColor: Colors.transparent, // Divider 색상을 투명으로 설정
                ),
                child: DrawerHeader(
                  margin: EdgeInsets.zero, // DrawerHeader의 기본 여백 제거
                  padding: EdgeInsets.only(left: 20,top: 20,right: 5), // 내부 여백 제거
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage('assets/images/me.png'),
                            ),
                            Container(
                              width: 180,
                              height: 80,
                              padding: const EdgeInsets.only(
                                top: 17,
                                bottom: 0,
                                left: 15,
                                right: 10,
                              ),
                              child: const Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('이국원', style: TextStyle(fontSize: 18)),
                                      SizedBox(width: 5),
                                      Text('님', style: TextStyle(fontSize: 13)),
                                    ],
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '디지털콘텐츠학과 / 3학년',
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          width: 400,
                          height: 110,
                          child: Container(
                            padding: EdgeInsets.only(bottom: 10, right: 10),
                            alignment: Alignment.bottomRight,
                            width: 120,
                            height: 40,
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.logout,
                                  color: Colors.black,
                                  size: 19,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '로그아웃',
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              dense: true,
              visualDensity: const VisualDensity(vertical: 2),
              title: const Text(' 공지사항', style: TextStyle(fontSize: 20),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Announcement()),
                );
              },
            ),
            ListTile(
              dense: true,
              visualDensity: const VisualDensity(vertical: 2),
              title: const Text(' Q&A', style: TextStyle(fontSize: 20),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Qna()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}