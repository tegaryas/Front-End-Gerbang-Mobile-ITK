import 'package:flutter/material.dart';
import 'package:gerbang_mobile/constant.dart';
import 'package:gerbang_mobile/screens/sikap_screens/lap_sikap_screen.dart';
import 'package:gerbang_mobile/screens/sikap_screens/perencanaan_screen.dart';
import 'package:gerbang_mobile/screens/sikap_screens/realisasi_screen.dart';
import 'package:gerbang_mobile/screens/sikap_screens/rekap_sikap_screen.dart';
import 'package:gerbang_mobile/screens/sikap_screens/target_screen.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';

class HomePageSikap extends StatelessWidget {
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
                      ),
                    ),
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
                      text: 'Layanan Kemahasiswaan',
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  LayananHeader(
                    title: 'SIKAP',
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
                          title: 'Isi Perencanaan',
                          icon: Icons.queue_play_next,
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PerencanaanPage())),
                        ),
                        BuildLayanan(
                          title: 'Isi Realisasi',
                          icon: Icons.file_copy_outlined,
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RealisasiPage())),
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
                          title: 'Lap. SIKAP Semester',
                          icon: Icons.bookmarks,
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LaporanSikap())),
                        ),
                        BuildLayanan(
                          title: 'Lap. Rekap SIKAP',
                          icon: Icons.book,
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RekapSikap())),
                        ),
                        BuildLayanan(
                          title: 'Target & Realisasi',
                          icon: Icons.track_changes,
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TargetSIKAPPage())),
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
