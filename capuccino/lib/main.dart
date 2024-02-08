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
  static const Color seashell = Color(0xFFFFF5EE);
  static const Color lightgray = Color(0xFFF9F9F9);

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
            SizeSection(title: "Size"),
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
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: "Sora",
                color: MyApp.black,
              ),
            ),
          ),
          RichText(
              text: TextSpan(
            children: [
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
            ],
          ))
        ],
      ),
    );
  }
}

class SizeSection extends StatelessWidget {
  const SizeSection({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4.0, 0.0, 4.0, 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:37.0, bottom:12.0),
            child: Text(title,
                style: 
                const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Sora",
                  color: MyApp.black,
                )
                ),
          ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizeButton(
                  borderColor:MyApp.grey, 
                  background: Colors.white, 
                  textColor: MyApp.black, 
                  boxtext: "S"),
                  SizeButton(
                  borderColor:MyApp.lightbrown, 
                  background: MyApp.seashell, 
                  textColor: MyApp.lightbrown, 
                  boxtext: "M"),
                  SizeButton(
                  borderColor:MyApp.grey, 
                  background: Colors.white, 
                  textColor: MyApp.black, 
                  boxtext: "L"),
                ],
              )
        ],
      ),
    );
  }
}

class SizeButton extends StatelessWidget {
  const SizeButton(
      {super.key,
      required this.borderColor,
      required this.background,
      required this.textColor,
      required this.boxtext});

  final Color borderColor;
  final Color background;
  final Color textColor;
  final String boxtext;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
        color: background,
        border: Border.all(color: borderColor, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          boxtext,
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
