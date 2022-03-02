import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kangsayur/theme.dart';
import 'package:kangsayur/widget/buttonWidget.dart';
import 'package:kangsayur/widget/clippathWidget.dart';

class GetStarterPage extends StatefulWidget {
  const GetStarterPage({Key? key}) : super(key: key);

  @override
  _GetStarterPageState createState() => _GetStarterPageState();
}

class _GetStarterPageState extends State<GetStarterPage> {
  int curentIndex = 0;
  List<dynamic> containt = [
    {
      'image': 'assets/image1.png',
      'title': 'Kangsayur is a solution for Grocery Shopping every you need'
    },
    {
      'image': 'assets/image4.png',
      'title': 'Kangsayur is a solution for Grocery Shopping every you need'
    }
  ];
  // List containt = [
  //   'assets/image1.png',
  //   'assets/image1.png',
  // ];
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    Widget indicator(){
      return  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: containt.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 8.0,
                    height: 8.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: curentIndex == entry.key ? Color(0xffbdbdbd):Colors.white),
                  ),
                );
              }).toList());
    }

    Widget button() {
      return ButtonWidget(
        borderColor: Colors.white,
        text: Text(
          'Get Started',
          style: primaryTextStyle.copyWith(fontWeight: semibold, fontSize: 18),
        ),
        onPressed: () => Navigator.pushNamed(context, '/strterpage'),
        color: Colors.white,
        margin: EdgeInsets.only(top: 588, left: 20, right: 20),
      );
    }

    Widget header() {
      return Stack(
        children: [
          ClipPathWidget(color: secondaryColor2),
          Container(
            margin: EdgeInsets.only(top: 36.87),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Kangsayur',
                  style: headerTextStyle.copyWith(
                      fontSize: 28.04, fontWeight: semibold),
                ),
                Image.asset(
                  'assets/wortel.png',
                  width: 28.04,
                ),
              ],
            ),
          ),
          CarouselSlider(
            carouselController: _controller,
            options: CarouselOptions(
                height: 558,
                // disableCenter: true,
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                initialPage: 0,
                onPageChanged: (index, reason) {
                  setState(() {
                    curentIndex = index;
                    // index = curentIndex;
                  });
                }),
            items: containt
                .map((item) => Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 130),
                          child: Center(
                              child: Image.asset(
                            item['image'],
                            height: 290,
                          )),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 68),
                          padding: EdgeInsets.symmetric(horizontal: 33),
                          child: Text(
                            item['title'],
                            style: whiteTextStyle.copyWith(
                              fontWeight: medium,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ))
                .toList(),
            // indicator()
          ),
          button(),
          SizedBox(
            height: 400,
          ),
        ],
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        body: ListView(
          children: [
            header(),
            const SizedBox(
              height: 28,
            ),
           indicator()
          ],
        ),
      ),
    );
  }
}
