import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';


class WebViewPage extends StatefulWidget {
  final String url;

  WebViewPage({Key? key, required this.url}) : super(key: key);

  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late WebViewController _webViewController;
  bool _isHeaderVisible = false;
  bool _isFooterVisible = false; // set to false to start

  Future<bool> _onWillPop(BuildContext context) async {
    if (await _webViewController.canGoBack()) {
      _webViewController.goBack();
      return false;
    } else {
      return true;
    }
  }

  void _toggleHeader() async {
    await _webViewController.evaluateJavascript(
        "document.getElementById('header').style.display = '${_isHeaderVisible ? 'none' : 'block'}'");
    setState(() {
      _isHeaderVisible = !_isHeaderVisible;
    });
  }

  void _toggleFooter() async {
    await _webViewController.evaluateJavascript(
        "document.getElementById('footer').style.display = '${_isFooterVisible ? 'none' : 'block'}'");
    setState(() {
      _isFooterVisible = !_isFooterVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Visibility(
            visible: !_isHeaderVisible || !_isFooterVisible,
            child: Container(
              color: Colors.white,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
          WebView(
            initialUrl: widget.url,
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _webViewController = webViewController;
            },
            onPageFinished: (String url) {
              _webViewController.evaluateJavascript(
                  "document.getElementById('header').style.display = 'none'");
              _webViewController.evaluateJavascript(
                  "document.getElementById('footer').style.display = 'none'");
              setState(() {
                _isHeaderVisible = false;
                _isFooterVisible = false;
              });
            },
          ),
        ],
      ),
    );
  }
}
