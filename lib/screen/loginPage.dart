import 'package:flutter/material.dart';
import 'package:kangsayur/theme.dart';
import 'package:kangsayur/widget/buttonWidget.dart';
import 'package:kangsayur/widget/clippathWidget.dart';
import 'package:kangsayur/widget/textFieldWidget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Stack(
        children: [
          ClipPathWidget(color: secondaryColor2),
          Container(
            margin: const EdgeInsets.only(top: 17,),
              child: IconButton(
                icon: const Icon(
                          Icons.arrow_back_ios_new_outlined,
                          color: Colors.white,
                          size: 24,
                        ),
                        onPressed: (){
                          Navigator.pop(context);
                        },
              )),
          Container(
            margin: EdgeInsets.only(top: 70,left: defaultMarginVertical,right: defaultMarginVertical),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Login",style: whiteTextStyle.copyWith(fontWeight: bold,fontSize: 34),),
                Image.asset('assets/image2.png',width: 158.34,)
              ],
            ),
          )
        ],
      );
    }

    Widget content(){
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultMarginVertical),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextFieldWidget(title: 'email', hintTitle: 'yourmail@mail.com'),
            const TextFieldWidget(title: 'password', hintTitle: 'your password',obsecureText: true, margin: EdgeInsets.only(top: 18),),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.only(top: 6),
                child: Text('Forgot Password',style: secondaryTextStyle2.copyWith(
                  fontSize: 10
                ),),
              ),
            ),
            ButtonWidget(borderColor: primaryColor, text: Text('Login',style: whiteTextStyle.copyWith(fontWeight: semibold,fontSize: 18),), onPressed: (){}, color: primaryColor, margin: EdgeInsets.only(top: 18, bottom: 25),),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not have an account?',style: secondaryTextStyle2.copyWith(fontSize: 12),),
                  const SizedBox(width: 4,),
                  Text('Register',style: secondaryTextStyle2.copyWith(fontSize: 12, fontWeight: bold),),
                ],
              ),
            )
          ],
        ),
      );
    }
    
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [header(),content()],
        ),
      ),
    );
  }
}
