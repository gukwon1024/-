import 'package:flutter/material.dart';
import 'package:gwproject/main.dart';

class Lab extends StatefulWidget {
  @override
  _LabState createState() => _LabState();
}

class _LabState extends State<Lab> {
  final List<Map<String, String>> items = [
    {
      'title': '멀티미디어실습실',
      'description': '3D 애니메이션, VR콘텐츠 제작 등 고품질 콘텐츠 제작 실습 과목에 활용\n위치: 대정 1관 308호',
      'image': 'assets/images/multi.png', // 예시 이미지
    },
    {
      'title': '디지털콘텐츠제작실습실',
      'description': '캡스톤 디자인, 4D콘텐츠 제작 등 프로젝트 중심의 실습 과목에 활용\n위치: 대정 1관 405호',
      'image': 'assets/images/digital.png',
    },
    {
      'title': '소프트웨어개발실습실',
      'description': '소프트웨어 및 앱 개발 실습 과목에 활용\n위치: 대정 1관 406호',
      'image': 'assets/images/soft.png',
    },
    {
      'title': '정보보호실습실',
      'description': '기초 프로그래밍, 네트워크 및 리눅스 등 시스템 관련 과목 실습에 활용\n위치: 대정 1관 408호',
      'image': 'assets/images/info.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: const Text('학과 실습실'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // 왼쪽 화살표 아이콘
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(item: item),
                ),
              );
            },
            child: Card(
              child: Row(
                children: [
                  Image.network(
                    item['image']!,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 16),
                  Text(
                    item['title']!,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final Map<String, String> item;

  DetailPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item['title']!),
        backgroundColor: Colors.blue[300],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              item['image']!,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Text(
              item['title']!,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              item['description']!,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
