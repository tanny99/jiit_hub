import 'package:flutter/material.dart';
import 'AcademicsPage.dart';
import 'dart:async';
import 'package:webview_flutter/webview_flutter.dart';
class ECEPage extends StatelessWidget {
  Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('ECE'),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_outlined),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){return AcademicsPage();}));
                },
              );
            },
          ),),
        body: WebView(
          initialUrl: 'https://www.jiit.ac.in/electronics-and-communication-faculty',
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
        ),
      ),
    );
  }
}
