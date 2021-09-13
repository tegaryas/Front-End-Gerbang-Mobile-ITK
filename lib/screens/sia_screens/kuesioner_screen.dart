import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gerbang_mobile/constant.dart';
import 'package:gerbang_mobile/screens/sia_screens/question_widget.dart';
import 'package:gerbang_mobile/screens/widgets/custom_button.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';
import 'package:google_fonts/google_fonts.dart';

class KuesionerPage extends StatefulWidget {
  const KuesionerPage({Key key}) : super(key: key);

  @override
  _KuesionerPageState createState() => _KuesionerPageState();
}

class _KuesionerPageState extends State<KuesionerPage> {
  // Var untuk menyimpan jawaban mahasiswa
  String question1Answer = '';
  String question2Answer = '';
  String question3Answer = '';
  String question4Answer = '';
  String question5Answer = '';
  String question6Answer = '';

  List selectedAnswerList = [];
  bool isSetuju = false;

  @override
  Widget build(BuildContext context) {
    List<String> _jawaban1 = [
      "Tidak Pernah - Never",
      "Kadang-Kadang - sometimes",
      "Sering - Often",
      "Selalu - always",
    ];

    List<String> _jawaban2 = [
      "Tidak direncanakan dan tidak disampaikan - It was unplanned and not delivered",
      "Sudah disampaikan tetapi kurang jelas - It was already delivered but less clear",
      "Sudah disampaikan dan cukup jelas - It was already delivered and quite clear",
      "Sudah dan sangat jelas - It was already delivered and very clear",
    ];

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: CustomText(
          text: 'Kuesioner',
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              6,
            ),
          ),
          margin: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Periode',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropdownButton<String>(
                      hint: CustomText(
                        text: 'Semester',
                        alignment: Alignment.centerLeft,
                      ),
                      items: <String>[
                        'Genap',
                        'Ganjil',
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                      onChanged: (newValue) {},
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    DropdownButton<String>(
                      hint: CustomText(
                        text: 'Tahun',
                        alignment: Alignment.centerLeft,
                      ),
                      items: <String>[
                        '2018',
                        '2017',
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                      onChanged: (newValue) {},
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    CustomButton(
                      onPress: () {},
                      text: 'Tampil',
                      padding: 8,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CustomText(
                  text: 'Mata Kuliah',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: 20,
                ),
                DropdownButton<String>(
                  isExpanded: true,
                  hint: CustomText(
                    text: 'Mata Kuliah',
                    alignment: Alignment.centerLeft,
                  ),
                  items: <String>[
                    'IF1506 - Sains Data [A] -- Bima Prihasto, S.Si., M.Si ::SELESAI::',
                    'IF1416 - Wawasan Umum dan Gagasan Informatika [A] -- Riska Kurniyanto Abdullah, S.T., M.Kom. ::SELESAI::',
                    'IF1425 - Pemelajaran Mesin [A] -- Bima Prihasto, S.Si., M.Si ::SELESAI::',
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {},
                ),
                SizedBox(
                  height: 40,
                ),
                CustomText(
                  text: 'Daftar Pertanyaan untuk penilaian',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  alignment: Alignment.center,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomText(
                  text:
                      'IF1425 - Pemelajaran Mesin [A] -- Bima Prihasto, S.Si., M.Si',
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  alignment: Alignment.center,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                QuestionWidgets(
                  answerList: _jawaban1,
                  questionNumber: 1,
                  question: 'Bagaimanan pendapat anda tentang perkuliahan ini?',
                  onChanged: (String value) {
                    setState(() {
                      question1Answer = value;
                    });
                  },
                ),
                QuestionWidgets(
                  answerList: _jawaban2,
                  questionNumber: 2,
                  question:
                      'Selain RPS apakah dosen Anda menyampaikan Rencana Tugas (RT) dan / atau Rencana asesmen dan Evaluasi (RAE)?',
                  onChanged: (String value) {
                    setState(() {
                      question2Answer = value;
                    });
                  },
                ),
                QuestionWidgets(
                  answerList: _jawaban1,
                  questionNumber: 3,
                  question:
                      'apakah dosen anda selalu menjelaskan capaian pemebelajaran/learning outcome pada setiap pergantian kuliah?',
                  onChanged: (String value) {
                    setState(() {
                      question3Answer = value;
                    });
                  },
                ),
                Divider(
                  height: 40,
                  thickness: 2,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomText(
                  text: 'Pesan & Saran untuk Mata Kuliah ini',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                _buildTextField('', 3),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isSetuju = !isSetuju;
                    });
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Icon(
                          (isSetuju == true)
                              ? Icons.check_box
                              : Icons.check_box_outline_blank,
                          color: primaryColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomText(
                          text: 'Data yang saya isikan sudah benar',
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  onPress: () {
                    if (isSetuju == true && selectedAnswerList.length == 10) {
                      print('Bisa Lanjut');
                    } else {
                      Fluttertoast.showToast(
                        msg: 'Ada Jawaban yang belum terisi!',
                        fontSize: 18,
                        gravity: ToastGravity.BOTTOM,
                      );
                      print('Belum bisa lanjut');
                    }
                  },
                  text: 'Simpan',
                )
              ],
            ),
          ),
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
}
