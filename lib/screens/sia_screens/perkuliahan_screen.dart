import 'package:flutter/material.dart';
import 'package:gerbang_mobile/constant.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';

class PerkuliahanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: CustomText(
          text: 'Perkuliahan',
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: ListView(
        children: [
          BuildAbsensiPerMatkul(),
          BuildAbsensiPerMatkul(),
          BuildAbsensiPerMatkul(),
          BuildAbsensiPerMatkul(),
          BuildAbsensiPerMatkul(),
        ],
      ),
    );
  }
}

class BuildAbsensiPerMatkul extends StatelessWidget {
  const BuildAbsensiPerMatkul({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
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
              text: 'Impelementasi dan Pengujian Perangkat lunak',
              fontSize: 18,
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
            SizedBox(
              height: 5,
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    CustomText(
                      text: 'Total Pertemuan',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.green,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: CustomText(
                          text: '16',
                          fontSize: 24,
                          color: Colors.white,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 40,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Pengajar',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomText(
                        text: 'Nur Fajri Azhar S.Kom., M.Kom.',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            CustomText(
              text: 'Absensi Presensi',
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade400,
                ),
                borderRadius: BorderRadius.circular(
                  5,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BuildAbsensi(
                          title: 'Jumlah Kehadiran',
                          icon: Icons.person_add_alt,
                          jumlah: 10,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        BuildAbsensi(
                          title: 'Jumlah Izin',
                          icon: Icons.person_remove_alt_1_outlined,
                          jumlah: 2,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BuildAbsensi(
                          title: 'Jumlah Sakit',
                          icon: Icons.person_add_alt,
                          jumlah: 3,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        BuildAbsensi(
                          title: 'Jumlah Alpha',
                          icon: Icons.person_add_alt,
                          jumlah: 1,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomText(
              text: 'Note',
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(
              height: 10,
            ),
            CustomText(
              text: 'Null',
            )
          ],
        ),
      ),
    );
  }
}

class BuildAbsensi extends StatelessWidget {
  final int jumlah;
  final String title;
  final IconData icon;
  const BuildAbsensi({
    Key key,
    this.jumlah,
    this.title,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: title,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(
              icon,
              color: primaryColor,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(
                  5,
                ),
              ),
              child: CustomText(
                text: jumlah.toString(),
                fontSize: 18,
                fontWeight: FontWeight.w600,
                alignment: Alignment.center,
              ),
            )
          ],
        )
      ],
    );
  }
}
