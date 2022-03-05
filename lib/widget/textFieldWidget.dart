import 'package:flutter/material.dart';
import 'package:kangsayur/theme.dart';

class TextFieldWidget extends StatefulWidget {
  final EdgeInsets margin;
  final String title;
  final String hintTitle;
  final bool obsecureText;
  const TextFieldWidget({Key? key,this.margin=EdgeInsets.zero,required this.title,required this.hintTitle,this.obsecureText=false}) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: blackTextStyle.copyWith(fontWeight: medium, fontSize: 14),
          ),
          Container(
              margin: EdgeInsets.only(top: 7),
              padding: EdgeInsets.symmetric(horizontal: defaultMarginVertical),
              height: 46,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: greyColor4, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: TextFormField(
                  //   keyboardType: keyboard,
                  obscureText: widget.obsecureText == true ? _isObscure :!_isObscure,
                  style: blackTextStyle,
                  // controller: controller,

                  decoration: InputDecoration(
                    hintText: widget.hintTitle,
                    suffixIcon: widget.obsecureText ?
                    IconButton(
                      icon: Icon(
                        _isObscure ? Icons.visibility_off : Icons.visibility,
                        color: greyColor3,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ):SizedBox(),
                    border: InputBorder.none,
                    hintStyle: greyTextStyle2.copyWith(
                      fontSize: 14,
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
