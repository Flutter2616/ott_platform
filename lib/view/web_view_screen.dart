import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:ott_platform/model/ott_model.dart';

class Webscreen extends StatefulWidget {
  const Webscreen({Key? key}) : super(key: key);

  @override
  State<Webscreen> createState() => _WebscreenState();
}

class _WebscreenState extends State<Webscreen> {
  @override
  Widget build(BuildContext context) {
    Ottmodel o=ModalRoute.of(context)!.settings.arguments as Ottmodel;
    return Scaffold(
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: Uri.parse("${o.link}")),
      ),
    );
  }
}
