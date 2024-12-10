import 'package:flutter/material.dart';

class Future extends StatefulWidget {
  @override
  _FutureState createState() => _FutureState();
}


class _FutureState extends State<Future>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('학과 비전'),
        backgroundColor: Colors.blue[300],
      ),
      body: SingleChildScrollView(
        child: Image.asset('assets/images/meca.png'),
      )
    );
  }
}