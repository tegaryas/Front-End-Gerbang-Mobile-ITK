import 'package:flutter/material.dart';
import 'package:gerbang_mobile/constant.dart';
import 'package:gerbang_mobile/screens/sikap_screens/widgets/custom_appbar.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';

class TargetSIKAPPage extends StatelessWidget {
  const TargetSIKAPPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: customAppBar('Target dan Realisasi SIKAP'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BuildKegiatanSemester(),
            BuildKegiatanSemester(),
            BuildTotalKegiatan()
          ],
        ),
      ),
    );
  }
}

class BuildTotalKegiatan extends StatelessWidget {
  const BuildTotalKegiatan({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10,
        left: 10,
        right: 10,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: primaryColor,
      ),
      child: Column(
        children: [
          CustomText(
            text: 'Total',
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.track_changes,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomText(
                        text: 'Target',
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                  Container(
                    width: 100,
                    child: Divider(
                      height: 15,
                      thickness: 1,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          CustomText(
                            text: 'Jumlah',
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                          CustomText(
                            text: '1',
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          CustomText(
                            text: 'Poin',
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                          CustomText(
                            text: '1000',
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.get_app,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomText(
                        text: 'Realisasi',
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                  Container(
                    width: 120,
                    child: Divider(
                      height: 15,
                      thickness: 1,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          CustomText(
                            text: 'Jumlah',
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                          CustomText(
                            text: '1',
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          CustomText(
                            text: 'Poin',
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                          CustomText(
                            text: '1000',
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          CustomText(
                            text: '%',
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                          CustomText(
                            text: '0.00',
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class BuildKegiatanSemester extends StatelessWidget {
  const BuildKegiatanSemester({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(
        10,
      ),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          BuildListHeader(),
          BuildListKegiatan(),
          BuildListKegiatan(),
          BuildListFooter(),
        ],
      ),
    );
  }
}

class BuildListFooter extends StatelessWidget {
  const BuildListFooter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      color: primaryColor,
      child: Column(
        children: [
          CustomText(
            text: 'Total Semester Genap 2019/2020',
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.track_changes,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomText(
                        text: 'Target',
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                  Container(
                    width: 100,
                    child: Divider(
                      height: 15,
                      thickness: 1,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          CustomText(
                            text: 'Jumlah',
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                          CustomText(
                            text: '1',
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          CustomText(
                            text: 'Poin',
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                          CustomText(
                            text: '1000',
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.get_app,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomText(
                        text: 'Realisasi',
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                  Container(
                    width: 120,
                    child: Divider(
                      height: 15,
                      thickness: 1,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          CustomText(
                            text: 'Jumlah',
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                          CustomText(
                            text: '1',
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          CustomText(
                            text: 'Poin',
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                          CustomText(
                            text: '1000',
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          CustomText(
                            text: '%',
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                          CustomText(
                            text: '0.00',
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class BuildListHeader extends StatelessWidget {
  const BuildListHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      color: primaryColor,
      child: CustomText(
        text: 'Semester Genap 2019/2020',
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    );
  }
}

class BuildListKegiatan extends StatelessWidget {
  const BuildListKegiatan({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10,
      ),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: Colors.black26,
        ),
      ),
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: 'Pengurus Ormawa Ins (Ketua)',
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.track_changes,
                            color: primaryColor,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CustomText(
                            text: 'Target',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                      Container(
                        width: 100,
                        child: Divider(
                          height: 15,
                          thickness: 1,
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              CustomText(
                                text: 'Jumlah',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              CustomText(
                                text: '1',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              CustomText(
                                text: 'Poin',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              CustomText(
                                text: '1000',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.get_app,
                            color: primaryColor,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CustomText(
                            text: 'Realisasi',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                      Container(
                        width: 120,
                        child: Divider(
                          height: 15,
                          thickness: 1,
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              CustomText(
                                text: 'Jumlah',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              CustomText(
                                text: '1',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: [
                              CustomText(
                                text: 'Poin',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              CustomText(
                                text: '1000',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: [
                              CustomText(
                                text: '%',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              CustomText(
                                text: '0.00',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
