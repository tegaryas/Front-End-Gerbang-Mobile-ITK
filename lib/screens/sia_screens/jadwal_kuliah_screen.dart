import 'package:flutter/material.dart';
import 'package:gerbang_mobile/constant.dart';
import 'package:gerbang_mobile/screens/widgets/custom_button.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';

class JadwalKuliahPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: CustomText(
            text: 'Jadwal Kuliah',
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
                      text: 'Periode',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DropdownButton<String>(
                          hint: CustomText(
                            text: 'Semester',
                            alignment: Alignment.centerLeft,
                            color: Colors.white,
                          ),
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                          items: <String>[
                            'Genap',
                            'Ganjil',
                          ].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                          onChanged: (newValue) {},
                        ),
                        SizedBox(
                          width: 20,
                        ),
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
                            '2018',
                            '2017',
                          ].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                          onChanged: (newValue) {},
                        ),
                        SizedBox(
                          width: 30,
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
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView(
                children: [
                  BuildMataKuliah(),
                  SizedBox(
                    height: 10,
                  ),
                  BuildMataKuliah(),
                  SizedBox(
                    height: 10,
                  ),
                  BuildMataKuliah(),
                  SizedBox(
                    height: 10,
                  ),
                  BuildMataKuliah(),
                  SizedBox(
                    height: 10,
                  ),
                  BuildMataKuliah(),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class BuildMataKuliah extends StatelessWidget {
  const BuildMataKuliah({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            6,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'Implementasi dan Pengujian Perangkat Lunak',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Row(
                    children: [
                      CustomText(
                        text: 'IF1420',
                        fontWeight: FontWeight.w300,
                      ),
                      CustomText(
                        text: ' - ',
                        fontWeight: FontWeight.w300,
                      ),
                      CustomText(
                        text: 'Kelas A',
                        fontWeight: FontWeight.w300,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(
                    6,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: 'Pengajar',
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                      ),
                      CustomText(
                        text: 'Nur Fajri Azhar S.Kom., M.Kom.',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.access_time,
                                    color: primaryColor,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  CustomText(
                                    text: '07.30 - 10.00',
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.sensor_door_outlined,
                                    color: primaryColor,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  CustomText(
                                    text: 'B-107-11',
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 70,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_today,
                                    color: primaryColor,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  CustomText(
                                    text: 'Selasa',
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
