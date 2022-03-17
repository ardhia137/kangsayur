import 'package:flutter/material.dart';
import 'package:kangsayur/theme.dart';

class ProductWidget extends StatelessWidget {
  final String img;
  final String text;
  const ProductWidget({Key? key,required this.img, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      margin: EdgeInsets.only(right: 12),
      child: Card(
        elevation: 4, // Change this
        shadowColor: Colors.black26,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(img),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 31.28,
                    height: 30.7,
                    margin: EdgeInsets.all(6),
                    padding: EdgeInsets.all(3.5),
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.56),
                        borderRadius: BorderRadius.circular(8.69)),
                    child: Image.asset(
                      'assets/favorit.png',
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 7, left: 12),
              child: Text(
                text,
                style: blackTextStyle.copyWith(fontWeight: semibold),
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 12, top: 7),
                child: Row(
                  children: [
                    Text(
                      "Rp 10,000",
                      style: primaryTextStyle.copyWith(
                          fontWeight: bold, fontSize: 13),
                    ),
                    Text(
                      "/ 1 pack",
                      style: greyTextStyle.copyWith(fontSize: 10),
                    ),
                  ],
                )),
            Container(
              margin: EdgeInsets.only(top: 7, left: 12),
              child: Text(
                "Rp 12,000",
                style: greyTextStyle2.copyWith(
                    fontWeight: medium,
                    fontSize: 11,
                    decoration: TextDecoration.lineThrough),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  margin: EdgeInsets.only(top: 5, right: 10),
                  child: Image.asset(
                    'assets/add.png',
                    width: 28,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
