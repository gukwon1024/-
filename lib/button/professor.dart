import 'package:flutter/material.dart';

class Professor extends StatefulWidget {
  @override
  _ProfessorState createState() => _ProfessorState();
}

class _ProfessorState extends State<Professor>{
  final List<Map<String, String>> professors = [
    {
      'name': '허기택',
      'subjects': '실감콘텐츠개론, 운영체제',
      'office': '대정1관 303호',
      'phone': '061-330-3351',
      'email': 'gthur@dsu.ac.kr',
      'degree': '이학박사',
      'image': 'assets/images/kitaek.png' // 임시 이미지
    },
    {
      'name': '주낙근',
      'subjects': '자료구조, 임베디드시스템',
      'office': '대정1관 403호',
      'phone': '061-330-3355',
      'email': 'nkjoo@dsu.ac.kr',
      'degree': '이학박사',
      'image': 'assets/images/nakgeon.png'
    },
    {
      'name': '최효승',
      'subjects': '비주얼스토리텔링, UX/UI 디자인',
      'office': '대정1관 401호',
      'phone': '061-330-3458',
      'email': 'design@dsu.ac.kr',
      'degree': '이학박사',
      'image': 'assets/images/hyuseong.png'
    },
    {
      'name': '김은석',
      'subjects': '컴퓨터그래픽스, VR콘텐츠제작',
      'office': '대정1관 302호',
      'phone': '061-330-3456',
      'email': 'eskim@dsu.ac.kr',
      'degree': '이학박사',
      'image': 'assets/images/eunseok.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: const Text('교수진 소개'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // 왼쪽 화살표 아이콘
          onPressed: () {
            Navigator.pop(context); // 이전 화면으로 돌아가기
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2열로 배치
            crossAxisSpacing: 8, // 가로 간격
            mainAxisSpacing: 8,
            childAspectRatio: 0.92// 세로 간격
          ),
          itemCount: professors.length,
          itemBuilder: (context, index) {
            final professor = professors[index];
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16), // 모서리 둥글게
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // 그림자 위치
                  ),
                ],
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8), // 이미지 모서리 둥글게
                    child: Image.network(
                      professor['image']!,
                      width: 60,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    professor['name']!,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text('담당과목: ${professor['subjects']}'),
                  Text('연구실: ${professor['office']}'),
                  Text('연락처: ${professor['phone']}'),
                  Text('이메일: ${professor['email']}'),
                  Text('소개: ${professor['degree']}'),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
