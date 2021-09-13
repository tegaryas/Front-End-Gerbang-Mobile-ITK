import 'package:flutter/material.dart';
import 'package:gerbang_mobile/constant.dart';
import 'package:gerbang_mobile/screens/sia_screens/biodata_screens/akademik_page.dart';
import 'package:gerbang_mobile/screens/sia_screens/biodata_screens/biodata_page.dart';
import 'package:gerbang_mobile/screens/sia_screens/biodata_screens/orangtua_page.dart';
import 'package:gerbang_mobile/screens/sia_screens/biodata_screens/wali_page.dart';
import 'package:gerbang_mobile/screens/sia_screens/biodata_screens/pekerjaan_mahasiswa_page.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class BioDataPage extends StatelessWidget {
  const BioDataPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: CustomText(
          text: 'Bio Data',
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: Stack(
        children: [
          DefaultTabController(
            length: 5,
            child: Column(
              children: [
                Material(
                  child: Container(
                    child: TabBar(
                      labelStyle: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      unselectedLabelStyle: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      isScrollable: true,
                      labelColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicator: MaterialIndicator(
                        color: primaryColor,
                        height: 5,
                        topLeftRadius: 5,
                        topRightRadius: 5,
                        bottomLeftRadius: 0,
                        bottomRightRadius: 0,
                        tabPosition: TabPosition.bottom,
                      ),
                      tabs: [
                        Tab(
                          text: 'Biodata',
                        ),
                        Tab(
                          text: 'Akademik',
                        ),
                        Tab(
                          text: 'Pekerjaan Mahasiswa',
                        ),
                        Tab(
                          text: 'Orang Tua',
                        ),
                        Tab(
                          text: 'Wali',
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      BuildBioData(),
                      BuildAkademik(),
                      BuildPekerjaan(),
                      BuildOrangtua(),
                      BuildWali(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 40,
            right: 20,
            child: FloatingActionButton.extended(
              backgroundColor: Color(0xFFFF5722),
              onPressed: () {},
              label: CustomText(
                text: 'Sunting',
                color: Colors.white,
              ),
              icon: Icon(
                Icons.edit,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BuildInformasiWithBox extends StatelessWidget {
  final String title;
  final String isi;
  BuildInformasiWithBox({
    this.title,
    this.isi,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          CustomText(
            text: title,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(
                  10,
                ),
                border: Border.all(
                  width: 1,
                  color: Colors.grey,
                )),
            child: CustomText(
              text: isi,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
