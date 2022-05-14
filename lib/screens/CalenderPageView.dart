import 'package:flutter/material.dart';
import 'package:jiit_hub/screens/NotificationPage.dart';
import 'AcademicsPage.dart';
import 'MyWork.dart';
import 'dart:async';
import 'package:webview_flutter/webview_flutter.dart';
class CalenderPageView extends StatelessWidget {
  Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Padding(
          padding: const EdgeInsets.only(right: 50.0),
          child: Center(child: Text('JIIT Calender')),
        ),
          backgroundColor: Color.fromRGBO(29, 53, 87, 1),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_outlined),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){return MyWork(indexx: 1,);}));
                },
              );
            },
          ),
        ),
        body: WebView(
          initialUrl: 'https://www.jiit.ac.in/academic-calendars-0',
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
        ),
      ),
    );
  }
}
