import 'package:flutter/material.dart';

class Qna extends StatelessWidget {
  const Qna({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Q&A'),
        backgroundColor: Colors.blue[300],
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('편입 방법'),
            subtitle: const Text('동신대 다른학과에 재학중인 3학년 학생입니다. 디지털콘텐츠학과로 편입할까 고민중인데 편입가능하다면 어떻게 해야 하나요?'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('졸업하신 선배님들에 대해'),
            subtitle: const Text('디지털콘텐츠학과에서 졸업하신 선배님들의 업적을 알고 싶어요. 졸업 후 어떤 곳에 취업했는지, 창업했는지 알려주세요!'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('면접'),
            subtitle: const Text('면접 질문은 따로 공개되지 않나요?'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('입학'),
            subtitle: const Row(
              children: [
                Icon(Icons.lock, size: 15,),
                Text('비밀글입니다.')
              ],
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}