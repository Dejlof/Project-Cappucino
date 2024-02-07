import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: const MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarComponent(
            navIconOne: "image/arrow-left.jpg",
            navIconTwo: "image/Heart.jpg",
            titleMain: "Detail"),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ImageSection(image:"image/Rectangle.jpg")
          ],
        ),
      ),
    );
  }
}

class AppBarComponent extends StatelessWidget {
  const AppBarComponent(
      {super.key,
      required this.navIconOne,
      required this.navIconTwo,
      required this.titleMain});

  final String navIconOne;
  final String navIconTwo;
  final String titleMain;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Image.asset(
              navIconOne,
            ),
          ),
          Text(
            titleMain,
            style: const TextStyle(
              fontFamily: "Sora",
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Image.asset(
              navIconTwo,
            ),
          ),
        ],
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset(image));
  }
}
