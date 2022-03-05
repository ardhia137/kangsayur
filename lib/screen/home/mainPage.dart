import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kangsayur/theme.dart';
import 'package:kangsayur/widget/clippathWidget.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
    final CarouselController _controller = CarouselController();
    int curentIndex = 0;
    List containt = [
      'assets/promo.png',
      'assets/promo.png',
      'assets/promo.png',
    ];
  @override
  Widget build(BuildContext context) {
    // print(curentIndex);

    Widget bottomnav() {
      return Container(
        height: 86,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: const [
            BoxShadow(
                color: Color(0xffEFEFEF), spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              items: [
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Image.asset(
                        'assets/home.png',
                        width: 29,
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Image.asset(
                        'assets/favorit.png',
                        width: 30,
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Image.asset(
                        'assets/cart.png',
                        width: 29,
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Image.asset(
                        'assets/account.png',
                        width: 29,
                      ),
                    ),
                    label: ''),
              ]),
        ),
      );
    }

     Widget indicator(){
      return  Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: containt.asMap().entries.map((entry) {
                // print(entry.key);
                return Container(
                  width: curentIndex != entry.key ? 8.0 : 29,
                  height: 8.0,
                  margin:
                      EdgeInsets.symmetric( horizontal: 4.0),
                  decoration: BoxDecoration(
                      // shape: BoxShape.circle,
                      borderRadius: BorderRadius.circular(100),
                      color: curentIndex != entry.key ? Color(0xffbdbdbd):Color(0xff51BC7D)),
                );
              }).toList());
                
    }

    Widget clippath() {
      return CustomPaint(
        painter: Shapes(),
        child: Container(height: 273),
      );
    }

    Widget header() {
      return Stack(
        children: [
          clippath(),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Kangsayur',
                      style: headerTextStyle.copyWith(
                          fontSize: 16.32, fontWeight: semibold),
                    ),
                    Image.asset(
                      'assets/wortel.png',
                      width: 16.32,
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 253,
                      // height: 36,
                      margin: EdgeInsets.only(top: 14),
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/search.png',
                            width: 20,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Text(
                              'Search for fruits, vegetables,groce...',
                              style: greyTextStyle2.copyWith(fontSize: 12),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset(
                        'assets/message.png',
                        width: 26,
                      ),
                    ),
                    //  const SizedBox(width: 15,),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset(
                        'assets/notification.png',
                        width: 26,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 19),
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      'assets/location.png',
                      width: 16,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text('Sent to',
                        style: whiteTextStyle.copyWith(fontSize: 12)),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        child: Text(
                      'Pamulang Barat Residence No.5, RT 05 / RW 9 ...',
                      style: whiteTextStyle.copyWith(
                          fontSize: 12, fontWeight: semibold),
                      overflow: TextOverflow.ellipsis,
                    )),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      size: 20,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:16,left: 20,right: 20),
                child: CarouselSlider(
                  carouselController: _controller,
                  options: CarouselOptions(
                      enableInfiniteScroll: false,
                      // height: 100,
                      // aspectRatio: 16/9,
                      disableCenter: true,
                      
                      viewportFraction: 1.11,
                      enlargeCenterPage: true,
                      initialPage: 0,
                      onPageChanged: (index, reason) {
                        print(index);
                        setState(() {
                          curentIndex = index;
                          // index = curentIndex;
                        });
                      }),
                  items: containt
                      .map((item) =>
                      Container(
                        margin: EdgeInsets.only(left: 15,right: 10),
                        decoration: BoxDecoration(
                          // color: Colors.red,
                          image: DecorationImage(image: AssetImage(item),fit: BoxFit.cover)
                        ),
                      )
                      )
                      .toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20.0),
                child: indicator(),
              )
            ],
          )
        ],
      );
    }

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: bottomnav(),
      body: ListView(
        children: [header()],
      ),
    ));
  }
}

const double _kCurveHeight = 35;

class Shapes extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final p = Path();
    p.lineTo(0, size.height - _kCurveHeight);
    p.relativeQuadraticBezierTo(
        size.width / 1.7, 1 * _kCurveHeight, size.width, 0);
    p.lineTo(size.width, 0);
    p.close();

    canvas.drawPath(p, Paint()..color = primaryColor);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
