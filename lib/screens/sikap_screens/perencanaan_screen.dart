import 'package:flutter/material.dart';
import 'package:gerbang_mobile/constant.dart';
import 'package:gerbang_mobile/screens/sikap_screens/widgets/custom_appbar.dart';
import 'package:gerbang_mobile/screens/widgets/custom_button.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';
import 'package:google_fonts/google_fonts.dart';

class PerencanaanPage extends StatefulWidget {
  const PerencanaanPage({Key key}) : super(key: key);

  @override
  _PerencanaanPageState createState() => _PerencanaanPageState();
}

class _PerencanaanPageState extends State<PerencanaanPage> {
  var currentSelectedValue;
  @override
  Widget build(BuildContext context) {
    const jenisKegiatan = [
      'Lomba Keagamaan Nas (Finalis) : 750 Poin',
      'Pengabdian Masyarakat & Kepedulian Sos. Int (Pan) : 1000 poin',
      'Pengabdian Masyarakat & Kepedulian Sos. Int (Pan) : 1100 poin',
      'Pengabdian Masyarakat & Kepedulian Sos. Int (Pan) : 1300 poin',
      'Pengabdian Masyarakat & Kepedulian Sos. Int (Pan) : 1400 poin',
    ];
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: customAppBar('Perencanaan SIKAP'),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
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
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Masukkan Data Baru',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: DropdownButton<String>(
                            isDense: true,
                            isExpanded: true,
                            hint: CustomText(
                              text: 'Pilih Kegiatan yang Akan Anda Ikuti',
                              overFlow: TextOverflow.ellipsis,
                              maxLine: 1,
                              alignment: Alignment.centerLeft,
                              color: Colors.black,
                            ),
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                            ),
                            value: currentSelectedValue,
                            items: jenisKegiatan.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    height: 1.6,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                currentSelectedValue = newValue;
                              });
                              print(currentSelectedValue);
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CustomText(
                              text: 'Jumlah Kegiatan :',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 25,
                              width: 40,
                              decoration: BoxDecoration(
                                border: Border.all(),
                              ),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: '1',
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 10,
                                  ),
                                ),
                                textAlign: TextAlign.center,
                                cursorColor: Colors.transparent,
                              ),
                            )
                          ],
                        ),
                        CustomButton(
                          onPress: () {},
                          text: 'Simpan',
                          padding: 5,
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
              ),
              margin: EdgeInsets.only(
                left: 10,
                right: 10,
                top: 10,
                bottom: 0,
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20,
                      bottom: 20,
                    ),
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20,
                      bottom: 20,
                    ),
                    decoration: BoxDecoration(
                      color: primaryColor,
                    ),
                    child: CustomText(
                      text: 'Perencanaan SIKAP Mahasiswa',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  ListView(
                    shrinkWrap: true,
                    children: [
                      BuildListPerencanaan(
                        kegiatan: 'Pramuka int (Finalis)',
                        jumlah: 1,
                        poin: 500,
                      ),
                      BuildListPerencanaan(
                        kegiatan: 'Forum Komunikasi Ilmiah (Seminar) Nas (Pes)',
                        jumlah: 2,
                        poin: 200,
                      ),
                      BuildListPerencanaan(
                        kegiatan: 'Lomba Keagamaan Ins (Juara I/II/III)',
                        jumlah: 1,
                        poin: 1000,
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: primaryColor,
                    ),
                    margin: EdgeInsets.all(
                      20,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 80,
                      vertical: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'Total Poin',
                          fontSize: 18,
                          color: Colors.white,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: CustomText(
                            text: '1700',
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
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

class BuildListPerencanaan extends StatelessWidget {
  final String kegiatan;
  final int jumlah;
  final int poin;
  const BuildListPerencanaan({
    Key key,
    @required this.kegiatan,
    @required this.jumlah,
    @required this.poin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 25,
        right: 25,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  CustomText(
                    text: 'Poin',
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                  CustomText(
                    text: '$poin',
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              Container(
                height: 50,
                child: VerticalDivider(
                  thickness: 1,
                  width: 30,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    CustomText(
                      text: kegiatan,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomText(
                      text: 'Jumlah : $jumlah',
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.only(left: 5),
                  child: Icon(Icons.close),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1,
            height: 30,
          ),
        ],
      ),
    );
  }
}
