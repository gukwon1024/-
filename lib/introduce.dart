import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const Introduce());

class Introduce extends StatelessWidget {
  const Introduce({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CarouselPage(),
    );
  }
}

class CarouselPage extends StatefulWidget {
  @override
  _CarouselPageState createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  final List<String> images = [
    'assets/images/mov1.png',
    'assets/images/mov2.png',
    'assets/images/mov3.png',
    'assets/images/mov4.png',
  ];

  final List<String> descriptions = [
    '영상 편집을 하고 싶다면 : 동신대 디지털콘텐츠학과',
    '디지털콘텐츠학과의 궁금증을 열어줘',
    '디지털콘텐츠학과 홍보영상',
    '디지털콘텐츠학과 소개영상',
  ];

  final List<String> youtubeLinks = [
    'https://youtu.be/WqhupNSMKRk',
    'https://youtu.be/xTP20nxuZMc',
    'https://youtu.be/-LlN6o_gajU',
    'https://youtu.be/RJnaZMUnLHk',
  ];

  int currentIndex = 0;

  void _goToNext() {
    setState(() {
      currentIndex = (currentIndex + 1) % images.length;
    });
  }

  void _goToPrevious() {
    setState(() {
      currentIndex = (currentIndex - 1 + images.length) % images.length;
    });
  }

  Future<void> _launchYoutube(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 520,
        height: 230,
        child: Stack(
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return FadeTransition(opacity: animation, child: child);
              },
              child: Container(
                key: ValueKey<int>(currentIndex), // 각 이미지에 고유 키 부여
                margin: const EdgeInsets.only(left: 60),
                width: 400,
                height: 230,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 5,
                    )
                  ],
                  color: Colors.white,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    images[currentIndex],
                    width: 400,
                    height: 230,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 520,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: _goToPrevious,
                      icon: const Icon(Icons.chevron_left_outlined, size: 40, color: Colors.black87),
                    ),
                    IconButton(
                      onPressed: () => _launchYoutube(youtubeLinks[currentIndex]),
                      icon: GestureDetector(
                        child: Image.asset(
                          'assets/images/ytube.png',
                          scale: 10,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: _goToNext,
                      icon: const Icon(Icons.chevron_right_outlined, size: 40, color: Colors.black87),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
