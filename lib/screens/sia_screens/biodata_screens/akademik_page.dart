import 'package:flutter/material.dart';
import 'package:gerbang_mobile/constant.dart';
import 'package:gerbang_mobile/screens/sia_screens/biodata_screen.dart';
import 'package:gerbang_mobile/screens/sia_screens/biodata_screens/widgets/header_biodata.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';

class BuildAkademik extends StatelessWidget {
  const BuildAkademik({
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
              title: 'Akademik',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Jalur Penerimaan',
              isi: 'SNMPTN',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Tanggal Masuk ITK',
              isi: '13 Agustus 2018',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Besaran UKT',
              isi: 'Rp. 0',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Sumber',
              isi: '-',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'SPMB Pilihan Ke',
              isi: '-',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Non SPMB Pilihan Ke',
              isi: '-',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Gugus',
              isi: '-',
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 2,
              height: 50,
            ),
            CustomText(
              text: 'SLTA Asal',
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: primaryColor,
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'SLTA',
              isi: '-',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Kode Jurusan',
              isi: '-',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Tahun Ijazah',
              isi: '-',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Kota/Kab.',
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
              title: 'Penerima KPS',
              isi: 'Tidak',
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 2,
              height: 50,
            ),
            CustomText(
              text: 'SLTA STK',
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: primaryColor,
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'TMP',
              isi: '-',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Nilai',
              isi: '-',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Fisika',
              isi: '-',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Matematika',
              isi: '-',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Bahasa Inggris',
              isi: '-',
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 2,
              height: 50,
            ),
            CustomText(
              text: 'Prestasi',
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: primaryColor,
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
              title: 'Seni',
              isi: '-',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Olahraga',
              isi: '-',
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 2,
              height: 50,
            ),
            CustomText(
              text: 'Nilai Test',
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: primaryColor,
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Toefl',
              isi: '-',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'TPA',
              isi: '-',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Psikotest',
              isi: 'Singa Gembara',
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 2,
              height: 50,
            ),
            BuildHeader(
              title: 'Khusus S2/S3',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Jalur Penerimaan',
              isi: '-',
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 2,
              height: 50,
            ),
            CustomText(
              text: 'Pendidikan S1',
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: primaryColor,
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Asal',
              isi: '-',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Jurusan',
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
              title: 'IPK S1',
              isi: '-',
            ),
          ],
        ),
      ),
    );
  }
}
