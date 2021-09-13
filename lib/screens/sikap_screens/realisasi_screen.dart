

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:gerbang_mobile/constant.dart';
import 'package:gerbang_mobile/screens/sikap_screens/widgets/custom_appbar.dart';
import 'package:gerbang_mobile/screens/widgets/custom_button.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';
import 'package:google_fonts/google_fonts.dart';

class RealisasiPage extends StatefulWidget {
  const RealisasiPage({Key key}) : super(key: key);

  @override
  _RealisasiPageState createState() => _RealisasiPageState();
}

class _RealisasiPageState extends State<RealisasiPage> {
  var currentSelectedValue;
  var currentSelectedKegiatanValue;
  DateTime selectedDateMulai = DateTime.now();
  DateTime selectedDateSelesai = DateTime.now();

  var getNameFile;

  @override
  Widget build(BuildContext context) {
    const periodeKegiatan = [
      'Semester Gasal 2019/2020',
      'Semester Genap 2019/2020',
      'Semester Gasal 2020/2021',
    ];
    const jenisKegiatan = [
      'Lomba Keagamaan Nas (Finalis) : 750 Poin',
      'Pengabdian Masyarakat & Kepedulian Sos. Int (Pan) : 1000 poin',
      'Pengabdian Masyarakat & Kepedulian Sos. Int (Pan) : 1100 poin',
      'Pengabdian Masyarakat & Kepedulian Sos. Int (Pan) : 1300 poin',
      'Pengabdian Masyarakat & Kepedulian Sos. Int (Pan) : 1400 poin',
    ];

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: customAppBar('Realisasi SK2PM Mahasiswa'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 10,
                right: 10,
                top: 10,
              ),
              padding: EdgeInsets.all(
                20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                children: [
                  CustomText(
                    text: 'Periode',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: DropdownButton<String>(
                          isDense: true,
                          isExpanded: true,
                          hint: CustomText(
                            text: 'Semester Gasal 2020/2021',
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
                          items: periodeKegiatan.map((String value) {
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
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 10,
                right: 10,
                top: 10,
                bottom: 10,
              ),
              padding: EdgeInsets.all(
                20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                children: [
                  CustomText(
                    text: 'Masukkan Data Baru',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
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
                          value: currentSelectedKegiatanValue,
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
                              currentSelectedKegiatanValue = newValue;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _buildTextField('Partisipasi ID*', 1),
                  SizedBox(
                    height: 20,
                  ),
                  _buildTextField('Partisipasi EN*', 1),
                  SizedBox(
                    height: 20,
                  ),
                  _buildTextField('Nama Kegiatan ID', 1),
                  SizedBox(
                    height: 20,
                  ),
                  _buildTextField('Nama Kegiatan EN', 1),
                  SizedBox(
                    height: 20,
                  ),
                  _buildTextField('Deskripsi ID', 3),
                  SizedBox(
                    height: 20,
                  ),
                  _buildTextField('Deskripsi EN', 3),
                  SizedBox(
                    height: 20,
                  ),
                  _buildTextField('Lokasi', 1),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      CustomText(
                        text: 'Sertifikat',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomButton(
                        onPress: () {
                          _getFileUpload(1);
                        },
                        text: 'Pilih File',
                        padding: 5,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Expanded(
                          child: Column(
                            children: [
                              getNameFile == null
                                  ? CustomText(
                                      text: ' *Silahkan pilih file',
                                    )
                                  : CustomText(
                                      text: getNameFile,
                                      maxLine: 2,
                                      overFlow: TextOverflow.ellipsis,
                                    ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: 'Mulai *',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              _selectDateMulai(context);
                            },
                            child: Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: CustomText(
                                      text: "${selectedDateMulai.toLocal()}"
                                          .split(' ')[0],
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.calendar_today,
                                    size: 20,
                                    color: primaryColor,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: 'Selesai *',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              _selectDateSelesai(context);
                            },
                            child: Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: CustomText(
                                      text: "${selectedDateSelesai.toLocal()}"
                                          .split(' ')[0],
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.calendar_today,
                                    size: 20,
                                    color: primaryColor,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomButton(
                    onPress: () {},
                    text: 'Simpan',
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildTextField(String eventKegiatan, int maxLines) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Column(
            children: [
              CustomText(
                text: eventKegiatan,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: maxLines * 40.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(
              color: Colors.grey.shade500,
            ),
          ),
          child: TextField(
            style: GoogleFonts.quicksand(
              fontSize: 16,
            ),
            maxLines: maxLines,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(
                left: 15,
                bottom: 16,
                right: 15,
                top: 16,
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
        )
      ],
    );
  }

  _selectDateMulai(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDateMulai, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2040),
    );
    if (picked != null && picked != selectedDateMulai)
      setState(() {
        selectedDateMulai = picked;
      });
  }

  _selectDateSelesai(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDateSelesai, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2040),
    );
    if (picked != null && picked != selectedDateSelesai)
      setState(() {
        selectedDateSelesai = picked;
      });
  }

  _getFileUpload(int position) async {
    FilePickerResult result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: [
        'pdf',
        'docx',
        'png',
        'jpg',
      ], //here you can add any of extention what you need to pick
    );

    if (result != null) {
      PlatformFile file = result.files.first;
      setState(() {
        getNameFile = file.name;
      });
    } else {
      // User canceled the picker
    }
  }
}
