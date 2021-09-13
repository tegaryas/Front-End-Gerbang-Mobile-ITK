import 'package:flutter/material.dart';
import 'package:gerbang_mobile/constant.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';

class PembayaranWisudaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: CustomText(
          text: 'Pembayaran Wisuda',
          fontSize: 20,
          color: Colors.white,
        ),
      ),
      body: Center(
        child: CustomText(
          text: 'Belum Semester 8',
          fontSize: 25,
          fontWeight: FontWeight.w600,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
