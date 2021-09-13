import 'package:flutter/material.dart';
import 'package:gerbang_mobile/models/ekivalensi_model.dart';
import 'package:gerbang_mobile/screens/sikap_screens/widgets/custom_appbar.dart';
import 'package:gerbang_mobile/screens/widgets/custom_button.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant.dart';

class EkivalensiPage extends StatefulWidget {
  const EkivalensiPage({Key key}) : super(key: key);

  @override
  _EkivalensiPageState createState() => _EkivalensiPageState();
}

class _EkivalensiPageState extends State<EkivalensiPage> {
  TahunEkivalensi selectedSemester;
  var value;
  List<DropdownMenuItem> generateItems(
      List<TahunEkivalensi> listTahunEkivalensi) {
    List<DropdownMenuItem> items = [];
    for (var item in listTahunEkivalensi) {
      items.add(
        DropdownMenuItem(
          child: Text(item.tahun),
          value: item,
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: customAppBar('Ekivalensi'),
      body: SingleChildScrollView(
        child: Column(
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
                          items: generateItems(listTahunEkivalensi),
                          value: value,
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
                              value = item;
                            });
                            print(value);
                          },
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        CustomButton(
                          onPress: () {
                            setState(() {
                              selectedSemester = value;
                            });
                          },
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
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
              ),
              margin: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: (selectedSemester != null)
                  ? Column(
                      children: [
                        ...List.generate(
                          selectedSemester.kurikulum.length,
                          (index) {
                            return BuildListEkivalensi(
                              ekivalensi: selectedSemester.kurikulum[index],
                            );
                          },
                        )
                      ],
                    )
                  : Column(
                      children: [
                        ...List.generate(
                          listTahunEkivalensi[0].kurikulum.length,
                          (index) {
                            return BuildListEkivalensi(
                              ekivalensi:
                                  listTahunEkivalensi[0].kurikulum[index],
                            );
                          },
                        )
                      ],
                    ),
            )
          ],
        ),
      ),
    );
  }
}

class BuildListEkivalensi extends StatelessWidget {
  final Ekivalensi ekivalensi;
  const BuildListEkivalensi({
    Key key,
    this.ekivalensi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CustomText(
                      text: 'Diambil',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Icon(
                      Icons.check_box,
                      color: Colors.green,
                    )
                  ],
                ),
                Container(
                  height: 70,
                  child: VerticalDivider(
                    thickness: 1,
                    width: 30,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: ekivalensi.kode,
                      ),
                      CustomText(
                        text: ekivalensi.nama,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      CustomText(
                        text: 'SKS - ${ekivalensi.sks}',
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 5,
                  ),
                  child: Icon(
                    Icons.edit,
                  ),
                )
              ],
            ),
          ),
          Divider(
            thickness: 1,
            height: 30,
          )
        ],
      ),
    );
  }
}
