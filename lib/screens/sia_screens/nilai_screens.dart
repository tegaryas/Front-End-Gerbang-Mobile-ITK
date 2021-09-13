import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gerbang_mobile/constant.dart';
import 'package:gerbang_mobile/models/nilai_model.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';

class NilaiPage extends StatefulWidget {
  @override
  _NilaiPageState createState() => _NilaiPageState();
}

class _NilaiPageState extends State<NilaiPage> {
  final List nilaimodel = nilai;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: CustomText(
          text: 'Nilai',
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: nilaimodel.length,
              itemBuilder: (context, index) => BuildPerSemester(
                nilaiModel: nilai[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BuildPerSemester extends StatelessWidget {
  final NilaiModel nilaiModel;
  const BuildPerSemester({
    Key key,
    this.nilaiModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              decoration: BoxDecoration(color: primaryColor),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'Semester - ',
                    color: Colors.white,
                    fontSize: 20,
                    alignment: Alignment.centerLeft,
                  ),
                  CustomText(
                    text: nilaiModel.semester,
                    color: Colors.white,
                    fontSize: 20,
                    alignment: Alignment.centerLeft,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 15,
              ),
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: nilaiModel.nilai.length,
                itemBuilder: (context, index) => BuildNilaiPerSemester(
                  kode: nilaiModel.nilai[index].kode,
                  matkul: nilaiModel.nilai[index].matkul,
                  sksmatkul: nilaiModel.nilai[index].sksmatkul,
                  nilai: nilaiModel.nilai[index].nilai,
                ),
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: 1,
                    height: 30,
                  );
                },
              ),
            ),
            Container(
              color: primaryColor,
              padding: const EdgeInsets.symmetric(
                horizontal: 80,
                vertical: 20,
              ),
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomText(
                        text: 'Total SKS',
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: CustomText(
                          text: '${nilaiModel.sks}',
                          alignment: Alignment.center,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'IPS',
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: CustomText(
                          text: '${nilaiModel.ips}',
                          alignment: Alignment.center,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class BuildNilaiPerSemester extends StatelessWidget {
  final String kode;
  final String matkul;
  final int sksmatkul;
  final String nilai;
  const BuildNilaiPerSemester({
    Key key,
    this.kode,
    this.matkul,
    this.sksmatkul,
    this.nilai,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: kode,
                  fontWeight: FontWeight.w300,
                ),
                CustomText(
                  text: matkul,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomText(
                  text: '$sksmatkul SKS',
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
              text: 'NILAI',
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
            SizedBox(
              height: 12,
            ),
            CustomText(
              text: nilai,
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
          ],
        ),
      ],
    );
  }
}
