import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gwproject/bottom.dart';
import 'package:gwproject/topMain.dart';
import 'menu/menu.dart';
import 'package:gwproject/tab.dart';
import 'package:gwproject/notice.dart';
import 'package:gwproject/introduce.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'HOME'),
      debugShowCheckedModeBanner: false
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<String> imgList = [
    'assets/images/main1.jpg',
    'assets/images/main2.jpg',
    'assets/images/main3.jpg',
    'assets/images/main4.jpg',
  ];

  final TextEditingController _searchController = TextEditingController();
  String _searchText = "";

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(62), // AppBar 높이 설정
        child: AppBar(
          leadingWidth: 180,
          backgroundColor: Colors.blue[300],
          excludeHeaderSemantics: true,
          leading: Container(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Image.asset('assets/images/dicon2.png', scale: 4),
          ),
          actions: [
            Container(
              width: 112,
              padding: const EdgeInsets.only(right: 8,top: 4),
              child: Row(
                children: [
                  IconButton(
                    onPressed: (){
                      showDialog(
                        context: context,
                        builder: (context) => const Notice(),
                      );
                    },
                    icon: const Icon(Icons.notifications_outlined,size: 35),
                    color: Colors.black87,
                  ),
                  IconButton(
                    onPressed: () {
                      _scaffoldKey.currentState?.openEndDrawer();
                    },
                    icon: const Icon(Icons.menu,size: 35,),
                    color: Colors.black87,
                  ),
                ],
              )
            ),
          ],
        ),
      ),
      endDrawer: const Menu(),
      body: SingleChildScrollView(
        child: SizedBox(
          width: 520,
          height: 1972.8,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 80),
                    color: Colors.blue[300],
                    alignment: Alignment.center,
                    width: 520,
                    height: 160,
                    child: SizedBox(
                      width: 400,
                      height: 50,
                      child: SearchBar(
                        hintText: "검색어를 입력하세요",
                        controller: _searchController,
                        onChanged: (value) {
                          setState(() {
                            _searchText = value;
                          });
                        },
                        trailing: [
                          IconButton(
                            icon: const Icon(Icons.keyboard_voice),
                            onPressed: () {
                              print('음성 검색 기능');
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.search),
                            onPressed: () {
                              print('이미지 검색 기능');
                            },
                          ),
                        ],
                      ),
                    )
                  ),
                  Container(
                    padding: const EdgeInsets.only(top:23),
                    width: 520,
                    height: 320,
                    child: Stack(
                      children: [
                        CarouselSlider(
                          items: imgList.map((e) => Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(23),
                              child: AspectRatio(
                                aspectRatio: 19/7,
                                child: Image.asset(
                                  e,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )).toList(),
                          options: CarouselOptions(
                            initialPage: 0,
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 4),
                            enlargeCenterPage: true,
                            onPageChanged: (value, _) {
                              setState(() {
                                _currentPage = value;
                              });
                            },
                          ),
                        ),
                        Center(
                          child: Container(
                            width: 200,
                            height: 200,
                            alignment: Alignment.bottomCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                imgList.length,
                                    (index) => AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  width: _currentPage == index ? 35.0 : 12.0,
                                  height: 6.0,
                                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                                  decoration: BoxDecoration(
                                    color: _currentPage == index
                                        ? Colors.blue
                                        : Colors.grey,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(left: 50, right: 50),
                width: 520,
                height: 170,
                child: const Btn()
              ),
              const SizedBox(height: 50),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                width: 220,
                height: 0.7,
                color: Colors.black,
              ),
              const Column(
                children: [
                  Text('INTRODUCE', style: TextStyle(fontSize: 30),),
                  Text('디지털콘텐츠학과를 소개합니다', style: TextStyle(fontSize: 12.5, color: Colors.black45),),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 30, top: 60),
                width: 520,
                height: 300,
                color: Colors.black12,
                child: const Introduce(),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                height: 800,
                width: 520,
                child: const Tb(),
              ),
              const Bottom(),
            ],
          )
        ),
      ),
    );
  }
}
