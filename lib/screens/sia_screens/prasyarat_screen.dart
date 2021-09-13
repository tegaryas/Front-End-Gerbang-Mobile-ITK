import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gerbang_mobile/constant.dart';
import 'package:gerbang_mobile/models/Prasyarat_model.dart';
import 'package:gerbang_mobile/screens/widgets/custom_button.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';
import 'package:google_fonts/google_fonts.dart';

class PraSyaratPage extends StatefulWidget {
  @override
  _PraSyaratPageState createState() => _PraSyaratPageState();
}

class _PraSyaratPageState extends State<PraSyaratPage> {
  TahunPrasyarat selectedSemester;
  List<DropdownMenuItem> generateItems(List<TahunPrasyarat> tahunPrasyarts) {
    List<DropdownMenuItem> items = [];
    for (var item in tahunPrasyarts) {
      items.add(
        DropdownMenuItem(
          child: Text(item.tahun),
          value: item,
        ),
      );
    }
    return items;
  }
  // List prasyarat = prasyarats;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: CustomText(
          text: 'Prasyarat Mata Kuliah',
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: Column(
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
                    text: 'Tahun Kurikulum',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  Row(
                    children: [
                      DropdownButton(
                        style: GoogleFonts.quicksand(
                          color: Colors.white,
                        ),
                        items: generateItems(tahunPrasyarats),
                        value: selectedSemester,
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                        hint: CustomText(
                          text: 'Tahun',
                          alignment: Alignment.centerLeft,
                          color: Colors.white,
                        ),
                        dropdownColor: Colors.black.withOpacity(0.5),
                        onChanged: (item) {
                          setState(() {
                            selectedSemester = item;
                          });
                        },
                      ),
                      SizedBox(
                        width: 50,
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
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
                bottom: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              child: (selectedSemester != null)
                  ? ListView.builder(
                      physics: ClampingScrollPhysics(),
                      itemCount: selectedSemester.listPrasyarat.length,
                      itemBuilder: (context, index) => BuildListPrasyaratHeader(
                        syarat: selectedSemester.listPrasyarat[index],
                      ),
                    )
                  : ListView.builder(
                      physics: ClampingScrollPhysics(),
                      itemCount: tahunPrasyarats[0].listPrasyarat.length,
                      itemBuilder: (context, index) => BuildListPrasyaratHeader(
                        syarat: tahunPrasyarats[0].listPrasyarat[index],
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}

//  Build List per semeter
class BuildListPrasyaratHeader extends StatelessWidget {
  final Prasyarat syarat;

  const BuildListPrasyaratHeader({
    Key key,
    this.syarat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            bottom: 20,
            top: 20,
            left: 20,
            right: 20,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
          decoration: BoxDecoration(
            color: primaryColor,
          ),
          child: CustomText(
            text: 'Semester ${syarat.semester}',
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        Container(
          child: ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: syarat.matakuliah.length,
            itemBuilder: (context, index) => BuildListPrasyarat(
              kode: syarat.matakuliah[index].kode,
              matakuliah: syarat.matakuliah[index].matakuliah,
              syarat: syarat.matakuliah[index].syarat,
            ),
            separatorBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Divider(
                  thickness: 1,
                  height: 30,
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}

class BuildListPrasyarat extends StatelessWidget {
  final String kode;
  final String matakuliah;
  final String syarat;

  const BuildListPrasyarat({
    Key key,
    this.kode,
    this.matakuliah,
    this.syarat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: kode,
          ),
          CustomText(
            text: matakuliah,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          CustomText(
            text: syarat,
            fontSize: 15,
            fontWeight: FontWeight.w200,
          ),
        ],
      ),
    );
  }
}
