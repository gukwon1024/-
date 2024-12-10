import 'package:flutter/material.dart';

class CourseScreen extends StatefulWidget {
  @override
  _CourseScreenState createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  // 카테고리와 서브타이틀 데이터
  final List<Map<String, dynamic>> categories = [
    {
      'title': '컴퓨터 운용관련',
      'subtitles': ['정보처리기사'],
      'expanded': false,
    },
    {
      'title': '게임 및 그래픽 관련',
      'subtitles': ['컴퓨터그래픽 운용 기능사', 'ACA', '게임 프로그래밍 전문가', '게임그래픽 전문가'],
      'expanded': false,
    },
    {
      'title': '각종 국내외 공인자격증',
      'subtitles': ['Oracle', 'Microsoft', 'Java', 'Linux', 'TOPCIT 등'],
      'expanded': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: const Text('전공 자격증'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // 왼쪽 화살표 아이콘
          onPressed: () {
            Navigator.pop(context); // 이전 화면으로 돌아가기
          },
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      category['expanded'] = !category['expanded'];
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 48),
                  ),
                  child: Text(
                    category['title'],
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                AnimatedSize(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  child: category['expanded']
                      ? Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: category['subtitles']
                          .map<Widget>((subtitle) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          '- $subtitle',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ))
                          .toList(),
                    ),
                  )
                      : const SizedBox.shrink(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
