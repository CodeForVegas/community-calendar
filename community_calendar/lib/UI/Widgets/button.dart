import 'package:community_calendar/constants.dart';
import 'package:flutter/material.dart';


class CFVButton extends StatelessWidget {
  CFVButton(
      {Key? key,
      required this.text,
      this.onpressed,
      this.color,
      this.textColor,
      this.fontSize = 18,
      this.fontWeight = FontWeight.w600,
      this.elevation = 5,
      this.radius = 5})
      : super(key: key);

  String text;
  Function()? onpressed;
  Color? color;
  Color? textColor;
  double fontSize;
  FontWeight fontWeight;
  double elevation;
  double radius;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpressed,
      child: Material(
        elevation: elevation,
        borderRadius: BorderRadius.circular(radius),
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Container(
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(radius),
              ),
              child: Constants.heading(
                  text: text,
                  fontSize: fontSize,
                  color: textColor ?? Colors.black,
                  weight: fontWeight)),
        ),
      ),
    );
  }
}
