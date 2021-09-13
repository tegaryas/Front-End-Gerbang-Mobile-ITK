import 'package:flutter/material.dart';
import 'package:gerbang_mobile/constant.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';

class BuildHeader extends StatelessWidget {
  final String title;
  const BuildHeader({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        15,
      ),
      decoration: BoxDecoration(
        color: primaryColor,
      ),
      child: CustomText(
        text: title,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    );
  }
}
