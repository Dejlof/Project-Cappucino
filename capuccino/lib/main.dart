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
      title: 'Capuccino',
      theme: ThemeData(primaryColor: Colors.white),
      debugShowCheckedModeBanner: false,
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
        elevation: 0,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ImageSection(image: "image/Rectangle.jpg"),
            MenuSection(
              menuWord: 'Cappucino',
              addOns: 'with Chocolate',
              rating: '4.8',
              ratingPeople: '(230)',
              menuIconOne: 'image/bean.jpg',
              menuIconTwo: 'image/milk.jpg',
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.0, right: 40.0),
              child: Divider(
                color: Color.fromARGB(255, 228, 221, 221),
                thickness: 1.0,
              ),
            ),
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
    return Row(
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
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Image.asset(
        image,
        scale: 0.9,
      ),
    ));
  }
}

class MenuSection extends StatelessWidget {
  const MenuSection(
      {super.key,
      required this.menuWord,
      required this.addOns,
      required this.rating,
      required this.ratingPeople,
      required this.menuIconOne,
      required this.menuIconTwo});

  final String menuWord;
  final String addOns;
  final String rating;
  final String ratingPeople;
  final String menuIconOne;
  final String menuIconTwo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 30.0, left: 40.0, right: 40.0, bottom: 10.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  menuWord,
                  style: const TextStyle(
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Sora",
                    color: MyApp.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 8.0),
                  child: Text(
                    addOns,
                    style: const TextStyle(
                      fontFamily: "Sora",
                      color: MyApp.grey,
                      fontSize: 13.0,
                    ),
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: MyApp.yellow,
                    ),
                    const SizedBox(width: 2.0),
                    Text(
                      rating,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Sora",
                        color: MyApp.black,
                      ),
                    ),
                    const SizedBox(width: 3.0),
                    Text(
                      ratingPeople,
                      style: const TextStyle(
                        fontFamily: "Sora",
                        color: MyApp.grey,
                        fontSize: 13.0,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: MyApp.lightgray,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(menuIconOne),
                ),
                const SizedBox(width: 10.0),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: MyApp.lightgray,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(menuIconTwo),
                )
              ],
            ),
          ),
        ],
      ),
    );
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
      padding: const EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 40.0),
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
      padding: const EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0.0, bottom: 12.0),
            child: Text(title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Sora",
                  color: MyApp.black,
                )),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizeButton(
                borderColor: MyApp.grey,
                background: Colors.white,
                textColor: MyApp.black,
                boxtext: "S",
                width: 100.0,
                height: 40.0,
              ),
              SizeButton(
                borderColor: MyApp.lightbrown,
                background: MyApp.seashell,
                textColor: MyApp.lightbrown,
                boxtext: "M",
                width: 100.0,
                height: 40.0,
              ),
              SizeButton(
                borderColor: MyApp.grey,
                background: Colors.white,
                textColor: MyApp.black,
                boxtext: "L",
                width: 100.0,
                height: 40.0,
              ),
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
      required this.boxtext,
      required this.height,
      required this.width});

  final Color borderColor;
  final Color background;
  final Color textColor;
  final String boxtext;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: background,
              foregroundColor: textColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: borderColor))),
          child: Text(boxtext)),
    );
  }
}

