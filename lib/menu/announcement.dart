import 'package:flutter/material.dart';

class Announcement extends StatelessWidget {
  const Announcement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('공지사항'),
        backgroundColor: Colors.blue[300],
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('[2024 작품발표회] 2024년 디지털콘텐츠학과 작품발표회 참가자 모집 안내'),
            subtitle: const Text('디지털콘텐츠학과 학생들의 전공 역량을 점검하고 창의적인 아이디어를 발표할 수 있는 디지털콘텐츠학과 작품발표회를 갖고자 합니다. 많은 학과 재학생들의 참여...'),
            onTap: () {

            },
          ),
          ListTile(
            title: const Text('[2024학년도 신입생/재학생 실태조사 안내]'),
            subtitle: const Text('2024학년도 신입생·재학생 실태조사를 다음과 같이 실시하니 참여바랍니다.'),
            onTap: () {

            },
          ),
          ListTile(
            title: const Text('한국방송통신전파진흥원(KCA) 2024 미래내일 일경험 참여 청년 모집'),
            subtitle: const Text('[첨부파일] IMG_0333.JPG'),
            onTap: () {

            },
          ),
        ],
      ),
    );
  }
}