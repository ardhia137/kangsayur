import 'package:flutter/material.dart';
import 'package:kangsayur/screen/loginPage.dart';
import 'package:kangsayur/theme.dart';
import 'package:kangsayur/widget/authButtonWidget.dart';
import 'package:kangsayur/widget/buttonWidget.dart';
import 'package:kangsayur/widget/clippathWidget.dart';

class StarterPage extends StatelessWidget {
  const StarterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   

    Widget content() {
      return Stack(
        children: [
          ClipPathWidget(color: secondaryColor2,),
          Container(
            margin: EdgeInsets.only(top: 36.87),
            child: Column(
              children: [
                Row(
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
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 70),
                  width: 272.62,
                  height: 239,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/image1.png'))),
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget logreg() {
      return Column(
        children: [
          ButtonWidget(
            borderColor: primaryColor,
            color: primaryColor,
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            text: Text(
              'Login',
              style:
                  whiteTextStyle.copyWith(fontWeight: semibold, fontSize: 18),
            ),
            margin: EdgeInsets.only(
                top: 77,
                left: defaultMarginVertical,
                right: defaultMarginVertical),
          ),
          ButtonWidget(
            borderColor: primaryColor,
            color: Colors.white,
            onPressed: () {},
            text: Text(
              'Register',
              style: secondaryTextStyle.copyWith(
                  fontWeight: semibold, fontSize: 18),
            ),
            margin: EdgeInsets.only(
                top: 18,
                left: defaultMarginVertical,
                right: defaultMarginVertical),
          )
        ],
      );
    }

    Widget pembatas() {
      return Container(
        margin: EdgeInsets.symmetric(
            horizontal: 29, vertical: defaultMarginVertical),
        child: Row(
          children: [
            const Expanded(
              child: Divider(
                // height: 20,
                thickness: 1,
                // indent: 20,
                // endIndent: 0,
                color: Color(0xff828282),
              ),
            ),
            const SizedBox(
              width: 10.6,
            ),
            Text(
              'Or login with',
              style: blackTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            const SizedBox(
              width: 10.6,
            ),
            const Expanded(
              child: Divider(
                // height: 20,
                thickness: 1,
                // indent: 20,
                // endIndent: 0,
                color: Color(0xff828282),
              ),
            ),
          ],
        ),
      );
    }

    Widget authLain() {
      return Container(
        // margin: EdgeInsets.symmetric(vertical: defaultMarginVertical),
        child: Column(
          children: [
            AuthButtonWidget(
                img: 'assets/google.png',
                margin: EdgeInsets.symmetric(horizontal: defaultMarginVertical),
                height: 40,
                borderColor: greyColor3,
                text: Text(
                  'Google',
                  style:
                      greyTextStyle.copyWith(fontWeight: medium, fontSize: 14),
                ),
                onPressed: () {},
                color: Colors.white),
            AuthButtonWidget(
                img: 'assets/facebook.png',
                margin: EdgeInsets.only(left: defaultMarginVertical,right: defaultMarginVertical,top: 9, bottom: 22),
                height: 40,
                borderColor: blueColor,
                text: Text(
                  'Facebook',
                  style:
                      whiteTextStyle.copyWith(fontWeight: medium, fontSize: 14),
                ),
                onPressed: () {},
                color: blueColor)
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: ListView(
            children: [content(), logreg(), pembatas(), authLain()],
          ),
        ),
      ),
    );
  }
}


