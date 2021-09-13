import 'package:flutter/material.dart';
import 'package:gerbang_mobile/constant.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';

class TagihanSppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: CustomText(
          text: 'Tagihan Biaya Pendidikan',
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              6,
            ),
          ),
          margin: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Periode Pembayaran',
                ),
                Row(
                  children: [
                    CustomText(
                      text: 'Jul 24 2021',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    CustomText(
                      text: '  -  ',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    CustomText(
                      text: 'Aug 24 2021',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CustomText(
                  text: 'Semester',
                ),
                Row(
                  children: [
                    CustomText(
                      text: 'Genap 2019',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  thickness: 1,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.account_balance_wallet,
                      color: primaryColor,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    CustomText(
                      text: 'Jumlah Pembayaran',
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: primaryColor),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(
                          text: 'Rp',
                          alignment: Alignment.center,
                          fontSize: 20,
                        ),
                        Column(
                          children: [
                            CustomText(
                              text: '20.000.000',
                              fontSize: 45,
                              fontWeight: FontWeight.w600,
                              alignment: Alignment.center,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  thickness: 1,
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Status Pembayaran',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: CustomText(
                          text: 'Lunas',
                          fontSize: 24,
                          color: Colors.white,
                          alignment: Alignment.center,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomText(
                  text: 'Tanggal Pembayaran',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomText(
                  text: 'Juni 20 2021',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
