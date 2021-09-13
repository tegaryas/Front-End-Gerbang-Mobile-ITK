import 'package:flutter/material.dart';
import 'package:gerbang_mobile/constant.dart';
import 'package:gerbang_mobile/screens/sia_screens/biodata_screen.dart';
import 'package:gerbang_mobile/screens/sia_screens/ekivalensi_screen.dart';
import 'package:gerbang_mobile/screens/sia_screens/frs_screen.dart';
import 'package:gerbang_mobile/screens/sia_screens/jadwal_kuliah_screen.dart';
import 'package:gerbang_mobile/screens/sia_screens/kuesioner_screen.dart';
import 'package:gerbang_mobile/screens/sia_screens/kurikulum_screen.dart';
import 'package:gerbang_mobile/screens/sia_screens/monitoring_skpi_screen.dart';
import 'package:gerbang_mobile/screens/sia_screens/nilai_screens.dart';
import 'package:gerbang_mobile/screens/sia_screens/prasyarat_screen.dart';
import 'package:gerbang_mobile/screens/sia_screens/rekapitulasi_ekivalensi_screen.dart';
import 'package:gerbang_mobile/screens/sia_screens/transkrip_screen.dart';
import 'package:gerbang_mobile/screens/sia_screens/update_data_wisuda_screen.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 70,
                left: 20,
                right: 20,
                bottom: 20,
              ),
              color: primaryColor,
              height: size.height * 0.3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Selamat Datang!',
                        fontSize: 18,
                        color: Colors.white,
                      ),
                      CustomText(
                        text: 'Tegar Yasindra',
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                      CustomText(
                        text: 'NIM. 11181081',
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: 15,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 3,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20)),
                            child: CustomText(
                              text: 'Mahasiswa Aktif',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/profile.png',
                          ),
                          fit: BoxFit.cover,
                        )),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: size.height * 0.24,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(
                    20,
                  ),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20,
                      bottom: 15,
                    ),
                    child: CustomText(
                      text: 'Layanan Akademik',
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  LayananHeader(
                    title: 'Data',
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: GridView.count(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      crossAxisCount: 4,
                      crossAxisSpacing: 6,
                      childAspectRatio: 1 / 1.15,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        BuildLayanan(
                          title: 'Bio Data',
                          icon: Icons.person,
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BioDataPage())),
                        ),
                        BuildLayanan(
                          title: 'Update Data Wisuda',
                          icon: Icons.history_edu,
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DataWisudaPage())),
                        ),
                        BuildLayanan(
                          title: 'Ekivalensi',
                          icon: Icons.functions_outlined,
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EkivalensiPage())),
                        ),
                      ],
                    ),
                  ),
                  LayananHeader(
                    title: 'Proses',
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: GridView.count(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      crossAxisCount: 4,
                      crossAxisSpacing: 6,
                      childAspectRatio: 1 / 1.3,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        BuildLayanan(
                          title: 'Kuesioner Dosen & MK',
                          icon: Icons.question_answer,
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => KuesionerPage())),
                        ),
                        BuildLayanan(
                          title: 'Kurikulum Semester',
                          icon: Icons.book,
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => KurikulumPage())),
                        ),
                        BuildLayanan(
                          title: 'Formulir Rencana Studi',
                          icon: Icons.queue_play_next,
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FRSPage())),
                        ),
                      ],
                    ),
                  ),
                  LayananHeader(
                    title: 'Laporan',
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: GridView.count(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      crossAxisCount: 4,
                      crossAxisSpacing: 6,
                      childAspectRatio: 1 / 1.3,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        BuildLayanan(
                          title: 'Transkrip',
                          icon: Icons.data_usage,
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TranskripPage())),
                        ),
                        BuildLayanan(
                          title: 'Prasyarat Matakuliah',
                          icon: Icons.note,
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PraSyaratPage())),
                        ),
                        BuildLayanan(
                          title: 'Jadwal Kuliah',
                          icon: Icons.calendar_today,
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => JadwalKuliahPage())),
                        ),
                        BuildLayanan(
                          title: 'Nilai Per Semester',
                          icon: Icons.bar_chart,
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NilaiPage())),
                        ),
                      ],
                    ),
                  ),
                  LayananHeader(
                    title: 'Ekivalensi',
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: GridView.count(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      crossAxisCount: 4,
                      crossAxisSpacing: 6,
                      childAspectRatio: 1 / 1.15,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        BuildLayanan(
                          title: 'Rekapitulasi Ekivalensi',
                          icon: Icons.my_library_books,
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      RekapitluasiEkivalensiPage())),
                        ),
                      ],
                    ),
                  ),
                  LayananHeader(
                    title: 'Surat Keterangan Pendamping Ijazah',
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: GridView.count(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      crossAxisCount: 4,
                      crossAxisSpacing: 6,
                      childAspectRatio: 1 / 1.15,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        BuildLayanan(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SKPIPage())),
                          title: 'Monitoring SKPI',
                          icon: Icons.monitor,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LayananHeader extends StatelessWidget {
  final String title;
  const LayananHeader({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 15,
        top: 2,
      ),
      child: CustomText(
        text: title,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class BuildLayanan extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function onTap;
  const BuildLayanan({
    Key key,
    @required this.title,
    @required this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            CustomText(
              text: title,
              fontSize: 14,
              alignment: Alignment.center,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
