import 'package:flutter/material.dart';

void main() {
  runApp(const Tb());
}

class Tb extends StatelessWidget {
  const Tb({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
        leading: const Text('학과 정보 알아보기', style: TextStyle(fontSize: 25,fontWeight: FontWeight.normal),),
        leadingWidth: 200,
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: '교과과정'),
            Tab(text: '입학 정보'),
            Tab(text: '장학금 안내'),
            Tab(text: '취업 현황'),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: TabBarView(
          controller: _tabController,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 10),
                            width: 130,
                            height: 160,
                            child: Image.asset('assets/images/2024.png', fit: BoxFit.fill,),
                          ),
                          const Text('2024학년도 교과과정', style: TextStyle(fontSize: 13),)
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 10),
                            width: 130,
                            height: 160,
                            child: Image.asset('assets/images/2023.png', fit: BoxFit.fill,),
                          ),
                          const Text('2023학년도 교과과정', style: TextStyle(fontSize: 13),)
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 10),
                            width: 130,
                            height: 160,
                            child: Image.asset('assets/images/2022.png', fit: BoxFit.fill,),
                          ),
                          const Text('2022학년도 교과과정', style: TextStyle(fontSize: 13),)
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 10),
                            width: 130,
                            height: 160,
                            child: Image.asset('assets/images/2021.png', fit: BoxFit.fill,),
                          ),
                          const Text('2021학년도 교과과정', style: TextStyle(fontSize: 13),)
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 10),
                            width: 130,
                            height: 160,
                            child: Image.asset('assets/images/2020.png', fit: BoxFit.fill,),
                          ),
                          Text('2020학년도 교과과정', style: TextStyle(fontSize: 13),)
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 10),
                            width: 130,
                            height: 160,
                            child: Image.asset('assets/images/2019.png', fit: BoxFit.fill,),
                          ),
                          const Text('2019학년도 교과과정', style: TextStyle(fontSize: 13),)
                        ],
                      ),
                    ],
                  ),
                ]
              ),
            ),
            Image.asset('assets/images/enter.png'),
            SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/pay1.png',
                    width: double.infinity,
                    height: 700,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/pay2.png',
                    width: double.infinity,
                    height: 700,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/pay3.png',
                    width: double.infinity,
                    height: 700,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/pay4.png',
                    width: double.infinity,
                    height: 700,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/pay5.png',
                    width: double.infinity,
                    height: 700,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: SizedBox(
                width: 520,
                height: 950,
                child: Image.asset('assets/images/job.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
