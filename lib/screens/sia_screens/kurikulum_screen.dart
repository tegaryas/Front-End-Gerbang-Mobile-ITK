import 'package:flutter/material.dart';
import 'package:gerbang_mobile/constant.dart';
import 'package:gerbang_mobile/screens/widgets/custom_button.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';

class KurikulumPage extends StatelessWidget {
  const KurikulumPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: CustomText(
          text: 'Kurikulum Semester',
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
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
                    text: 'Tahun Kurikulum',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  Row(
                    children: [
                      DropdownButton<String>(
                        hint: CustomText(
                          text: 'Tahun',
                          alignment: Alignment.centerLeft,
                          color: Colors.white,
                        ),
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                        items: <String>[
                          '2020',
                          '2015',
                          '2014',
                          '2009',
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        onChanged: (newValue) {},
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      CustomButton(
                        onPress: () {},
                        text: 'Tampil',
                        padding: 8,
                        color: Colors.white,
                        textColor: Colors.black,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
                bottom: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              child: ListView(
                shrinkWrap: true,
                children: [
                  BuildListKurikulumHeader(),
                  BuildListKurikulum(),
                  BuildListKurikulum(),
                  BuildListKurikulum(),
                  BuildListKurikulum(),
                  BuildListKurikulum(),
                  BuildListKurikulum(),
                  BuildListKurikulum(),
                  BuildListKurikulum(),
                  BuildListKurikulumFooter(),
                  BuildListKurikulumHeader(),
                  BuildListKurikulum(),
                  BuildListKurikulum(),
                  BuildListKurikulumFooter(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BuildListKurikulumHeader extends StatelessWidget {
  const BuildListKurikulumHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(
        20,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 15,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: primaryColor,
      ),
      child: CustomText(
        text: 'Semester 1',
        color: Colors.white,
        fontSize: 20,
      ),
    );
  }
}

class BuildListKurikulumFooter extends StatelessWidget {
  const BuildListKurikulumFooter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
        left: 20,
        right: 20,
        bottom: 20,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 100,
        vertical: 20,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: primaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: 'Total SKS',
            color: Colors.white,
            fontSize: 18,
          ),
          Container(
            height: 20,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: CustomText(
              text: '18',
              alignment: Alignment.center,
            ),
          )
        ],
      ),
    );
  }
}

class BuildListKurikulum extends StatelessWidget {
  const BuildListKurikulum({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'SKS',
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    alignment: Alignment.center,
                  ),
                  CustomText(
                    text: '3',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    alignment: Alignment.center,
                  ),
                ],
              ),
              Container(
                height: 70,
                child: VerticalDivider(
                  thickness: 1,
                  width: 40,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'KU201218',
                    ),
                    CustomText(
                      text: 'Algoritma Pemrograman',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    CustomText(
                      text: 'Algorithm and Programming',
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1,
            height: 30,
          )
        ],
      ),
    );
  }
}
