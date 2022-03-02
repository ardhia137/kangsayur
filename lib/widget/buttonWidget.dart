import 'package:flutter/material.dart';
import 'package:kangsayur/theme.dart';

class ButtonWidget extends StatelessWidget {
  final Text text;
  final EdgeInsets margin;
  final double height;
  final Color color;
  final Color borderColor;
  final Function() onPressed;
  const ButtonWidget({ Key? key,required this.borderColor,required this.text, this.height=54,required this.onPressed,required this.color,this.margin = EdgeInsets.zero }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Container(
            margin: margin,
            // padding: const EdgeInsets.symmetric(vertical: 16),
            height: height,
            width: double.infinity,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1.5, color: borderColor)
            ),
            child: TextButton(
              onPressed: onPressed,
              child: text
            ),
          );
  }
}