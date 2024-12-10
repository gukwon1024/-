import 'package:flutter/material.dart';
import 'package:gwproject/button/professor.dart';
import 'package:gwproject/button/future.dart';
import 'package:gwproject/button/career.dart';
import 'package:gwproject/button/lab.dart';



class Btn extends StatelessWidget {
  const Btn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Professor()));
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/1.png',
                width: 50, // 이미지 크기
                height: 50,
              ),
              const SizedBox(height: 8),
              const Text(
                '교수진 소개', // 라벨 텍스트
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Future()));
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/2.png',
                width: 50, // 이미지 크기
                height: 50,
              ),
              const SizedBox(height: 8),
              const Text(
                '학과 비전', // 라벨 텍스트
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Lab()),
            );
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/3.png',
                width: 50, // 이미지 크기
                height: 50,
              ),
              const SizedBox(height: 8),
              const Text(
                '학과 실습실', // 라벨 텍스트
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CourseScreen()),
            );
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/4.png',
                width: 50, // 이미지 크기
                height: 50,
              ),
              const SizedBox(height: 8),
              const Text(
                '전공 자격증', // 라벨 텍스트
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
