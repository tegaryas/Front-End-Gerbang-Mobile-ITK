import 'package:flutter/material.dart';
import 'package:gerbang_mobile/screens/sia_screens/biodata_screen.dart';
import 'package:gerbang_mobile/screens/sia_screens/biodata_screens/widgets/header_biodata.dart';

class BuildWali extends StatelessWidget {
  const BuildWali({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        margin: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildHeader(
              title: 'Informasi Wali',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Nama Wali',
              isi: '-',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Tanggal Lahir',
              isi: 'Sutiman',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Pendidikan',
              isi: '-',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Pekerjaan',
              isi: '',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Penghasilan Wali 1',
              isi: 'Rp. 0',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Penghasilan Wali 1',
              isi: 'Rp. 0',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Penghasilan Wali 1',
              isi: 'Rp. 0',
            ),
          ],
        ),
      ),
    );
  }
}
