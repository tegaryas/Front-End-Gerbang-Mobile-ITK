import 'package:flutter/material.dart';
import 'package:gerbang_mobile/constant.dart';
import 'package:gerbang_mobile/screens/sikap_screens/widgets/custom_appbar.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';

class LaporanSikap extends StatelessWidget {
  const LaporanSikap({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: customAppBar(
        'Laporan SIKAP Mahasiswa',
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                6,
              ),
            ),
            margin: EdgeInsets.only(
              left: 10,
              right: 10,
              top: 10,
              bottom: 0,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'Periode',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  DropdownButton<String>(
                    isExpanded: true,
                    hint: CustomText(
                      text: 'Semester Genap 2020/2021',
                      alignment: Alignment.centerLeft,
                      color: Colors.black,
                    ),
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                    items: <String>[
                      'Semester Genap 2020/2021',
                      'Semester Gasal 2020/2021',
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (newValue) {},
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
              bottom: 20,
            ),
            margin: EdgeInsets.only(
              top: 10,
              bottom: 5,
              left: 10,
              right: 10,
            ),
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(6)),
            child: CustomText(
              text: 'Realisasi SIKAP Semester Gasal 2020/2021',
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              alignment: Alignment.center,
            ),
          ),
          BuildListRealisasi(),
          BuildListRealisasi(),
        ],
      ),
    );
  }
}

class BuildListRealisasi extends StatelessWidget {
  const BuildListRealisasi({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 15,
        bottom: 15,
      ),
      margin: EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          Column(
            children: [
              CustomText(
                text: 'Poin',
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              CustomText(
                text: '1000',
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          Container(
            height: 90,
            child: VerticalDivider(
              thickness: 1,
              width: 30,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Pengurus Ormawa Ins (ketua)',
                  fontSize: 15,
                ),
                CustomText(
                  text: 'Ketua UKM Voli ITK',
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
                CustomText(
                  text: 'Menjadi Ketua UKM Voli ITK Periode 2020/2021',
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
                SizedBox(
                  height: 5,
                ),
                CustomText(
                  text: '24 September 2020 - 26 Spetember 2021',
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
