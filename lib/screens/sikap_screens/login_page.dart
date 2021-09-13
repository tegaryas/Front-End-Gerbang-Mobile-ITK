import 'package:flutter/material.dart';
import 'package:gerbang_mobile/constant.dart';
import 'package:gerbang_mobile/screens/sikap_screens/menu_screen.dart';
import 'package:gerbang_mobile/screens/widgets/custom_button.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';
import 'package:gerbang_mobile/screens/widgets/custom_textfield.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 130),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.13,
                  child: Image.asset(
                    'assets/images/logo_itk.png',
                  ),
                ),
                const SizedBox(height: 10),
                CustomText(
                  text: 'Gerbang ITK',
                  fontSize: 35,
                  alignment: Alignment.center,
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                ),
                CustomText(
                  text: 'Sistem Informasi Terintegrasi - ITK ',
                  alignment: Alignment.center,
                ),
                SizedBox(
                  height: 70,
                ),
                CustomTextFormField(
                  hint: 'Email',
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomTextFormField(
                  hint: 'Password',
                  keyboardType: TextInputType.visiblePassword,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomButton(
                  onPress: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MenuPage())),
                  text: 'Masuk',
                  color: primaryColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
