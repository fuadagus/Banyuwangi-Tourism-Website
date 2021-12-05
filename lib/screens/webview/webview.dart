import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewLoad extends StatefulWidget {
  const WebViewLoad({key}) : super(key: key);

  @override
  _WebViewLoadState createState() => _WebViewLoadState();
}

class _WebViewLoadState extends State<WebViewLoad> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: WebView(
            initialUrl:
                "https://twitter.com/banyuwangi_kab?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor",
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ),
      ),
    );
  }
}
