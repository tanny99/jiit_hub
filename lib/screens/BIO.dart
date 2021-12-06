import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'AcademicsPage.dart';
import 'dart:async';
import 'package:webview_flutter/webview_flutter.dart';
class BiotechPage extends StatelessWidget {
  Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Biotech'),
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
          initialUrl: 'https://www.jiit.ac.in/academicsfacultybio',
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
        ),

      ),
    );
  }
}
