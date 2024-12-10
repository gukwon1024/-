import 'package:flutter/material.dart';

class Notice extends StatelessWidget {
  const Notice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 헤더 영역
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0),
                ),
              ),
              child: const Text(
                '알림',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Divider(height: 1.0, color: Colors.grey),

            // 알림 내용
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16.0),
                children: const [
                  ListTile(
                    leading: Icon(Icons.campaign, color: Colors.blue),
                    title: Text('실감콘텐츠기획'),
                    subtitle: Text('12월 11일 수업 휴강 안내. LMS에 영상 자료 시청 바랍니다.'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.campaign, color: Colors.blue),
                    title: Text('교육성과관리센터'),
                    subtitle: Text('[2024학년도 재학생 교육만족도조사] 동신대학교 재학생 모두 참여해 주시기 바랍니다.'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.campaign, color: Colors.blue),
                    title: Text('학사지원팀'),
                    subtitle: Text('학생이 수강하는 2024-2학기 "(DCS32-01)앱프로그래밍"의 중간시험 결과가 공개되었습니다.'),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: const EdgeInsets.all(15),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    '닫기',
                    style: TextStyle(fontSize: 16.0),
                  ),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
