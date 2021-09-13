import 'package:flutter/material.dart';
import 'package:gerbang_mobile/constant.dart';
import 'package:gerbang_mobile/screens/sia_screens/biodata_screen.dart';
import 'package:gerbang_mobile/screens/sia_screens/biodata_screens/widgets/header_biodata.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';

class BuildBioData extends StatelessWidget {
  const BuildBioData({
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
          children: [
            BuildHeader(
              title: 'Biodata',
            ),
            SizedBox(
              height: 40,
            ),
            Stack(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.grey,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.edit,
                        size: 15,
                      ),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'NIM',
              isi: '111810181',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Nama',
              isi: 'Tegar Yasindra',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Nama Lengkap',
              isi: 'Tegar Yasindra',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Nama Lengkap (Sesuai KTP)',
              isi: 'Tegar Yasindra',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'NIK',
              isi: '6408042603000003',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Jenis Kelamin',
              isi: 'Laki-laki',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Jenis Kelamin (Sesuai KTP)',
              isi: 'Laki-laki',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Jenis Kelamin (Sesuai KTP)',
              isi: 'Laki-laki',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Dosen Wali',
              isi: 'Tegar Palyus Fiqar, S.T., M.Kom. (100117125)',
            ),
            SizedBox(
              height: 20,
            ),
            CustomText(
              text: 'Alamat',
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
              height: 20,
            ),
            CustomText(
              text: 'Alamat (Sesuai KTP)',
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
              title: 'Kabupaten/Kota',
              isi: 'Kab. Kutai Timur',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Provinsi',
              isi: 'Prov. Kalimantan Timur',
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
              isi: '75683',
            ),
            SizedBox(
              height: 20,
            ),
            CustomText(
              text: 'Alamat Domisili',
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
              title: 'Kabupaten/Kota',
              isi: 'Kab. Kutai Timur',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Provinsi',
              isi: 'Prov. Kalimantan Timur',
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
              isi: '75683',
            ),
            Divider(
              thickness: 2,
              height: 50,
            ),
            BuildInformasiWithBox(
              title: 'Telepon',
              isi: '081354000987',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Email',
              isi: '11181081@student.itk.ac.id',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Email Pribadi',
              isi: 'tegar.yas26@gmail.com',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Email Pribadi',
              isi: 'tegar.yas26@gmail.com',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Home Page',
              isi: 'bd1e11a4-7682-48a1-9836-bf469da35a92',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Tempat Lahir',
              isi: 'Tarakan',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Tempat Lahir (Sesuai KTP)',
              isi: 'Tarakan',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Tanggal Lahir',
              isi: '26 April 2000',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Tanggal Lahir (Sesuai KTP)',
              isi: '26 April 2000',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Agama',
              isi: 'Islam',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Agama (Sesuai KTP)',
              isi: 'Islam',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Status Nikah',
              isi: 'Belum Menikah',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Kewarganegaraan',
              isi: 'WNI',
            ),
            SizedBox(
              height: 20,
            ),
            BuildInformasiWithBox(
              title: 'Golongan Darah',
              isi: 'O',
            ),
          ],
        ),
      ),
    );
  }
}
