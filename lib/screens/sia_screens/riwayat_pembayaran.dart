import 'package:flutter/material.dart';
import 'package:gerbang_mobile/constant.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';
import 'package:intl/intl.dart';

class RiwayatPembayaranPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: CustomText(
          text: 'Riwayat Pembayaran',
          fontSize: 20,
          color: Colors.white,
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            6,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: ListView(
            children: [
              BuildRiwayatPembayaran(
                periode: 'Periode Ganjil 2018',
                keterangan: 'Lunas',
                nominal: '2000000',
              ),
              BuildRiwayatPembayaran(
                periode: 'Periode Genap 2018',
                keterangan: 'Belum Lunas',
                nominal: '2000000',
              ),
              BuildRiwayatPembayaran(
                periode: 'Periode Genap 2019',
                keterangan: 'Lunas',
                nominal: '2000000',
              ),
              BuildRiwayatPembayaran(
                periode: 'Periode Genap 2019',
                keterangan: 'Lunas',
                nominal: '2000000',
              ),
              BuildRiwayatPembayaran(
                periode: 'Periode Genap 2020',
                keterangan: 'Lunas',
                nominal: '2000000',
              ),
              BuildRiwayatPembayaran(
                periode: 'Periode Genap 2020',
                keterangan: 'Lunas',
                nominal: '2000000',
              ),
              BuildRiwayatPembayaran(
                periode: 'Periode Genap 2021',
                keterangan: 'Lunas',
                nominal: '2000000',
              ),
              BuildRiwayatPembayaran(
                periode: 'Periode Genap 2021',
                keterangan: 'Belum Lunas',
                nominal: '2000000',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BuildRiwayatPembayaran extends StatelessWidget {
  final String periode;
  final String nominal;
  final String keterangan;

  const BuildRiwayatPembayaran({
    Key key,
    this.periode,
    this.nominal,
    this.keterangan,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: periode,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  CustomText(
                    text: NumberFormat.currency(
                            locale: 'id', symbol: 'Rp ', decimalDigits: 0)
                        .format(int.parse(nominal)),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: keterangan == 'Lunas' ? Colors.green : Colors.red,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                    text: keterangan,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
