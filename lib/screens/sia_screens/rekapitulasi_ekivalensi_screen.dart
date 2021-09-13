import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class RekapitluasiEkivalensiPage extends StatefulWidget {
  const RekapitluasiEkivalensiPage({Key key}) : super(key: key);

  @override
  _RekapitluasiEkivalensiPageState createState() =>
      _RekapitluasiEkivalensiPageState();
}

class _RekapitluasiEkivalensiPageState
    extends State<RekapitluasiEkivalensiPage> {
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: WebView(
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl:
                'https://siakad.itk.ac.id/ekivalensi_rekapitulasi_mhs.php',
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            },
            gestureNavigationEnabled: true,
          ),
        ),
      ),
    );
  }
}
