import 'package:flutter/material.dart';
import 'package:gerbang_mobile/constant.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';

class PesertaPage extends StatelessWidget {
  const PesertaPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: CustomText(
          text: 'Daftar Peserta',
          color: Colors.white,
          fontSize: 20,
        ),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(
              10,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 20,
                    bottom: 10,
                  ),
                  color: primaryColor,
                  child: CustomText(
                    text: 'Persamaan Differensial Parsial',
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                BuildListPeserta(
                  noUrut: 1,
                  nama: 'Tegar Yasindra',
                  nim: 11181081,
                ),
                BuildListPeserta(
                  noUrut: 2,
                  nama: 'Eka Mulyatiningasih',
                  nim: 11181014,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BuildListPeserta extends StatelessWidget {
  final int noUrut;
  final int nim;
  final String nama;
  const BuildListPeserta({
    Key key,
    this.noUrut,
    this.nim,
    this.nama,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        right: 10,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomText(
                text: '$noUrut',
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              Container(
                height: 40,
                child: VerticalDivider(
                  thickness: 1,
                  width: 40,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: '$nim',
                  ),
                  CustomText(
                    text: nama,
                    fontSize: 19,
                    fontWeight: FontWeight.w700,
                  ),
                ],
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
