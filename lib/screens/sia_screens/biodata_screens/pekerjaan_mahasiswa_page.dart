import 'package:flutter/material.dart';
import 'package:gerbang_mobile/screens/sia_screens/biodata_screen.dart';
import 'package:gerbang_mobile/screens/sia_screens/biodata_screens/widgets/header_biodata.dart';

class BuildPekerjaan extends StatelessWidget {
  const BuildPekerjaan({
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
              title: 'Informasi Pekerjaan Mahasiswa',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Pekerjaan',
              isi: '-',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Nama Instansi',
              isi: '',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Alamat Instansi',
              isi: '-',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'No Telp Instansi',
              isi: '-',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'No Fax Instansi',
              isi: '-',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Jabatan',
              isi: '-',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Pendapatan',
              isi: '-',
            ),
          ],
        ),
      ),
    );
  }
}
