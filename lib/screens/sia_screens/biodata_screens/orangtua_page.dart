import 'package:flutter/material.dart';
import 'package:gerbang_mobile/constant.dart';
import 'package:gerbang_mobile/screens/sia_screens/biodata_screen.dart';
import 'package:gerbang_mobile/screens/sia_screens/biodata_screens/widgets/header_biodata.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';

class BuildOrangtua extends StatelessWidget {
  const BuildOrangtua({
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
              title: 'Informasi Orang Tua',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'No. Kartu Keluarga',
              isi: '-',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Nama Ayah',
              isi: 'Sutiman',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Pekerjaan Ayah',
              isi: 'A B R I',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Nama Ibu',
              isi: 'EKa Mulyatiningsih',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Nama Ibu (Sesuai KTP)',
              isi: '-',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Pekerjaan',
              isi: 'Lain-lain',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Pendapatan Ayah 1',
              isi: 'Rp. 0',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Pendapatan Ibu 1',
              isi: 'Rp. 0',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Pendapatan Ayah 2',
              isi: 'Rp. 0',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Pendapatan Ibu 2',
              isi: 'Rp. 0',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Pendapatan Ayah 3',
              isi: 'Rp. 0',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Pendapatan Ibu 3',
              isi: 'Rp. 0',
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 2,
              height: 50,
            ),
            CustomText(
              text: 'Alamat Orang Tua',
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: primaryColor,
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Jalan',
              isi: '-',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Dusun',
              isi: '-',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Kelurahan',
              isi: 'Singa Gembara',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Kecamatan',
              isi: 'Kec. Sangatta Utara',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'RT',
              isi: '-',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'RW',
              isi: '-',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Kode Pos',
              isi: '-',
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 2,
              height: 50,
            ),
            BuildInformasiWithBox(
              title: 'Kode Pos',
              isi: '-',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Telepon',
              isi: '-',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Keterangan',
              isi: '-',
            ),
          ],
        ),
      ),
    );
  }
}
