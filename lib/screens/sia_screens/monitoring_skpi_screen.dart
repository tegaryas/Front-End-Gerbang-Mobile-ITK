import 'package:flutter/material.dart';
import 'package:gerbang_mobile/constant.dart';
import 'package:gerbang_mobile/screens/widgets/custom_button.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SKPIPage extends StatelessWidget {
  const SKPIPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: CustomText(
          text: 'Monitoring SKPI',
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  6,
                ),
              ),
              padding: EdgeInsets.all(
                20,
              ),
              margin: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: Column(
                children: [
                  BuildInformasi(
                    title: 'NIM',
                    isi: '11181081',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  BuildInformasi(
                    title: 'Nama',
                    isi: 'Tegar Yasindra',
                  ),
                  Divider(
                    height: 30,
                    thickness: 1,
                  ),
                  BuildInformasi(
                    title: 'Dosen Wali',
                    isi: 'Tegar Palyus Fiqar, S.T., M.Kom.',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  BuildInformasi(
                    title: 'NIP',
                    isi: '12312031923',
                  ),
                  Divider(
                    height: 30,
                    thickness: 1,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      right: 50,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BuildInformasi(
                              title: 'Yudisium',
                              isi: '13',
                            ),
                            BuildInformasi(
                              title: 'Jumlah Kegiatan',
                              isi: '10',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BuildInformasi(
                              title: 'Status Kegiatan',
                              isi: 'Sudah',
                            ),
                            BuildInformasi(
                              title: 'Status Permanen',
                              isi: 'Sudah',
                            ),
                          ],
                        ),
                        Divider(
                          height: 30,
                          thickness: 1,
                        ),
                        BuildInformasi(
                          title: 'Tanggal Validasi',
                          isi: '2021-03-04   17:43:10',
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        BuildInformasi(
                          title: 'Total Poin',
                          isi: '1950',
                        )
                      ],
                    ),
                  ),
                  Divider(
                    height: 30,
                    thickness: 1,
                  ),
                  CustomText(
                    text: 'File SKPI',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      CustomButton(
                        onPress: () {
                          Fluttertoast.showToast(
                            msg: 'File SKPI Bahasa Indo Sudah Di Download',
                            fontSize: 18,
                            gravity: ToastGravity.BOTTOM,
                          );
                        },
                        text: 'ID',
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CustomButton(
                        onPress: () {
                          Fluttertoast.showToast(
                            msg: 'File SKPI Bahasa Inggris Sudah Di Download',
                            fontSize: 18,
                            gravity: ToastGravity.BOTTOM,
                          );
                        },
                        text: 'EN',
                      )
                    ],
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

class BuildInformasi extends StatelessWidget {
  final String title;
  final String isi;
  BuildInformasi({
    this.title,
    this.isi,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: title,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(
            height: 5,
          ),
          CustomText(
            text: isi,
            fontSize: 17,
          ),
        ],
      ),
    );
  }
}
