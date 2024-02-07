import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const Color black = Color(0xFF2F2D2C);
  static const Color lightbrown = Color(0xFFC67C4E);
  static const Color yellow = Color(0xFFFBBE21);
  static const Color grey = Color(0xFF9B9B9B);

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
            ImageSection(image: "image/Rectangle.jpg"),
            DescriptionSection(
              title: " Description",
              firstSentence:
                  "A cappucino is an approximately 150ml (5 oz) beverage, with 25ml of expresso coffee and 85ml of fresh milk the fo..",
              secondSetence: 'Read More',
            ),
       
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
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: MyApp.black,
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
    return Center(
        child: Image.asset(
      image,
      scale: 0.9,
    ));
  }
}

class DescriptionSection extends StatelessWidget {
  const DescriptionSection(
      {super.key,
      required this.title,
      required this.firstSentence,
      required this.secondSetence});

  final String title;
  final String firstSentence;
  final String secondSetence;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Text(title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "Sora",
              color: MyApp.black,
            ),),
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: firstSentence,
               style: const TextStyle(
            fontFamily: "Sora",
            color: MyApp.grey,
            letterSpacing: 1.5,
          ),
            ),
            TextSpan(
                text: secondSetence,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                   fontFamily: "Sora",
                   color: MyApp.lightbrown,
                   letterSpacing: 1.5,
                ))
          ], ))
        ],
      ),
    );
  }
}


