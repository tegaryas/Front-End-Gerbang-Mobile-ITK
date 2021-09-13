import 'package:flutter/material.dart';
import 'package:gerbang_mobile/constant.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';

Widget customAppBar(String title) {
  return AppBar(
    backgroundColor: primaryColor,
    title: CustomText(
      text: title,
      color: Colors.white,
      fontSize: 20,
    ),
    elevation: 0,
  );
}
