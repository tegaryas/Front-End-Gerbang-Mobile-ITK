import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gerbang_mobile/constant.dart';
import 'package:gerbang_mobile/screens/widgets/custom_button.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';

class TranskripPage extends StatelessWidget {
  const TranskripPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: CustomText(
          text: 'Transkrip',
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'NIM',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomText(
                      text: '11181081',
                      fontSize: 18,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomText(
                      text: 'Nama',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomText(
                      text: 'Tegar Yasindra',
                      fontSize: 18,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'SKS Tempuh',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            CustomText(
                              text: '125',
                              fontSize: 17,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'SKS Lulus',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            CustomText(
                              text: '125',
                              fontSize: 17,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Status',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            CustomText(
                              text: 'Aktif',
                              fontSize: 17,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
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
              ),
              padding: EdgeInsets.all(
                20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(
                    onPress: () {
                      Fluttertoast.showToast(
                        msg: 'File Transkrip Bahasa Indo Sudah Di Download',
                        fontSize: 18,
                        gravity: ToastGravity.BOTTOM,
                      );
                    },
                    text: 'Cetak Versi Indonesia',
                    padding: 14,
                  ),
                  CustomButton(
                    onPress: () {
                      Fluttertoast.showToast(
                        msg: 'File Transkrip Bahasa Inggris Sudah Di Download',
                        fontSize: 18,
                        gravity: ToastGravity.BOTTOM,
                      );
                    },
                    text: 'Cetak Versi Inggris',
                    padding: 14,
                  ),
                ],
              ),
            ),
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
                bottom: 10,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 10.0,
                    ),
                    child: ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        BuildListTranskripHeader(
                          title: 'Tahap Persiapan',
                        ),
                        BuildListTranskrip(),
                        BuildListTranskrip(),
                        BuildListTranskrip(),
                        BuildListTranskrip(),
                        BuildListTranskripFooter(
                          ip: 3.3,
                          sks: 37,
                          tahap: 'Persiapan',
                        ),
                        BuildListTranskripHeader(
                          title: 'Tahap Sarjana',
                        ),
                        BuildListTranskrip(),
                        BuildListTranskrip(),
                        BuildListTranskrip(),
                        BuildListTranskrip(),
                        BuildListTranskripFooter(
                          ip: 3.3,
                          sks: 37,
                          tahap: 'Sarjana',
                        ),
                        Divider(
                          thickness: 1,
                          height: 30,
                        ),
                        BuildListTranskripTotalFooter(
                          ipk: 3.59,
                          sks: 125,
                          ips: 3.82,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            bottom: 30,
                            top: 10,
                            left: 10,
                            right: 10,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 20,
                          ),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.yellow[200],
                          ),
                          child: Column(
                            children: [
                              CustomText(
                                text: 'Catatan',
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CustomText(
                                text:
                                    'Transkrip Akademik ini hanya berlaku untuk keperluan:',
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CustomText(
                                text:
                                    '1. Pengajuan Beasiswa\n2. Melamar Pekerjaan\n3. Persyaratan Yudisium\n4. Tunjangan Gaji\n5. ................................................................ (tuliskan keperluannya)',
                                fontSize: 15,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  CustomText(
                                    text: 'Tanggal Cetak:  ',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  CustomText(
                                    text: '27 Juli 2021',
                                    fontSize: 18,
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BuildListTranskripTotalFooter extends StatelessWidget {
  final int sks;
  final double ipk;
  final double ips;

  const BuildListTranskripTotalFooter({
    Key key,
    this.sks,
    this.ipk,
    this.ips,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 40,
        top: 10,
        left: 10,
        right: 10,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 80,
        vertical: 20,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: primaryColor,
      ),
      child: Column(
        children: [
          Row(
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
                  text: '$sks',
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: 'IPK',
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
                  text: '$ipk',
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: 'IPS',
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
                  text: '$ips',
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BuildListTranskripHeader extends StatelessWidget {
  final String title;
  const BuildListTranskripHeader({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10,
        top: 10,
        left: 10,
        right: 10,
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
        text: title,
        color: Colors.white,
        fontSize: 20,
      ),
    );
  }
}

class BuildListTranskripFooter extends StatelessWidget {
  final int sks;
  final double ip;
  final String tahap;

  const BuildListTranskripFooter({
    Key key,
    this.sks,
    this.ip,
    this.tahap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
        bottom: 10,
        left: 10,
        right: 10,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 20,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: primaryColor,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: 'Total SKS Tahap $tahap',
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
                  text: '$sks',
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: 'IP Tahap $tahap',
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
                  text: '$ip',
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BuildListTranskrip extends StatelessWidget {
  const BuildListTranskrip({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
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
                    text: 'Nilai',
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    alignment: Alignment.center,
                  ),
                  CustomText(
                    text: 'A',
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
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: '3 SKS',
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomText(
                          text: ' - ',
                        ),
                        CustomText(
                          text: '2018/Gs/A',
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
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
