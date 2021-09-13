import 'package:flutter/material.dart';
import 'package:gerbang_mobile/constant.dart';
import 'package:gerbang_mobile/screens/sikap_screens/widgets/custom_appbar.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class DataWisudaPage extends StatefulWidget {
  const DataWisudaPage({Key key}) : super(key: key);

  @override
  _DataWisudaPageState createState() => _DataWisudaPageState();
}

class _DataWisudaPageState extends State<DataWisudaPage> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: customAppBar(
        'Update Data Wisuda',
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (isOpen == true)
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                FloatingActionButton.extended(
                  onPressed: () {},
                  backgroundColor: primaryColor,
                  label: Row(
                    children: [
                      Icon(
                        Icons.save,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomText(
                        text: 'Simpan',
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                FloatingActionButton.extended(
                  onPressed: () {},
                  backgroundColor: primaryColor,
                  label: Row(
                    children: [
                      Icon(
                        Icons.cast_connected_rounded,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomText(
                        text: 'Req Perubahan',
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ],
                  ),
                ),
              ],
            )
          else
            Container(),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                isOpen = !isOpen;
              });
            },
            backgroundColor: isOpen == true ? Colors.white : Colors.orange,
            child: isOpen == true
                ? Icon(
                    Icons.close,
                    size: 25,
                    color: primaryColor,
                  )
                : Icon(
                    Icons.mode_edit,
                    size: 20,
                  ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              BuildHeader(
                title: 'Bio Data Calon Wisuda',
              ),
              SizedBox(
                height: 20,
              ),
              BuildInformasiWithBox(
                title: 'NIM',
                isi: '11181081',
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
                title: 'Nama Lengkap (Sesuai KTP)',
                isi: 'Tegar Yasindra',
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
                title: 'Tanggal Lahir (Sesuai KTP)',
                isi: '26-04-2000',
              ),
              SizedBox(
                height: 20,
              ),
              BuildInformasiTextField(
                title: 'Request Perubahan Data (Nama Lengkap)',
                hint:
                    'Ketikkan nama lengkap anda sesuai dengan ijazah terakhir',
              ),
              SizedBox(
                height: 5,
              ),
              CustomText(
                text: 'Contoh: Muhammad Darussalam',
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                height: 20,
              ),
              BuildInformasiTextField(
                title: 'Request Perubahan Data (Tempat Lahir)',
                hint: 'Ketikkan perubahan tempat lahir anda',
              ),
              SizedBox(
                height: 20,
              ),
              DatePicker(
                title: 'Request Perubahan Data (Tanggal Lahir)',
                hint: 'Ketikkan perubahan tanggal lahir anda',
              ),
              SizedBox(
                height: 5,
              ),
              CustomText(
                text: 'Contoh Format: 25-12-2000',
                fontSize: 14,
                fontWeight: FontWeight.w400,
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
                title: 'Nama Ayah (Sesuai KK)',
                isi: '',
              ),
              SizedBox(
                height: 20,
              ),
              BuildInformasiWithBox(
                title: 'Nama Ibu (Sesuai KK)',
                isi: 'Eka Mulyatiningsih',
              ),
              Divider(
                thickness: 1,
                height: 50,
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
              ),
              SizedBox(
                height: 20,
              ),
              BuildInformasiWithBox(
                title: 'Dusun',
              ),
              SizedBox(
                height: 20,
              ),
              BuildInformasiWithBox(
                title: 'Kelurahan',
              ),
              SizedBox(
                height: 20,
              ),
              BuildInformasiWithBox(
                title: 'Kecamatan',
              ),
              SizedBox(
                height: 20,
              ),
              BuildInformasiWithBox(
                title: 'Kabupaten/Kota',
                isi: 'Kab.Kutai Timur',
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
              ),
              SizedBox(
                height: 20,
              ),
              BuildInformasiWithBox(
                title: 'RW',
              ),
              SizedBox(
                height: 20,
              ),
              BuildInformasiWithBox(
                title: 'Kode Pos',
                isi: '75683',
              ),
              Divider(
                thickness: 1,
                height: 50,
              ),
              BuildInformasiWithBox(
                title: 'Telepon',
                isi: '081354000987',
              ),
              SizedBox(
                height: 20,
              ),
              LargeTextField(
                title: 'Tuliskan Judul Tugas Akhir (Bahasa Indonesia)',
                maxLines: 3,
              ),
              SizedBox(
                height: 20,
              ),
              LargeTextField(
                title: 'Tuliskan Judul Tugas Akhir (Bahasa Inggris)',
                maxLines: 3,
              ),
              SizedBox(
                height: 20,
              ),
              BuildDosenPiick(
                title: 'Dosen Pembimbing 1',
              ),
              SizedBox(
                height: 20,
              ),
              BuildDosenPiick(
                title: 'Dosen Pembimbing 2',
              ),
              SizedBox(
                height: 20,
              ),
              BuildDosenPiick(
                title: 'Dosen Pembimbing 3',
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BuildDosenPiick extends StatelessWidget {
  final String title;
  final String nimDosen;
  final String namaDosen;
  const BuildDosenPiick({
    Key key,
    this.title,
    this.nimDosen = '',
    this.namaDosen = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          CustomText(
            text: title,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    border: Border.all(
                      width: 1,
                      color: Colors.grey,
                    ),
                  ),
                  child: CustomText(
                    text: nimDosen,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                constraints: BoxConstraints(maxWidth: 200),
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  border: Border.all(
                    width: 1,
                    color: Colors.grey,
                  ),
                ),
                child: CustomText(
                  text: namaDosen,
                  fontSize: 16,
                  overFlow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.search,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class LargeTextField extends StatelessWidget {
  final String title;
  final int maxLines;

  const LargeTextField({
    Key key,
    this.title,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          child: Column(
            children: [
              CustomText(
                text: title,
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

class BuildHeader extends StatelessWidget {
  final String title;
  const BuildHeader({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        15,
      ),
      decoration: BoxDecoration(
        color: primaryColor,
      ),
      child: CustomText(
        text: title,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    );
  }
}

class BuildInformasiWithBox extends StatelessWidget {
  final String title;
  final String isi;
  BuildInformasiWithBox({
    this.title,
    this.isi = '',
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
            padding: EdgeInsets.all(13),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(
                10,
              ),
              border: Border.all(
                width: 1,
                color: Colors.grey,
              ),
            ),
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

class BuildInformasiTextField extends StatelessWidget {
  final String title;
  final String isi;
  final String hint;
  BuildInformasiTextField({
    this.title,
    this.isi,
    this.hint = '',
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
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                10,
              ),
              border: Border.all(
                width: 1,
                color: Colors.grey,
              ),
            ),
            child: TextField(
              style: GoogleFonts.quicksand(
                fontSize: 16,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
                hintText: hint,
                hintStyle: GoogleFonts.quicksand(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DatePicker extends StatefulWidget {
  final String title;
  final String isi;
  final String hint;
  DatePicker({
    this.title,
    this.isi,
    this.hint = '',
  });

  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime selectedDate;
  TextEditingController _textDateController = TextEditingController();
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
            text: widget.title,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    border: Border.all(
                      width: 1,
                      color: Colors.grey,
                    ),
                  ),
                  child: TextField(
                    style: GoogleFonts.quicksand(
                      fontSize: 16,
                    ),
                    controller: _textDateController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                      hintText: widget.hint,
                      hintStyle: GoogleFonts.quicksand(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  _selectDateMulai(context);
                },
                child: Icon(
                  Icons.calendar_today,
                  size: 30,
                  color: primaryColor,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  _selectDateMulai(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate:
          selectedDate != null ? selectedDate : DateTime.now(), // Refer step 1
      firstDate: DateTime(1995),
      lastDate: DateTime(2040),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        _textDateController
          ..text = DateFormat('dd-MM-yyyy').format(selectedDate)
          ..selection = TextSelection.fromPosition(TextPosition(
              offset: _textDateController.text.length,
              affinity: TextAffinity.upstream));
      });
  }
}
