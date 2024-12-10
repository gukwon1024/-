import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  void _launchInstagram() async {
    const url = 'https://www.instagram.com/dsu_contents/';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchYoutube() async {
    const url = 'https://www.youtube.com/@dicon_dsu';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20,top: 20,right: 20),
      width: 520,
      height: 170,
      color: Colors.blueGrey,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                alignment: Alignment.topLeft,
                width: 200,
                height: 28,
                child: Image.asset('assets/images/dicon.png'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  '개인정보처리방침',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
              const Text('ㅣ', style: TextStyle(color: Colors.white, fontSize: 10)),
              TextButton(
                onPressed: () {},
                child: const Text(
                  '고객문의',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
              const Text('ㅣ', style: TextStyle(color: Colors.white, fontSize: 10)),
              TextButton(
                onPressed: () {},
                child: const Text(
                  '홈페이지 수정요청',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                width: 240,
                height: 100,
                child: SizedBox(
                  width: 240,
                  height: 60,
                  child: Column(
                    children: [
                      SizedBox(//문제없
                        width: 260,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Icon(
                                Icons.place,
                                color: Colors.blue[200],
                                size: 17,
                              ),
                            ),
                            Container( //문제없
                              padding: const EdgeInsets.only(left: 3),
                              child: const Column(
                                children: [
                                  Text(
                                    '(58245) 전라남도 나주시 동신대길 85 (대호동)',
                                    style:
                                    TextStyle(fontSize: 10, color: Colors.white),
                                  ),
                                  Text(
                                    '대정1관 304-B호 디지털콘텐츠학과                ',
                                    style:
                                    TextStyle(fontSize: 10, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 5),
                        width: 240,
                        height: 20,
                        child: const Text(
                          'TEL : 061-330-3451   FAX : 061-330-3452',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        )
                      )
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                width: 240,
                height: 100,
                child: SizedBox(
                  width: 100,
                  height: 50,
                  child: Row(
                    children: [
                      SizedBox(
                        child: GestureDetector(
                          onTap: _launchInstagram,
                          child: Image.asset(
                            'assets/images/insta.webp',
                            height: 36,
                            width: 36,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        child: GestureDetector(
                          onTap: _launchYoutube,
                          child: Image.asset(
                            'assets/images/ytube.png',
                            height: 40,
                            width: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
