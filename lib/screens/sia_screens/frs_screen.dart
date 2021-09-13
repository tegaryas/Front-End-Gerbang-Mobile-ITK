import 'package:flutter/material.dart';
import 'package:gerbang_mobile/constant.dart';
import 'package:gerbang_mobile/screens/sia_screens/frs_peserta_screen.dart';
import 'package:gerbang_mobile/screens/widgets/custom_button.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';

class FRSPage extends StatelessWidget {
  final bool setuju = false;
  const FRSPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: CustomText(
          text: 'Formulir Rencana Studi',
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    CustomText(
                      text: 'Dosen Wali',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: primaryColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomText(
                          text: 'Tegar Palyus Fiqar, S.T., M.Kom.',
                          fontSize: 17,
                          alignment: Alignment.centerLeft,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'IPK / IPS',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CustomText(
                              text: '3,59 / 3,82',
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 60,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Batas / Sisa',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CustomText(
                              text: '24 / 2',
                            ),
                          ],
                        ),
                      ],
                    )
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
                right: 10,
                bottom: 10,
                left: 10,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_today,
                          color: primaryColor,
                          size: 23,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomText(
                          text: 'Periode Waktu',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          alignment: Alignment.centerLeft,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    BuildPeriode(
                      title: 'Pengisian',
                      tanggal: 'Agu 16 2021 s/d Agu 24 2021',
                    ),
                    BuildPeriode(
                      title: 'Perubahan',
                      tanggal: 'Agu 16 2021 s/d Agu 24 2021',
                    ),
                    BuildPeriode(
                      title: 'Drop',
                      tanggal: 'Agu 16 2021 s/d Agu 24 2021',
                    ),
                  ],
                ),
              ),
            ),
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
                top: 0,
                bottom: 0,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  left: 20,
                  bottom: 20,
                  right: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Kelas Prodi',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: DropdownButton<String>(
                                isExpanded: true,
                                hint: CustomText(
                                  text: '',
                                  alignment: Alignment.centerLeft,
                                  color: Colors.white,
                                ),
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                ),
                                items: <String>[
                                  'asdkasjkdjaksjdkajsdkajskdasdadadasasdsd',
                                  'Ganjil',
                                ].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: new Text(value),
                                  );
                                }).toList(),
                                onChanged: (newValue) {},
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CustomButton(
                              onPress: () {},
                              text: 'Ambil',
                              padding: 3,
                              color: Colors.white,
                              textColor: Colors.black,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CustomButton(
                              onPress: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PesertaPage())),
                              text: 'Peserta',
                              padding: 3,
                              color: Colors.white,
                              textColor: Colors.black,
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomText(
                      text: 'Kelas TPB',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: DropdownButton<String>(
                                isExpanded: true,
                                hint: CustomText(
                                  text: '',
                                  alignment: Alignment.centerLeft,
                                  color: Colors.white,
                                ),
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                ),
                                items: <String>[
                                  'asdkasjkdjaksjdkajsdkajskdasdadadasasdsd',
                                  'Ganjil',
                                ].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: new Text(value),
                                  );
                                }).toList(),
                                onChanged: (newValue) {},
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CustomButton(
                              onPress: () {},
                              text: 'Ambil',
                              padding: 3,
                              color: Colors.white,
                              textColor: Colors.black,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CustomButton(
                              onPress: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PesertaPage())),
                              text: 'Peserta',
                              padding: 3,
                              color: Colors.white,
                              textColor: Colors.black,
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomText(
                      text: 'Kelas Inbound dan Lintas Prodi',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: DropdownButton<String>(
                                isExpanded: true,
                                hint: CustomText(
                                  text: '',
                                  alignment: Alignment.centerLeft,
                                  color: Colors.white,
                                ),
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                ),
                                items: <String>[
                                  'asdkasjkdjaksjdkajsdkajskdasdadadasasdsd',
                                  'Ganjil',
                                ].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: new Text(value),
                                  );
                                }).toList(),
                                onChanged: (newValue) {},
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CustomButton(
                              onPress: () {},
                              text: 'Ambil',
                              padding: 3,
                              color: Colors.white,
                              textColor: Colors.black,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CustomButton(
                              onPress: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PesertaPage())),
                              text: 'Peserta',
                              padding: 3,
                              color: Colors.white,
                              textColor: Colors.black,
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomText(
                      text: 'Kelas Pengayaan',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: DropdownButton<String>(
                                isExpanded: true,
                                hint: CustomText(
                                  text: '',
                                  alignment: Alignment.centerLeft,
                                  color: Colors.white,
                                ),
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                ),
                                items: <String>[
                                  'asdkasjkdjaksjdkajsdkajskdasdadadasasdsd',
                                  'Ganjil',
                                ].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: new Text(value),
                                  );
                                }).toList(),
                                onChanged: (newValue) {},
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CustomButton(
                              onPress: () {},
                              text: 'Ambil',
                              padding: 3,
                              color: Colors.white,
                              textColor: Colors.black,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CustomButton(
                              onPress: () {},
                              text: 'Peserta',
                              padding: 3,
                              color: Colors.white,
                              textColor: Colors.black,
                            ),
                          ],
                        )
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
              margin: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    BuildFRSList(),
                    BuildFRSList(),
                    BuildFRSList(),
                    BuildTotalSks(
                      sks: 23,
                    ),
                    setuju == true
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(
                                text: 'Persetujuan Telah Dilakukan',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.green,
                                alignment: Alignment.center,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.check,
                                size: 20,
                                color: Colors.green,
                              )
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(
                                text: 'Persetujuan Belum Dilakukan',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.red,
                                alignment: Alignment.center,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.close,
                                size: 20,
                                color: Colors.red,
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
    );
  }
}

class BuildTotalSks extends StatelessWidget {
  final int sks;
  const BuildTotalSks({
    Key key,
    this.sks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomText(
              text: 'Total SKS',
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            const SizedBox(
              width: 40,
            ),
            CustomText(
              text: sks.toString(),
              fontSize: 20,
            ),
          ],
        ),
        Divider(
          thickness: 1,
          height: 30,
        )
      ],
    );
  }
}

class BuildFRSList extends StatelessWidget {
  const BuildFRSList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'Nilai',
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                  CustomText(
                    text: 'A',
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 120,
                child: VerticalDivider(
                  thickness: 1,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'IF201416',
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomText(
                      text: 'Wawasan Umum dan Gagasan Informatika',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: '3 SKS',
                        ),
                        CustomText(
                          text: ' - ',
                        ),
                        CustomText(
                          text: 'Kelas A',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomText(
                      text: 'Riska Kurniyanto Abdullah, S.T., M.Kom.',
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

class BuildPeriode extends StatelessWidget {
  final String title;
  final String tanggal;
  const BuildPeriode({
    Key key,
    this.title,
    this.tanggal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: title,
                alignment: Alignment.centerLeft,
              ),
              CustomText(
                text: tanggal,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
