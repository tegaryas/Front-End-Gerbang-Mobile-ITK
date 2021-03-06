import 'package:flutter/material.dart';
import '../../constant.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;

  final Color color;
  final Color textColor;
  final Function onPress;
  final Color borderColor;
  final double width;
  final double padding;

  CustomButton({
    @required this.onPress,
    this.text = 'Write text ',
    this.color = primaryColor,
    this.textColor = Colors.white,
    this.borderColor = Colors.transparent,
    this.width = 0,
    this.padding = 18,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return FlatButton(
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(6.0),
        side: BorderSide(
          color: borderColor,
          width: width,
        ),
      ),
      padding: EdgeInsets.all(padding),
      onPressed: onPress,
      color: color,
      child: CustomText(
        alignment: Alignment.center,
        text: text,
        color: textColor,
      ),
    );
  }
}
